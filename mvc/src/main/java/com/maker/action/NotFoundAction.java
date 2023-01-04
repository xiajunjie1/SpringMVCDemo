package com.maker.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotFoundAction {
    @RequestMapping("/notfound")
    public String notFound(){
        return "error/404";
    }
}
