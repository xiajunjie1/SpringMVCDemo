package com.maker.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/pages/message/**")
@Controller
public class MessageAction {
    /**
     * 仅用于此时SpringSecurity是否生效
     * 如果生效会自动跳转到SpringSecurity内部的登录表单处
     * */
    @GetMapping("info")
    @ResponseBody
    public Object info(){
        Map<String,String > result =new HashMap<>();
        result.put("xia","夏");
        result.put("jun","俊");
        return result;
    }

    @PostMapping("echo")
    @ResponseBody
    public Object echo(String msg){
        return Map.of("result","【echo】"+msg);
    }
    @GetMapping("csrf")
    public String csrf(){
        return "input_csrf";
    }


}
