package com.maker.mapper;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import java.text.SimpleDateFormat;
import java.util.TimeZone;

public class CustomerMapper extends ObjectMapper {
    private static final String DEFAULT_FORMATTER="yyyy-MM-dd";
    public CustomerMapper(){
        super.setDateFormat(new SimpleDateFormat(DEFAULT_FORMATTER));
        super.configure(SerializationFeature.INDENT_OUTPUT,true);//转换为格式化的JSON
        super.setSerializationInclusion(JsonInclude.Include.NON_NULL);//属性为Null，不序列化
        super.setTimeZone(TimeZone.getDefault());

    }
}
