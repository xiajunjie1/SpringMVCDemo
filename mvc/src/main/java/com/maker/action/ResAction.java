package com.maker.action;

import com.maker.action.abs.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/res/*")
public class ResAction extends AbstractAction {
    @RequestMapping("echo")
    public ModelAndView echo(){
        ModelAndView mav=new ModelAndView("res/show");
        mav.addObject("echomsg","jayjxia");
        return mav;
    }

}
