package com.maker.ssj.action;

import com.maker.common.web.action.abs.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BackAction extends AbstractAction {
    @RequestMapping("/pages/back")
    public String index(){
        return "back/index";
    }
}
