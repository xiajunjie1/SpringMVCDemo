package com.maker.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class SecurityExpressionAction {
    @RequestMapping("/pages/admin/info")
    @ResponseBody
    public Object adminInfo(){
        Map<String,String> result=new HashMap<>();
        result.put("role","ADMIN");
        return result;
    }
    @RequestMapping("/pages/news/info")
    @ResponseBody
    public Object newsInfo(){
        Map<String,Object> result=new HashMap<>();
        result.put("role",new String[]{"ADMIN","NEWS","MESSAGE"});
        return result;
    }

}
