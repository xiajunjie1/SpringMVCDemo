package com.maker.common.http.filter;

import com.maker.common.http.MyRequestWrapper;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class MyStreamFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest=(HttpServletRequest) request;
        if(httpRequest.getContentType() !=null){
            if(httpRequest.getContentType().startsWith("application/json")){
                //判断MIME类型
                ServletRequest requestWrapper= new MyRequestWrapper(httpRequest);//创建包装后的请求对象
                chain.doFilter(requestWrapper,response);//替换request
            }else{
                //非JSON数据的发送
                chain.doFilter(request,response);//普通处理
            }

        }else{
                chain.doFilter(request,response);
        }
    }
}
