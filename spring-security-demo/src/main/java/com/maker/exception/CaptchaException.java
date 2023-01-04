package com.maker.exception;

import org.springframework.security.core.AuthenticationException;
/**
 * 验证码认证异常类
 * */
public class CaptchaException extends AuthenticationException {
    public CaptchaException(String msg){
        super(msg);
    }
}
