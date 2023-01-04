package com.maker.action.abs;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.beans.PropertyEditorSupport;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
/**
 * 供Action继承，提供转换日期的功能，如果有需要也可以注册多种属性的编辑器进行属性转换
 * 如果不进行日期的处理，那么传入日期的时候，会报400错误
 * */
public abstract class AbstractAction {
    private static final DateTimeFormatter LOCAL_DATE_FORMATE=DateTimeFormatter.ofPattern("yyyy-MM-dd");

    /**
     * 此方法为注册属性编辑器的核心方法
     * 方法必须要加上@InitBinder注解
     *
     * 如果觉得此类转换的类型不符合自己的需求，可以在子action中重写此方法
     * 自定义类型转换
     * */
    @InitBinder //添加初始化绑定
    public void initBinder(WebDataBinder binder){

       //针对Date属性进行属性的转换
        binder.registerCustomEditor(
                java.util.Date.class,new PropertyEditorSupport(

                ){
                    @Override
                    public void setAsText(String text) throws IllegalArgumentException {//此处的text为Date类型参数所匹配到的参数值
                        LocalDate localDate=LocalDate.parse(text,LOCAL_DATE_FORMATE);//将text按照指定的形式进行转化
                        Instant instant=localDate.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant();
                        super.setValue(java.util.Date.from(instant));//将转化的值进行注入
                    }
                }
        );//注册属性编辑器
    }
}
