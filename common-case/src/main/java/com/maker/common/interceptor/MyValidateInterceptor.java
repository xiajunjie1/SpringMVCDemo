package com.maker.common.interceptor;

import com.maker.common.annotation.RequestDataValidate;
import com.maker.common.http.util.HandlerMethodStorageUtils;
import com.maker.common.util.ResponseHandler;
import com.maker.common.util.ValidateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.MethodParameter;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class MyValidateInterceptor implements HandlerInterceptor {
    private static final Logger LOGGER= LoggerFactory.getLogger(MyValidateInterceptor.class);
    private boolean restSwitch=false;//是否启用rest结构
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if(handler instanceof HandlerMethod){
            HandlerMethod handlerMethod=(HandlerMethod) handler;
            HandlerMethodStorageUtils.set(handlerMethod);//将handlerMethod以线程安全的方式保存下来，所有类都可以进行使用
            RequestDataValidate requestDataValidate=handlerMethod.getMethodAnnotation(RequestDataValidate.class);
            LOGGER.debug("当前的request对象：{}",request.getClass().getName());
            if(requestDataValidate==null){
                //未配置该注解
                return true;
            }else{
                if(!requestDataValidate.require()){
                    //未开启验证
                    return true ;
                }else {
                    //存在注解且开启了验证
                    String rules= requestDataValidate.value();
                    if(StringUtils.hasLength(rules)){//规则存在
                        LOGGER.debug("【{}()】{}",handlerMethod.getMethod().getName(),rules);
                        //进行规则判断处理
                        boolean requestFlagBody=false;//用来标记是否有@RequestBody注解，含有该注解表示请求为restful
                        for(MethodParameter parameter:handlerMethod.getMethodParameters()){
                            //遍历action中方法的参数列表
                            RequestBody requestBody = parameter.getParameterAnnotation(RequestBody.class);
                            if(requestBody!=null){
                                requestFlagBody=true;
                            }
                        }

                        Map<String,String> result=null;
                        if(requestFlagBody){
                            //采用Restful验证
                            result= ValidateUtils.validateBody(request,rules);

                        }else{
                            result=ValidateUtils.validate(rules);
                        }
                        LOGGER.debug("获取验证错误信息：{}",result);
                        if(result!=null && result.size()>0){
                            //有验证出错的信息
                            ResponseHandler.responseError(result,this.restSwitch,handlerMethod);
                            return false;
                        }                    }
                    return true;
                }
            }
        }
        return true;

    }

    public void setRestSwitch(boolean restSwitch) {
        this.restSwitch = restSwitch;
    }
}
