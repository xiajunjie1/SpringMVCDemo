package com.maker.servlet;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyDispatcherServlet extends DispatcherServlet {
public MyDispatcherServlet(WebApplicationContext webApplicationContext){
    super(webApplicationContext);
}
    @Override
    protected void noHandlerFound(HttpServletRequest request, HttpServletResponse response) throws Exception {
       response.sendRedirect("/notfound");
    }
}
