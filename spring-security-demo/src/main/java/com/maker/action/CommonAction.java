package com.maker.action;

import com.fasterxml.jackson.databind.ser.std.StdKeySerializers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.csrf.DefaultCsrfToken;
import org.springframework.security.web.csrf.LazyCsrfTokenRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CommonAction {
    private static final Logger LOGGER= LoggerFactory.getLogger(CommonAction.class);
    @RequestMapping("/login_page")
    public String loginPage(HttpServletRequest request){ //跳转到登录页面

        return "login_page";
    }

    @RequestMapping("/success")
    public String loginSuccess(HttpServletRequest request){ //跳转到登录成功页面
        //DefaultCsrfToken defaultCsrfToken=(DefaultCsrfToken) request.getAttribute("_csrf");
        //SaveOnAccessCsrfToken=saveOnAccessCsrfToken=request.getAttribute("_csrf");
        //LOGGER.info("【request】token：{}",request.getAttribute("_csrf").getClass().getName());

        // LOGGER.info("【request】token：{}",request.getAttribute("_csrf"));
        //LOGGER.info("【Session】token：{}",request.getSession().getAttribute("_csrf"));

        // ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        return "login_success";
    }

    @RequestMapping("/failure")
    public ModelAndView loginFailure(String error){ //跳转到登录失败的页面
        ModelAndView mav=new ModelAndView("login_failure");
        mav.addObject("error",error);
        return mav;
    }

    @RequestMapping("/logout_page")
    public ModelAndView logoutPage(){//配置注销成功的
        ModelAndView mav=new ModelAndView("logout_page");
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        String name=authentication.getName();
        mav.addObject("msg",name+"用户注销成功");
        return mav;
    }
    @RequestMapping("/error_403")
    public String error403(){
        return "errors/403_error";
    }
}
