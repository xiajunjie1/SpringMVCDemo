package com.maker.validate.action;

import com.maker.common.web.action.abs.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class ErrorAction extends AbstractAction {
    @RequestMapping("/error")
    public ModelAndView errorResponse(){
        ModelAndView mav=new ModelAndView("pages/errors/500_error");
        return mav;
    }
    @RequestMapping("/notfound")
    public ModelAndView notFoundResponse(){
            ModelAndView mav=new ModelAndView("pages/errors/404_error");
            return mav;
    }
}
