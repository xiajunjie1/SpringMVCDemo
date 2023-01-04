package com.maker.validate.web.config;

import com.maker.common.http.filter.MyStreamFilter;
import com.maker.common.http.filter.UploadFilter;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;
import java.io.File;

public class StartWebApplication extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{SpringConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{
                SpringMvcConfig.class
        };
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

    @Override
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter filter =new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);
        MyStreamFilter streamFilter=new MyStreamFilter();//请求包装过滤，当请求为JSON类型时，就将request对象替换成包装后的requestWrapper对象
        UploadFilter uploadFilter=new UploadFilter();
        return new Filter[]{filter,streamFilter,uploadFilter};
    }

    /**
     * 文件上传支持
     * */
    @Override
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {
        long maxFileSize = 2097152; // 单个文件最大为2M
        long maxRequestSize = 5242880; // 整个的请求最大为5M
        int fileSizeThreshold = 1048576; // 写入阈值
        File file = new File("/tmp"); // 创建保存目录
        if (!file.exists()) { // 路径不存在
            file.mkdirs(); // 创建目录
        }
        MultipartConfigElement element=new MultipartConfigElement("/tmp",maxFileSize,maxRequestSize,fileSizeThreshold);
        registration.setMultipartConfig(element);
    }
}
