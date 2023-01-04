package com.maker.config;

import com.maker.filter.CaptchaAuthenticationFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfiguration;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.session.HttpSessionEventPublisher;

@Configuration
@EnableWebSecurity //启用SpringSecurity
@DependsOn({"myUserDetailService"})
//此处继承WebSecurityConfigurerAdapter是为了重写 configure方法，在新版本中，直接通过配置一个WebSecurityCustomizer Bean方法即可
public class WebMvcSecurityConfig extends WebSecurityConfigurerAdapter {
//一下方式在SpringSecurity5.4以上使用
    //    @Bean
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
//        http.authorizeRequests() //配置认证的请求访问
//                .antMatchers("/pages/message/**").authenticated() //配置认证的目录
//                .antMatchers("/**").permitAll(); //其它路径任意访问
//                http.formLogin();//SpringSecurity内含一个登录表单
//                return http.build();
//    }
    @Autowired
    private UserDetailsService userDetailsService;
    private static final Logger LOGGER= LoggerFactory.getLogger(WebMvcSecurityConfig.class);
    @Autowired
    private JdbcTokenRepositoryImpl jdbcTokenRepository;


    //注册剔除用户事件，如果不注册该事件，那么无法成功的剔除用户
    @Bean
    public HttpSessionEventPublisher httpSessionEventPublisher(){
        return new HttpSessionEventPublisher(); //剔除已登录的用户

    }

    //注册SpringSecurity提供的failureHandler，提供给自定义的过滤器使用
    @Bean
    public SimpleUrlAuthenticationFailureHandler simpleUrlAuthenticationFailureHandler(){
        SimpleUrlAuthenticationFailureHandler authenticationFailureHandler=new SimpleUrlAuthenticationFailureHandler();
        authenticationFailureHandler.setDefaultFailureUrl("/login_page?error=true");
        return authenticationFailureHandler;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests() //配置认证的请求访问
                .antMatchers("/pages/message/**").authenticated()//登录认证
                .antMatchers("/pages/admin/**").hasRole("ADMIN") //不要使用ROLE_开头
                .antMatchers("/pages/news/**").access("hasAnyRole('ADMIN','NEWS','MESSAGE')") //使用表达式配置访问权限，此时配置角色时不用带ROLE_
                .antMatchers("/**").permitAll(); //其它路径任意访问
        http.formLogin() //SpringSecurity内含一个登录表单
                .usernameParameter("uname") //设置登录界面用户名的参数名称
                .passwordParameter("pwd") //设置登录界面密码的参数名称
                .successForwardUrl("/success") //登录成功路径
                .failureForwardUrl("/failure?error=登陆失败，密码或用户名错误") //登录失败路径
                .loginPage("/login_page")
                .loginProcessingUrl("/jay-login") //表单提交路径，只需要保证登录页面中表单的路径与其相同即可，不需要自己实现
                .and()
                .logout() //注销配置
                .logoutUrl("/jay-logout") //注销路径
                .logoutSuccessUrl("/logout_page") //注销后显示的路径
                .deleteCookies("JSESSIONID","xia-cookie-rme") //删除cookie信息
                .and()
                .exceptionHandling() //认证错误配置
                .accessDeniedPage("/error_403");
                http.csrf().disable(); //关闭CSRF校验
        http.sessionManagement()
                .maximumSessions(1) //最多允许一个用户同时登录
                .maxSessionsPreventsLogin(false) //剔除之前登录的用户
                .expiredUrl("/logout_page?invalidate=true"); //被剔除后显示的路径
        LOGGER.info("userDetail{}",userDetailsService);
        http.rememberMe()
                .tokenRepository(jdbcTokenRepository) //将Cookie保存在数据库中
                        .userDetailsService(userDetailsService) //获取用户信息
                        .rememberMeParameter("rme") //登录界面记住我对应的参数名称
                        .key("xiajunjie") //密钥
                        .tokenValiditySeconds(360000) //保存时间，单位秒
                        .rememberMeCookieName("xia-cookie-rme"); //Cookie名称，设置了该内容后，在注销设置时，也需要将其清除
       //验证码过滤器配置
        SimpleUrlAuthenticationFailureHandler authenticationFailureHandler=simpleUrlAuthenticationFailureHandler();
        CaptchaAuthenticationFilter captchaAuthenticationFilter=new CaptchaAuthenticationFilter(authenticationFailureHandler);
        //在登录认证过滤器之前配置验证码认证过滤器
        http.addFilterBefore(captchaAuthenticationFilter, UsernamePasswordAuthenticationFilter.class);
        // http.build();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/img/**","/js/**","/css/**");
    }

    /**
     * 注册密码加密器
     * */
    @Bean
   public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
   }
}
