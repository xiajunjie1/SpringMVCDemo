package com.maker.common.mapper;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.TimeZone;
/**
 * 定义当日期对象以Restful传输时的格式
 * */
public class CustomerMapper extends ObjectMapper {
    private static final String DEFAULT_DATE_FORMATTER="yyyy-MM-dd";
    public CustomerMapper(){
        super.setDateFormat(new SimpleDateFormat(DEFAULT_DATE_FORMATTER));
        super.configure(SerializationFeature.INDENT_OUTPUT,true);
        super.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        super.setTimeZone(TimeZone.getTimeZone("GMT+8:00"));//时区

    }
}
