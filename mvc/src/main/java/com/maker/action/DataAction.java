package com.maker.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
@RequestMapping("/data/*")
public class DataAction {
    private static final Logger LOGGER= LoggerFactory.getLogger(DataAction.class);

    /**
     *在Action内部进行跳转，同时传递参数
     *  使用此种方法传递的参数，虽然可以转到Action中另一个方法去，但是
     *  跳转后无法传到页面上
     */
    @RequestMapping("set_param/{name}/{url}")
    public String setParam(RedirectAttributes redirectAttributes, @PathVariable("name") String name, @PathVariable("url") String url){
        redirectAttributes.addAttribute("name",name);
        redirectAttributes.addAttribute("url",url);
        return "redirect:/data/list_param";
    }
    @RequestMapping("list_param")
    public String listParam(String name,String url){
        LOGGER.info("【获取参数】name={}、url={}",name,url);
        return "/pages/data/list.jsp";
    }

    @RequestMapping("set_flashparam/{name}/{url}")
    public String setFlashParam(RedirectAttributes redirectAttributes, @PathVariable("name") String name, @PathVariable("url") String url){
        redirectAttributes.addFlashAttribute("name",name);
        redirectAttributes.addFlashAttribute("url",url);
        return "redirect:/data/list_flashparam";
    }
    @RequestMapping("list_flashparam")
    public String listFlashParam(ModelMap map){
        LOGGER.info("【获取参数】{}",map);
        return "/pages/data/list.jsp";
    }

}
