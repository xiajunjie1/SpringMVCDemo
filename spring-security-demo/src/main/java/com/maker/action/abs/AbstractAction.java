package com.maker.action.abs;

import org.springframework.beans.propertyeditors.PropertiesEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;

/**
 * 解决接收日期参数的问题
 *
 * */
public class AbstractAction {
    private static final DateTimeFormatter LOCAL_DATE_FORMATTER=
            DateTimeFormatter.ofPattern("yyyy-MM-dd");//日期格式化处理
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(java.util.Date.class,new PropertiesEditor(){
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                LocalDate date=LocalDate.parse(text,LOCAL_DATE_FORMATTER);
                Instant instant=date.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant();
                super.setValue(java.util.Date.from(instant));
            }
        });
    }

}
