package com.maker.main;

import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * SpringSecurity
 *  在传统的WEB开发中，针对安全来讲会存在两个核心概念：
 *      认证：检测用户名和密码，同时检查你用户当前所处的状态（激活、冻结）
 *      授权：权限检查（比较细致的做法是分为角色和权限两类处理，Spring Security只有权限结构）
 *  只要进行WEB的安全认证，SpringSecurity的核心实现方式就基于Session对象的存储结构实现
 *  即：为每一个用户分配一个SessionID，而后在此Session中保存一系列的数据信息。
 *
 *  在整个SpringSecurity处理机制中，是需要和SpringMVC绑定的，在用户访问的时候，一般都需要分为
 *  已登录用户（已认证），未登录用户（未认证），如果是未认证用户则需要手工进行登录业务的处理（需要通过数据库获取一些安全信息）
 *  ，所有的安全相关数据肯定要基于数据库进行存储。当用户成功的实现了认证处理机制后，SpringSecurity会将相关数据保存在Session中
 *  （由WEB容器负责），等下一次在进行资源访问的时候，需要首先进行安全检查（单WEB实例来讲，安全检查主要通过滤器以及页面之中的标签来进行处理，
 *  如果是前后端分离架构直接通过过滤器来进行配置处理即可），如果发现授权允许访问，则可以直接跳转到核心资源，如果不能够访问则抛出异常
 *
 *  SpringSecurity内部之所以可以实现用户的认证与授权检测，就因为其内部实现了一系列过滤器，这些过滤器会有大量的内置实现
 *  直接使用即可，如果有需要也可以扩展实现，当过滤器检测全部通过后，就可以访问所需要的目标资源了
 *
 *
 *  搭建SpringSecurity环境
 *   1.引入SpringSecurity相关依赖
 *   2.com.maker.context.config：Spring以及SpringMVC的相关配置类
 *   3.com.maker.mapper：用于设置Jackson转换器输出格式
 *   4.com.maker.web.config：用于启动SpringMVC，同时在该类中可以注册自定义的DispatcherServlet（里面可以自定义NotFound跳转处理），配置Spring相关配置类以及过滤器配置，过滤器配置域SpringSecurity息息相关
 *   5.com.maker.config：定义需要由Spring管理的Bean对象，如视图解析器、以及SpringSecurity的相关支持
 *
 *
 *  UserDetailsService
 *      SpringSecurity内部就是通过该接口的实例，进行认证和授权的
 *      所以需要创建一个UserDetailsService的实现类
 *      在本类中创建一个方法，对一个固定的字符串进行加密，作为一个密码进行测试
 *
 *
 *  认证与授权表达式
 *      permitAll：总是返回true，表示允许所有的
 *      denyAll：总是返回false，表示拒绝所有的
 *      anonymous：允许匿名访问
 *      rememberMe：表示当前用户是通过Remember-Me自动登录的返回true
 *      authenticated()：需要通过验证访问，非匿名访问
 *      fullyAuthenticated()：如果当前用户既不是一个匿名用户，同时又不是通过Remember-Me自动登录的，则返回true
 *      hasRole([role])：拥有指定角色的用户可以访问，填入角色的时候不要加ROLE_
 *      hasAnyRole([role1,role2])：拥有其中一个角色的用户可以访问，填入角色的时候不要加ROLE_
 *      hasAuthority([auth])：拥有指定权限的用户可以访问
 *      hasAnyAuthority([auth1,auth2])：拥有其中任意权限用户可以访问
 *      hasIpAddress(‘127.0.0.1/24’)：请求发送的IP匹配时返回true
 *
 *    修改WebMvcSecurityConfig类，测试认证权限表达式
 *
 *
 *  SecurityContextHolder:
 *      实现了用户认证与登录以后，所有的信息其实都保存在了Session属性之中，但是一些内部业务处理时
 *      ，需要获取到一些认证信息，这些信息就需要通过SecurityContextHolder类实现了。
 *      该类中有一个方法getContext()返回对象为：SecurityContext
 *      该接口中包含方法：getAuthentication()返回对象Authentication
 *      该接口中包含以下几个重点方法：
 *          Collection<? extends GrantedAuthority> getAuthorities()：
 *          Object getCredentials()：获取认证信息
 *          Object getDetails()：获取用户详情内容
 *          Object getPrincipal()：获取认证用户数据，如果是用户名和密码登录的，那么此时返回的就是用户名
 *          boolean isAuthenticated()：判断当前用户是否已经认证过了，每一个用户线程保存各自的接口实例
 *          void setAuthenticated(boolean isAuthenticated) throws IllegalArgumentException：设置是否已经经过认证（部分资源需要认证后才可访问）
 *
 *        创建一个MemberAction控制器，来进行认证信息的获取
 *
 *      SpringSecurity标签支持
 *          核心标签如下
 *          <security:authorize></security:authorize>
 *           <security:authentication />
 *
 *
 *
 *  SpringSecurity注解支持
 *      SpringSecurity相关注解都是使用在业务层的注解，所以仅需要在业务方法上进行注解配置
 *      不需要针对控制层进行验证的限制
 *      1.引入JSR-250所需的依赖包(javax-annotation-api，新版本为jakarta-annotation-api)
 *      2.创建MethodSecurityConfig配置类，开启SpringSecurity注解相关支持
 *      3.创建IAdminService业务接口，在对应方法上添加上相关注解进行注解测试
 *      4.创建AdminAction调用IAdminService接口实例进行测试
 *
 *
 *  CSRF访问控制
 *      CSRF：跨站请求伪造，例如用户在访问钓鱼网站后，浏览器被注入了非法的程序，从而使用
 *      该用户存储在Cookie中信息去访问对应的网站，获取用户的合法信息以及进行一些操作，这就是
 *      CSRF安全漏洞。
 *      如果想要解决这种漏洞，最安全的做法就是在每一次的操作的时候提供有一个数据的认证信息（Token），
 *      在每次进行表单发送之前一般都需要通过服务端跳转到指定的前端页面上，随后在通过这个前端表单发送请求，
 *      而此时发送的内容除了真是的数据之外，也会包含一些额外信息，而这个信息验证就可以解决CSRF安全漏洞
 *
 *      创建一个input_csrf.jsp页面进行测试
 *
 *      由于每次通过表单提交数据到SpringSecurity过滤的路径时都会被拦截验证csrf的token内容，
 *      如果系统应用本身是放在内网上使用，可以将csrf验证给关闭掉
 *      修改WebMvcSecurityConfig类，添加上：http.csrf().disable(); 关闭CSRF校验操作即可
 *
 *
 *  SpringSecurity登录和注销扩展
 *      SpringSecurity登录页面可以自定义，登陆失败后的跳转页面也可以自定义
 *      注销后跳转页面也可以自定义
 *      修改WebMvcSecurityConfig类
 *      创建一个CommonAction，对扩展的登录和注销进行页面的跳转
 *
 *
 *  Session并行管理
 *      Session并行管理可以限制一个账号最多可以同时多少设备登录
 *      例如某些视频网站，一个账号最多可以被多少人共享，超出了这个数量后
 *      就根据环境剔除之前登录的用户或者是新登录的用户
 *      1.修改WebMvcSecurityConfig，配置Session管理的过滤器
 *      2.SpringSecurity的Session并行管理需要提供一个剔除用户事件，否则用户无法被剔除
 *          在WebMvcSecurityConfig中，注册剔除事件
 *
 *  RememberMe
 *      SpringSecurity实现免登录操作
 *          免登录的核心其实就是在客户端上保存一个Cookie信息，这个信息是要进行加密处理的
 *          ，而后用户在登录表单的时候也要做一些额外准备，增加一个“记住我”的勾选框
 *         1.在登录页面中加上checkbox
 *         2.修改WebMvcSecurityConfig，添加rememberMe相关过滤设置
 *
 *         如果对于有些重要的数据资源，不希望rememberMe起作用，而是想经过完整的验证才能进行访问
 *         这时候需要修改WebMvcSecurityConfig的.access()，将其修改为.fullyAuthenticated()
 *
 *          RememberMe的cookie数据都是保存在内存中的，当数据保存较多的时候，也可以将其保存在数据库中
 *          通过数据库来进行cookie数据的保存
 *          1.可以参考SpringSecurity官网提供的MySQL数据表创建脚本
 *          2.引入JDBC驱动，HikariCP数据源以及SpringJDBC等依赖
 *          3.修改WebMvcSecurityConfig类中关于rememberMe的配置，设置存储到数据库
 *
 *
 *  验证码保护
 *      为了防止机器人进行程序的破坏，所以程序在登录的时候往往会使用验证码进行处理，
 *      但是SpringSecurity的内部结构中是不含验证码机制的，现在就要采用自定义过滤器的方式处理了
 *      1.定义生成验证码的工具类CaptchaUtil以及返回验证码图片的Action类CaptchaAction
 *      2.考虑到验证码验证出现错误或者异常，可以定义一个验证码异常类CaptchaException
 *      3.创建一个过滤器来进行验证码的认证处理，该过滤器后面需加入到过滤器执行链中
 *      4.修改WebMvcSecurityConfig配置类，将创建好的过滤器配置到过滤器执行链中
 *
 *
 *
 * */

public class SpringSecurityTest {
    SecurityContextHolder s;
    public static void main(String[] args){
        CreateSecurityPassword();
    }

    private static void CreateSecurityPassword(){
        String password="jayjxia";//密码明文
        BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
        String cipherText=encoder.encode(password);//对明文进行加密获取密文
        System.out.println("加密后的密码："+cipherText);
        System.out.println("密码比较："+encoder.matches(password,cipherText));
    }
}
