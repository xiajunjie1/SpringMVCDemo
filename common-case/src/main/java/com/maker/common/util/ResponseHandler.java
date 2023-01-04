package com.maker.common.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.maker.common.annotation.ErrorPage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.method.HandlerMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.invoke.MethodHandle;
import java.util.Map;

/**
 * 专门进行数据响应（错误显示的类）
 * */
public class ResponseHandler {
    private static final String DEFAULT_ERROR_PAGE="/error";
    private static final Logger LOGGER= LoggerFactory.getLogger(ResponseHandler.class);
    public static void responseError(Map<String,String> result, boolean restSwitch, HandlerMethod handlerMethod){

        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        HttpServletResponse response=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getResponse();
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        response.setCharacterEncoding("UTF-8");
        response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());//设置状态码
        if(restSwitch){
            //采用REST响应
            restResponse(result);

        }else{
           dispatcherResponse(result,handlerMethod);
        }

    }

    private static void restResponse(Map<String,String> result){
        HttpServletResponse response=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getResponse();
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        response.setCharacterEncoding("UTF-8");
        response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());//设置状态码
        try{
            response.getWriter().print(new ObjectMapper().writeValueAsString(result));
        }catch (Exception e){
            LOGGER.error("RESTFul方式返回错误信息出错：{}",e.getMessage());
        }
    }

    private static void dispatcherResponse(Map<String,String> result, HandlerMethod handlerMethod){
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        HttpServletResponse response=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getResponse();
        ErrorPage errorPage=null;
        errorPage=handlerMethod.getMethodAnnotation(ErrorPage.class);
        String errorPath=DEFAULT_ERROR_PAGE;
        if(errorPage!=null){
            errorPath=errorPage.value();
        }
        try {
            request.setAttribute("errors",result);
            request.getRequestDispatcher(errorPath).forward(request, response);
        }catch (Exception e){
            LOGGER.error("无法跳转到正确的错误页：{}",e.getMessage());
        }
    }
}
