package com.maker.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/**
 * 配置自定义的错误页，如未配置，Action的方法
 * 出错或者参数验证失败则进入全局错误页
 * */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ErrorPage {
    String value() default "/error";//默认跳转到全局错误页的Action
}
