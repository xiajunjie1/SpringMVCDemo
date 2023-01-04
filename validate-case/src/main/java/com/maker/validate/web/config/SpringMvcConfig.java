package com.maker.validate.web.config;

import com.maker.common.interceptor.MyValidateInterceptor;
import com.maker.common.mapper.CustomerMapper;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.List;

@Configuration
@EnableWebMvc
@ComponentScan("com.maker.validate.action")
public class SpringMvcConfig implements WebMvcConfigurer {
   /**
    * 设置JSON数据转换
    * */
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        MappingJackson2HttpMessageConverter converter=new MappingJackson2HttpMessageConverter();
        CustomerMapper mapper=new CustomerMapper();
        converter.setObjectMapper(mapper);
        converters.add(converter);//追加Jackson转换器

    }

    /**
     * 添加静态资源匹配
     * */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/static/js/");
        registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/static/css/");
        registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/static/img/");
        registry.addResourceHandler("/upload/**").addResourceLocations("/WEB-INF/upload/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        MyValidateInterceptor interceptor=new MyValidateInterceptor();
        interceptor.setRestSwitch(false);
        registry.addInterceptor(interceptor).addPathPatterns("/pages/**");//对/pages/下的所有请求进行拦截
    }

//    @Override
//    public void configureViewResolvers(ViewResolverRegistry registry) {
//        InternalResourceViewResolver resolver=new InternalResourceViewResolver();
//        resolver.setPrefix("/WEB-INF/");
//        resolver.setSuffix(".jsp");
//        registry.viewResolver(resolver);
//    }
}
