package com.maker.action;

import com.maker.util.CaptchaUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class CaptchaAction {
    @RequestMapping("/captcha")
    public ModelAndView captcha(){

        CaptchaUtil.outputCaptcha();//生成验证码
        return null;
    }
}
