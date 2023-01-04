package com.maker.action;

import com.maker.action.abs.AbstractAction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping("/session/*")
@SessionAttributes({"user","role"})//设置Session属性名称，即将ModelMap中与key为user和role的属性存放到session域中
public class SessionAction extends AbstractAction {
    private static final Logger LOGGER= LoggerFactory.getLogger(SessionAction.class);
    @GetMapping("login")
    public String login(ModelMap model){


        model.addAttribute("user",Map.of(
                "id","xia","name","夏"
        ));
        model.addAttribute("role",Set.of("admin","manager","teacher"));
        return "/pages/user/login.jsp";
    }
    @GetMapping("get")
    public ModelAndView getSession(ModelMap map){
        Map user=(Map) map.getAttribute("user");
        Set role=(Set) map.getAttribute("role");
        LOGGER.info("user={}、role={}",user,role);
        return null;
    }
    /**
     * 清除Session
     * */
    @GetMapping("clean")
    public ModelAndView clean(ModelMap model, SessionStatus status){
        LOGGER.info("【用户信息】{}", model.getAttribute("user"));
        LOGGER.info("【角色信息】{}", model.getAttribute("role"));
        status.setComplete(); // 清除当前的session
        LOGGER.info("Session数据已被清除");
        return null;
    }
}
