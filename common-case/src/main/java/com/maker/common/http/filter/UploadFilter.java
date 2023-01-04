package com.maker.common.http.filter;

import org.springframework.util.StringUtils;
import org.springframework.web.multipart.support.StandardMultipartHttpServletRequest;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * 对于上传请求request对象进行包装
 * */
public class UploadFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest=(HttpServletRequest) request;
        if(httpServletRequest.getContentType()!=null){
            if(httpServletRequest.getContentType().startsWith("multipart/form-data")){
                //为上传文件请求
                StandardMultipartHttpServletRequest multipartRequest
                        =new StandardMultipartHttpServletRequest(httpServletRequest);
                chain.doFilter(multipartRequest,response);
            }
            else{//非上传请求，不处理
                chain.doFilter(request,response);
            }
        }else{//无头信息，不处理
        chain.doFilter(request,response);
        }
    }
}
