package com.maker.ssj.web.config;

import com.maker.common.http.filter.MyStreamFilter;
import com.maker.common.http.filter.UploadFilter;
import com.maker.ssj.context.config.SpringApplicationContextConfig;
import com.maker.ssj.context.config.SpringWebContextConfig;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.*;
import java.io.File;

public class StartWebApplicationConfig extends AbstractAnnotationConfigDispatcherServletInitializer {
    private ServletContext context;
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        System.err.println("*************onStartup**************");
        context=servletContext;
        super.onStartup(servletContext);

        System.err.println("**************"+servletContext+"*****************");
        System.err.println("**************"+context+"*****************");
    }





    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{
                SpringApplicationContextConfig.class
        };
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{
                SpringWebContextConfig.class
        };
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

    @Override
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter encodingFilter=new CharacterEncodingFilter();
        encodingFilter.setForceEncoding(true);
        encodingFilter.setEncoding("UTF-8");
        MyStreamFilter streamFilter=new MyStreamFilter();//针对JSON请求，包装request
        UploadFilter uploadFilter=new UploadFilter();//针对文件上传请求，包装request
        return new Filter[]{encodingFilter,streamFilter,uploadFilter};
    }

    /**
     * 配置文件上传
     * */
    @Override
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {
        long maxFileSize = 2097152; // 单个文件最大为2M
        long maxRequestSize = 5242880; // 整个的请求最大为5M
        int fileSizeThreshold = 1048576; // 写入阈值
        File file = new File("D:"+File.separator+"fileupload"+File.separator+"tmp"); // 创建保存目录
        if (!file.exists()) { // 路径不存在
            file.mkdirs(); // 创建目录
        }
        MultipartConfigElement element = new MultipartConfigElement(
                "D:"+File.separator+"fileupload"+File.separator+"tmp", maxFileSize, maxRequestSize, fileSizeThreshold);
//        System.err.println("***************"+element.getLocation()+"*****************");
//       System.err.println(this.context.getRealPath(element.getLocation()));
//       System.err.println(this.getClass().getClassLoader().getResource("/"));
        registration.setMultipartConfig(element); // 定义上传配置
    }
    }

