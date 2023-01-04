package com.maker.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/**
 * 配置文件上传的限制规则，当有该注解，才根据该注解配置的类型进行验证
 * */
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface UploadFileType {
    //设置默认只允许上传图片
    public String value() default "image/bmp;image/gif;image/jpg;image/jpeg;image/png";
}
