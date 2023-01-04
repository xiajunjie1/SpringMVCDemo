package com.maker.config;

import com.maker.interceptor.MyInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.util.UrlPathHelper;

/**
 * 为了配置矩阵参数，需要此配置类实现一个WebMvcConfigurer接口
 *  配置web上下文对象
 *
 * */
@Configuration
@EnableWebMvc //加入此注解才表示WebMvc的配置生效
@ComponentScan("com.maker.action")
public class SpringMvcConfig implements WebMvcConfigurer {
    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {//矩阵参数的配置
        UrlPathHelper helper=new UrlPathHelper();
        helper.setRemoveSemicolonContent(false);//启用矩阵参数
        configurer.setUrlPathHelper(helper);//配置路径参数
    }
    /*
    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver resolver=new CommonsMultipartResolver();
        resolver.setMaxUploadSize(11111111);
        return resolver;
    }
    */
    /**
     * 配置视图解析器
     * */
    @Bean
    public InternalResourceViewResolver resourceViewResolver(){
        InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/pages/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
       registry.addResourceHandler("css/**").addResourceLocations("/WEB-INF/static/css/");
       registry.addResourceHandler("js/**").addResourceLocations("/WEB-INF/static/js/");
       registry.addResourceHandler("img/**").addResourceLocations("/WEB-INF/static/images/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //添加自定义拦截器
        registry.addInterceptor(
                new MyInterceptor()
        ).addPathPatterns("/message/**");
    }
}
