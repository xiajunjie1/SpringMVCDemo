package com.maker.common.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.maker.common.http.util.ReadRequestBodyData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ValidateUtils {
    private static final Logger LOGGER= LoggerFactory.getLogger(ValidateUtils.class);
    private ValidateUtils(){}
    /**
     * 对指定配置的规则进行数据的验证处理操作，但是这个验证处理会返回错误信息
     * @param rules 之前获取到的验证规则的字符串，字符串的结构“参数:规则;参数:规则;..”形式定义
     * @return 最终的验证的结果，而这些结果保存的就是错误信息，这个错误信息在进行保存的时候采用的结构
     * key = 参数名称、value = 错误信息，如果Map集合长度为0则表示没有任何的错误
     */
    public static Map<String,String> validate(String rules){
        Map<String,String> result=new HashMap<>();
        String[] allrule=rules.split(";");//分割规则
        for(String rule : allrule){
            String[] temp=rule.split(":");//分割规则和参数名
            //temp[0]为参数名，temp[1]为规则
           Map<String,Object> validateResult= validate(temp[0],temp[1]);
           if(validateResult.containsKey("flag")){
               //参数根据配置的规则进行了验证，并未报错
               //获取验证的结果
               boolean flag= (Boolean)validateResult.get("flag");
               if(!flag){
                   //验证失败
                   result.put(temp[0],(String) validateResult.get("message"));
               }
           }
        }
        return result;//返回验证结果（当改map的size大于0，代表有验证异常的信息）
    }
    /**
     * RESTful数据请求的验证处理逻辑
     * @param request 当前的请求对象（已经做了一个Request包装处理）
     * @param rules 所获取到的验证规则
     * @return 最终的验证的结果，而这些结果保存的就是错误信息，这个错误信息在进行保存的时候采用的结构
     * key = 参数名称、value = 错误信息，如果Map集合长度为0则表示没有任何的错误
     */
    public static Map<String,String> validateBody(HttpServletRequest request,String rules){
        //对于JSON请求，需要使用Jackson将其转换为Map，然后在对JSON中的数据进行验证
        ObjectMapper mapper=new ObjectMapper();
        Map<String ,String> result=new HashMap<>();
        try {
            //此处List<String>和IValidateRule中的getParameterValue()方法对应
            Map<String, List<String>> jsonmap=mapper.readValue(ReadRequestBodyData.getRequestBodyData(request),Map.class);
           LOGGER.debug("jsonmap={}",jsonmap);
            String[] allrule=rules.split(";");
            for(String rule : allrule){
                String[] temp=rule.split(":");
                LOGGER.debug("JSON参数{},类型为{}",temp[0],temp[0].getClass().getName());
                Map<String,Object> validateResult=validate(jsonmap.get(temp[0]),temp[1]);

                if(validateResult.containsKey("flag")){
                    boolean flag=(Boolean) validateResult.get("flag");
                    if(!flag){
                        result.put(temp[0],(String)validateResult.get("message"));
                    }
                }
            }
        } catch (Exception e) {
            LOGGER.error("获取JSON数据转map集合异常：{}",e.getMessage());
        }
        return result;
    }

    /**
     * 根据指定的参数和规则进行数据的验证
     * @param param 参数名称，也有可能是具体的内容
     * @param rule 规则名称
     * @return 返回数据的信息，这个信息包含有两类的数据
     * key = flag、value = Boolean验证结果（true或false）
     * key = message、value = 验证失败时的错误信息（IValidateRule.errorMessage()方法结果）
     */
    public static Map<String,Object> validate(Object param,String rule){
        Map<String,Object> result=new HashMap<>();
        String validateClass="com.maker.common.validate.rule."+
                StringUtils.capitalize(rule)+"ValidateRule";//将rule首字母变为大写
       Class<?> clazz=null;
        try {
            clazz=Class.forName(validateClass);//根据名称找到规则类

        } catch (ClassNotFoundException e) {
            LOGGER.error("未找到规则类：{}",e.getMessage());
            return result;
        }
        LOGGER.debug("【获取数据验证类】{}",clazz.getName());
        //通过Spring提供的BeanUtils获取验证类中的验证方法
        Method validateMethod= BeanUtils.findMethod(clazz,"validate",Object.class);
        Object obj=BeanUtils.instantiateClass(clazz);//通过类进行对象实例化
        try{
            boolean flag=(Boolean)validateMethod.invoke(obj,param);
            LOGGER.debug("【ValidateUtils.vailidate()】{}",flag);
            result.put("flag",flag);//保存验证的结果
            if(!flag){//验证未通过，需要调用该规则类的errorMsg方法返回错误信息
                Method errorMsgMethod=BeanUtils.findMethod(clazz,"errorMsg");
                result.put("message",errorMsgMethod.invoke(obj));
            }
            return result;
        }catch (Exception e){
            LOGGER.error("调用验证方法异常：{}",e.getMessage());
            e.printStackTrace();
            return result;
        }

    }



}
