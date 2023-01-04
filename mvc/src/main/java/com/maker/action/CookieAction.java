package com.maker.action;

import com.maker.action.abs.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/cookie/*")
@ResponseBody
public class CookieAction extends AbstractAction {
    @GetMapping("get")
    public Object get(@CookieValue(value = "xia",defaultValue = "xia.com") String xia,
                      @CookieValue(value="jun",defaultValue = "jun.com") String jun,
                      @CookieValue(value="JSESSIONID",defaultValue = "session_default") String id,
                      @CookieValue(value="USER_NAME_COOKIE",defaultValue = "test") String user_name_cookie){

        Map<String ,String> map=new HashMap<>();
        map.put("xia",xia);
        map.put("jun",jun);
        map.put("JSESSIONID",id);
        map.put("USER_NAME_COOKIE",user_name_cookie);
        return map;
    }
    @RequestMapping("set")
    public String set(HttpServletResponse response){
        Cookie c1=new Cookie("xia","www.xia.com");
        Cookie c2=new Cookie("jun","www.jun.com");
        c1.setMaxAge(3600);
        c2.setMaxAge(3600);
        response.addCookie(c1);
        response.addCookie(c2);
        return "Set Cookie Success";
    }
}
