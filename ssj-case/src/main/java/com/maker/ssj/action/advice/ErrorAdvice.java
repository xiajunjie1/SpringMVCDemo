package com.maker.ssj.action.advice;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class ErrorAdvice {
    @ExceptionHandler(Exception.class)
    public ModelAndView errorHandle(Exception e, HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav=new ModelAndView("forward:/errors");
        Map<String,Object> errors=new HashMap<>();
        errors.put("message",e.getMessage());
        errors.put("type",e.getClass().getName());
        errors.put("referer",request.getHeader("Referer"));
        errors.put("path",request.getRequestURI());
        mav.addObject("errors",errors);
        response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        return mav;
    }
}
