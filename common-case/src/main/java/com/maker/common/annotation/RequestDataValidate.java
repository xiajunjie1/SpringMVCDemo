package com.maker.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/**
 * 配置是否需要进行请求参数验证，以及验证规则
 * */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface RequestDataValidate {
    boolean require() default true;
    String value() default "";//验证规则
}
