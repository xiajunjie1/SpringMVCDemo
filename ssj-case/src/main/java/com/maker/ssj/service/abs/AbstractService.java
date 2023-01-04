package com.maker.ssj.service.abs;

import org.springframework.util.StringUtils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class AbstractService {

    public boolean checkEmpty(String ... data){
        for(String str : data){
            if(!StringUtils.hasLength(str)){
                return false;
            }
        }
        return true;
    }

    /**
     * 使用反射的方式动态注入Book属性
     * 因为需要模糊查询，并不知道具体根据哪一个属性进行模糊查询，所以需要动态注入
     * @param obj:需要注入属性的对象
     * @param colum : 需要注入的属性
     * @param value :注入的内容
     * */
    public void setObjectProperty(Object obj,String colum,Object value){
        Class<?> clazz=obj.getClass();
      try{
          Field field= clazz.getDeclaredField(colum);
          Method method=clazz.getMethod("set"+StringUtils.capitalize(colum),field.getType());
            method.invoke(obj,value);
      }catch (Exception e){}
    }
}
