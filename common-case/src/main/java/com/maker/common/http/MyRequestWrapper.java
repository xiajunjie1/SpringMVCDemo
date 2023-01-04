package com.maker.common.http;

import com.maker.common.http.util.ReadRequestBodyData;

import javax.servlet.ReadListener;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.io.ByteArrayInputStream;
import java.io.IOException;

/**
 * 重写getInputStream方法
 * 接收并保存request传过来的数据内容
 * 每次调用getInputStream的时候，就创建一个新的ServletInputStream对象
 * */
public class MyRequestWrapper extends HttpServletRequestWrapper {
    private byte[] body;
    public MyRequestWrapper(HttpServletRequest request){
        super(request);
        try{
            body= ReadRequestBodyData.getRequestBodyData(request);
        }catch (Exception e){
            System.err.println("读取request数据出错！");
        }
    }

    @Override
    public ServletInputStream getInputStream() throws IOException {
        ByteArrayInputStream inputStream =new ByteArrayInputStream(this.body);
        return new ServletInputStream() {
            private int temp=0;//定义标记
            @Override
            public boolean isFinished() {
                return temp == -1; //读取到IO底部是-1
            }

            @Override
            public boolean isReady() {
                return true;//可以读取
            }

            @Override
            public void setReadListener(ReadListener readListener) {

            }

            @Override
            public int read() throws IOException {
                temp=inputStream.read();//数据读取
                return temp;
            }
        };
    }
}
