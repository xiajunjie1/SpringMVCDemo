package com.maker.action;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;
@Controller
@RequestMapping("/pages/member/*")
public class MemberAction {
    @GetMapping("auth")
    @ResponseBody
    public Object authentication(){
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        Map<String,Object> result=new HashMap<>();
        result.put("credentials",authentication.getCredentials());
        result.put("authorities",authentication.getAuthorities());
        result.put("details",authentication.getDetails());
        result.put("principal",authentication.getPrincipal());
        return result;
    }
}
