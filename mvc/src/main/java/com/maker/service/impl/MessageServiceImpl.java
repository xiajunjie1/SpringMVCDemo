package com.maker.service.impl;

import com.maker.service.IMessageService;
import org.springframework.stereotype.Service;
/**
 * 在spring-base.xml中进行了service的包扫描配置
 *
 * */
@Service
public class MessageServiceImpl implements IMessageService {
    @Override
    public String echo(String msg) {

        return "【echo】"+msg;
    }
}
