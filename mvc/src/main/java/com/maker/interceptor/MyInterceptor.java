package com.maker.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyInterceptor implements HandlerInterceptor {
   private static final Logger LOGGER= LoggerFactory.getLogger(MyInterceptor.class);

    /**
     * 请求处理前调用
     *  即在访问路径找到对应的Action方法后，在执行方法前会调用此拦截器方法
     *  返回了true才会继续往下执行，否则它会自己响应用户的请求
     * */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if(handler instanceof HandlerMethod){
            HandlerMethod handlerMethod=(HandlerMethod) handler;
            LOGGER.info("【请求处理前 - preHandle()】处理对象：{}",handlerMethod.getBean());
            LOGGER.info("【请求处理前 - preHandle()】处理Action类：{}",handlerMethod.getBeanType());
            LOGGER.info("【请求处理前 - preHandle()】处理方法：{}",handlerMethod.getMethod());
        }
        return true;
    }

    /**
     * 请求处理后调用
     *  访问的Action方法已经完成了调用，在返回ModelAndView之前调用此方法
     *
     * */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        LOGGER.info("【请求处理后-postHandle】跳转视图：{}",modelAndView.getViewName());
        LOGGER.info("【请求处理后-postHandle】传递属性：{}",modelAndView.getModel());
    }
    /**
     * 完成所有Action请求（包括视图渲染）后调用，一般用于资源的清理
     * */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        LOGGER.info("操作处理完成！");
    }
}
