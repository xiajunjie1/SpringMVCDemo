package com.maker.web.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.*;
import java.util.EnumSet;
/**
 * 此类可以在Tomcat容器启动的时候，代替web.xml的功能
 * */
public class StartWEBApplication //implements WebApplicationInitializer
{
   /**
    * 此方法在Web容器初始化的时候会被调用
    * */
    //@Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        System.err.println("【开始基于程序类的方式配置SpringMVC】");
        //注册WebApplicationContext对象，启动Spring容器
        AnnotationConfigWebApplicationContext applicationContext=new AnnotationConfigWebApplicationContext();
        applicationContext.scan("com.maker.action","com.maker.service");//配置扫描包
        applicationContext.refresh();
        //动态注册DispatcherServlet
        ServletRegistration.Dynamic servletRegistration=servletContext.addServlet("DispatcherServlet",
                new DispatcherServlet(applicationContext)//传入Spring容器
                 );
        servletRegistration.setLoadOnStartup(1);//设置启动时注册
        servletRegistration.addMapping("/");//配置Mapping
        //动态注册编码过滤器
        FilterRegistration.Dynamic filterRegistration=servletContext.addFilter("EncodingFilter",
                new CharacterEncodingFilter());
        filterRegistration.setInitParameter("encoding","UTF-8");//编码配置
        filterRegistration.addMappingForUrlPatterns(
                EnumSet.of(DispatcherType.FORWARD,DispatcherType.REQUEST)
                ,false,"/*"
        );
    }
}
