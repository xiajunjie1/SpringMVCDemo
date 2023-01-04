package com.maker.common.validate;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IValidateRule {
    public static final Logger LOGGER= LoggerFactory.getLogger(IValidateRule.class);
    public boolean validate(Object str);
    public String errorMsg();//返回验证错误的信息
    /**
     * 该方法实现请求参数的接收，请求参数分为两种
     * 一种是普通的请求参数，这种参数可以由request直接操作
     * 另一种是Jackson的数据处理，所以需要考虑请求数据已经是对象的情况
     * */
    public default String getParameterValue(Object param){
        if(StringUtils.hasLength(request().getContentType())){
            if(request().getContentType().startsWith("application/x-www-form-urlencoded")){
                //包含头信息的普通请求，所以此时param是参数名，使用request获取参数内容
               return request().getParameter(param.toString());
            }
            if(request().getContentType().startsWith("multipart/form-data")){
                //包含头信息且有文件上传请求，这个时候也不能直接返回param.toString，这时候的param也是参数名称
                return request().getParameter(param.toString());
            }
            //含有请求类型
            if(request().getContentType().startsWith(MediaType.APPLICATION_JSON_VALUE)){
                //有很多JSON数据，转过来后是字符串而非List
                if(param instanceof String){
                    return param.toString();
                }

                //json请求
                List<String> all=(List)param;
                return all.get(0);//返回一个对象
            }
            //普通对象
            return param.toString();//返回原始数据
        }
        //基本数据类型
        return request().getParameter(param.toString());
    }

    public default String[] getParameterValues(Object param){
        if(StringUtils.hasLength(request().getContentType())){
            if(request().getContentType().startsWith("application/x-www-form-urlencoded")){

                return request().getParameterValues(param.toString());
            }

            if(request().getContentType().startsWith("multipart/form-data")){
                return request().getParameterValues(param.toString());
            }
            //含有请求类型
            if(request().getContentType().startsWith(MediaType.APPLICATION_JSON_VALUE)){
                //json请求
                List<String> all=(List)param;
                return all.toArray(new String[]{});//List转为数组
            }

        }
        //基本数据类型
        return request().getParameterValues(param.toString());
    }

    public default HttpServletRequest request(){
       HttpServletRequest request= ((ServletRequestAttributes)RequestContextHolder
                .getRequestAttributes()).getRequest();
       LOGGER.debug("当前request对象{}",request.getClass().getName());
    return request;
    }
}
