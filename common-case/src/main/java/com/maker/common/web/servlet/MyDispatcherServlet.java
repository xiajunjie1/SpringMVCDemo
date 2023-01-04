package com.maker.common.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.util.MimeType;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
/**
 * 自定义DispatcherServlet，用于定义404错误页
 * */
public class MyDispatcherServlet extends DispatcherServlet {
    private boolean restSwitch=false;//是否以RestFul返回
    private ObjectMapper objectMapper=new ObjectMapper();//Jackson提供的对象，将对象转为JSON
    public MyDispatcherServlet(WebApplicationContext webApplicationContext){
        super(webApplicationContext);
    }

    public void setRestSwitch(boolean restSwitch) {
        this.restSwitch = restSwitch;
    }

    @Override
    protected void noHandlerFound(HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(this.restSwitch){
            response.setStatus(HttpStatus.NOT_FOUND.value());
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);
            response.setCharacterEncoding("UTF-8");
            Map<String,Object> result = new HashMap<>();
            result.put("message","未找到页面");
            result.put("status",HttpStatus.NOT_FOUND);
            response.getWriter().print(this.objectMapper.writeValueAsString(result));//转成JSON返回
        }else{
            //非Restful方式返回
            response.sendRedirect("/notfound");
        }
    }
}
