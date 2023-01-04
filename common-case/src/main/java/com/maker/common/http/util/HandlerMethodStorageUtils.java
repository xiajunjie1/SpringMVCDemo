package com.maker.common.http.util;

import org.springframework.web.method.HandlerMethod;

public class HandlerMethodStorageUtils {//存储HandlerMethod
    private static final ThreadLocal<HandlerMethod> THREAD_LOCAL_STORAGE=
            new ThreadLocal<>();

    public static void set(HandlerMethod handlerMethod){
        THREAD_LOCAL_STORAGE.set(handlerMethod);
    }

    public static HandlerMethod get(){
        return THREAD_LOCAL_STORAGE.get();
    }
}
