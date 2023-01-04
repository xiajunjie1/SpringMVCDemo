package com.maker.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice //控制层的切面操作
public class ErrorAction {
    @ExceptionHandler(Exception.class)//定义捕获的异常类型
    public ModelAndView handle(Exception e){
        ModelAndView mav=new ModelAndView("error/500");

        mav.addObject("eMsg",e.getMessage());
        return mav;
    }
}
