package com.maker.filter;

import com.maker.service.IMessageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.*;
import java.io.IOException;

public class MyFilter implements Filter {
    private static final Logger LOGGER= LoggerFactory.getLogger(MyFilter.class);
   //@Autowired //此注解现在是不会生效的，因为该Filter和DispatcherServlet同级别，它并不运行在SpringWeb的容器中
    private IMessageService service;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        WebApplicationContext applicationContext=WebApplicationContextUtils.getWebApplicationContext(filterConfig.getServletContext());
         service=applicationContext.getBean(IMessageService.class);

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        LOGGER.info("service运行结果：{}",service.echo("xiajunjie"));
        chain.doFilter(request,response);
    }
}
