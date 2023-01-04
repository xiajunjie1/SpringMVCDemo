package com.maker.servlet;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyDispatcherServlet extends DispatcherServlet {

   public MyDispatcherServlet(WebApplicationContext context){
       super(context);//调用父类的构造方法
   }
    @Override
    protected void noHandlerFound(HttpServletRequest request, HttpServletResponse response) throws Exception {
       response.sendRedirect("/mvc/notfound");//进行未发现的路径跳转配置

   }
}
