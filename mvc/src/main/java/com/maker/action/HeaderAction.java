package com.maker.action;

import com.maker.action.abs.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * 获取请求头信息
 * */
@Controller
@RequestMapping(value = "/header/*")
@ResponseBody
public class HeaderAction extends AbstractAction {
    @RequestMapping(value = "getHeader")
    public Object getHeader(
            @RequestHeader(name="jayj",defaultValue = "xiajj")String jayj,
            @RequestHeader("Accept-Encoding") String acceptEncoding,
            @RequestHeader("user-agent")String userAgent,
            @RequestHeader("cookie")String cookie
    ){
        Map<String ,Object> map=new HashMap<>();
        map.put("【header】jayj",jayj);
        map.put("【header】Accept-Encoding",acceptEncoding);
        map.put("【header】user-agent",userAgent);
        map.put("【header】cookie",cookie);
        return map;
    }
}
