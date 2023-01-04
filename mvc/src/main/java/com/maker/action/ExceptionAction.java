package com.maker.action;

import com.maker.action.abs.AbstractAction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/exception/*")
public class ExceptionAction extends AbstractAction {
    private static final Logger LOGGER= LoggerFactory.getLogger(ExceptionAction.class);
    @GetMapping("occur")
    public ModelAndView errorOccur(){
        ModelAndView mav=new ModelAndView("message/show");
        try{
            int i=10/0;
        }catch (Exception e){
            LOGGER.error("出错啦！{}",e.getMessage());
            //必须抛出异常，如果在该方法中将异常处理了不抛出，那么无法跳转到全局错误页
            throw new RuntimeException("我膨胀了，搞砸了："+e.getMessage());
        }
        return mav;
    }
}
