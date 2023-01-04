package com.maker.filter;

import com.maker.exception.CaptchaException;
import com.maker.util.CaptchaUtil;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CaptchaAuthenticationFilter extends OncePerRequestFilter {//执行一次处理
   private String codeParameter="code";//对应前端验证码文本框的name属性
    private AuthenticationFailureHandler authenticationFailureHandler=null;//失败处理
    public CaptchaAuthenticationFilter(AuthenticationFailureHandler authenticationFailureHandler){
        this.authenticationFailureHandler=authenticationFailureHandler;
    }
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String code=request.getParameter(codeParameter);
        if("/jay-login".equals(request.getRequestURI()) && "POST".equals(request.getMethod())){
            //是通过登录表单提交的登录请求
            String captcha=(String)request.getSession().getAttribute(CaptchaUtil.CAPTCHA_NAME);
            if(code==null || "".equals(code) || captcha==null || "".equals(captcha) || !code.equalsIgnoreCase(captcha)){
                //验证码认证异常
                this.authenticationFailureHandler.onAuthenticationFailure(request,response,new CaptchaException("验证码认证错误！"));
            }else{
                //验证码认证通过
                filterChain.doFilter(request,response);//执行下一个过滤
            }
        }else {
            //非登录页面发送的登录请求
            filterChain.doFilter(request,response);//执行下一个过滤
        }
    }

}
