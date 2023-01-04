package com.maker.context.config;

import com.maker.mapper.CustomerMapper;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

@Configuration
@ComponentScan("com.maker.action")
public class SpringWebApplicationContextConfig implements WebMvcConfigurer {

    /**
     * 添加Jackson转换器，方便rest返回数据
     * */
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        MappingJackson2HttpMessageConverter converter=new MappingJackson2HttpMessageConverter();
        converter.setObjectMapper(new CustomerMapper());
        converters.add(converter);

    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/static/js/");
        registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/static/css/");
        registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/static/img/");
        registry.addResourceHandler("/upload/**").addResourceLocations("/WEB-INF/upload/");
    }
}
