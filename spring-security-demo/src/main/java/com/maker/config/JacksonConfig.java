package com.maker.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;

import java.util.List;

/**
 * SpringMVC中，请求首先被解析，然后与Mappinghandler关联，
 * MappingHandler接收后，找到要调用的action类和方法后，交由专门的Adapter进行处理
 * 包括参数的转换以及对应的返回结果
 *
 * 如果使用@ResponseBody注解，则一定要添加该配置类
 * */
@Configuration
public class JacksonConfig {
    @Bean//进行请求映射的处理
    public RequestMappingHandlerAdapter requestMappingHandlerAdapter(){
        RequestMappingHandlerAdapter adapter=new RequestMappingHandlerAdapter();
        MappingJackson2HttpMessageConverter converter=new MappingJackson2HttpMessageConverter();
        converter.setSupportedMediaTypes(List.of(MediaType.APPLICATION_JSON));//MIME类型
        adapter.setMessageConverters(List.of(converter));
        return adapter;
    }
}
