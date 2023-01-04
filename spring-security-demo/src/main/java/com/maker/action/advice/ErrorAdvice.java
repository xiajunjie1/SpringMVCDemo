package com.maker.action.advice;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

//@ControllerAdvice
public class ErrorAdvice {
    @ExceptionHandler(Exception.class)
    public ModelAndView errorHandle(Exception e, HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav=new ModelAndView("forward:/errors");
        Map<String,Object> result=new HashMap<>();
        result.put("message",e.getMessage());
        result.put("type",e.getClass().getName());
        result.put("referer",request.getHeader("Referer"));
        response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        mav.addObject("error",result);
        return mav;
    }
}
