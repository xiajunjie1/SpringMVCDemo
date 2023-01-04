package com.maker.common.http.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.io.IOException;

public class ReadRequestBodyData {//数据读取操作类
    private ReadRequestBodyData(){}//构造方法私有化
    public static byte[] getRequestBodyData(HttpServletRequest request) throws IOException {
        HttpServletRequestWrapper wrapper=new HttpServletRequestWrapper(request);
        int contentLength=wrapper.getContentLength();
        if(contentLength < 0){//没有数据
            return null;
        }
        byte[] data=new byte[contentLength];
        wrapper.getInputStream().read(data);//数据读取
        return data;
    }

}
