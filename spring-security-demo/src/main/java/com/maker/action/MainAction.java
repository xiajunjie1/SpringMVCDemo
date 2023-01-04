package com.maker.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MainAction {
    @RequestMapping("/main")
    public String main(){
        return "main";
    }
}
