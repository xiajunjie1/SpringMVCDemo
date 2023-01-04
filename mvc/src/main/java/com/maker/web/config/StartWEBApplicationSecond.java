package com.maker.web.config;

import com.maker.config.SpringConfig;
import com.maker.config.SpringMvcConfig;
import com.maker.filter.MyFilter;
import com.maker.servlet.MyDispatcherServlet;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.FrameworkServlet;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;

/**
 * 对WebApplicationInitializer的细分，只需要关注配置层面，不需要关注Spring容器的初始化和DispatcherServlet的初始化
 *  并且将Spring的配置和SpringMvc的配置进行了拆分，使得代码层次更加清晰
 * */
public class StartWEBApplicationSecond extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {//返回Spring的配置类
        return new Class[]{SpringConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {//SpringMVC配置
        return new Class[]{SpringMvcConfig.class};
    }

    @Override
    protected String[] getServletMappings() {//配置DispatcherServlet分发
        return new String[]{"/"};
    }
    /**
     * 一定要配置此过滤器，不配置，SpringMVC接收中文参数会乱码
     * */
    @Override
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter filter=new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);//设置强制转码

        return new Filter[]{filter,new MyFilter()};
    }
    /**
     * 配置文件上传相关处理
     * */
    @Override
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {
       long maxFileSize=2097152; // 单个文件上传的最大长度（2M）
        long maxRequestSize=5242880; // 总的上传大小（5M）
        int fileSizeThreshold=0;//立即写入
        System.err.println("配置文件上传处理");
        MultipartConfigElement element = new MultipartConfigElement(
                "/tmp", maxFileSize, maxRequestSize, fileSizeThreshold);
        registration.setMultipartConfig(element); // 上传配置

    }

    @Override
    protected FrameworkServlet createDispatcherServlet(WebApplicationContext servletAppContext) {
        //分发控制器的创建
        return new MyDispatcherServlet(servletAppContext);
    }
}
