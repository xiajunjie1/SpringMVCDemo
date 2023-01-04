package com.maker.action;

import com.maker.action.abs.AbstractAction;
import com.maker.service.IMessageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.Map;


@Controller//在spring-mvc.xml中进行了包扫描的配置
@RequestMapping("/message/*")
public class MessageAction extends AbstractAction {
    private static final Logger LOGGER= LoggerFactory.getLogger(MessageAction.class);
    @Autowired
    private IMessageService service;
    @Autowired
    private WebApplicationContext webApplicationContext;
    @RequestMapping("echo/{title}/{msg}/{level}")
    public ModelAndView echo(
            @PathVariable("title") String title,
            @PathVariable("msg")    String msg,
            @PathVariable("level") int level){
//        String result=service.echo(msg);
//        LOGGER.info("接收到参数：{}",msg);
//        ModelAndView mav=new ModelAndView("/pages/message/show.jsp");//设置跳转路径
//        mav.addObject("msgobj",result);
//        return mav;
        ModelAndView mav=new ModelAndView("message/show");
        mav.addObject("msgobj",msg);
        LOGGER.info("收到参数,title={}、msg={}、level={}",title,msg,level);
        return mav;
    }
    /**
     * 接收矩阵参数
     * */
    @RequestMapping("echo2/{mid}")
    public ModelAndView echo_second(
           @PathVariable("mid") String mid,
           @MatrixVariable("title") String title,
           @MatrixVariable("msg") String msg,
           @MatrixVariable("level") int level
    ){
        LOGGER.info("收到参数,mid={}、title={}、msg={}、level={}",mid,title,msg,level);
        return null;
    }

    /**
     * 使用map接收矩阵参数
     * */
    @RequestMapping("echomap/{.*}")//映射地址，匹配所有的参数
    public ModelAndView echo_map(@MatrixVariable Map<String,String> params){
        for(Map.Entry<String,String> entry : params.entrySet()){
            LOGGER.info("参数：{},值：{}",entry.getKey(),entry.getValue());
        }

        return null;
    }

    @GetMapping("show")
    @ResponseBody
    public void show(){
        LOGGER.info("【子容器】ID：{}、NAME：{}", this.webApplicationContext.getId(),
                this.webApplicationContext.getApplicationName());//SpringMVC容器org.springframework.web.context.WebApplicationContext:/mvc/dispatcher
        LOGGER.info("【父容器】ID：{}、NAME：{}", this.webApplicationContext.getParent().getId(),
                this.webApplicationContext.getParent().getApplicationName());//Spring容器org.springframework.web.context.WebApplicationContext:/mvc
    }
    @RequestMapping("input")
    public String input(){
        return "message/input";
    }
    @PostMapping("respresult")
    public ModelAndView respResult(String msg, @RequestParam("message") String param2, Date time){
        ModelAndView mav=new ModelAndView("/pages/message/showresult.jsp");
        LOGGER.info("接收到参数：{}",msg);
        LOGGER.info("【@RequestParam测试】{}",param2);
        LOGGER.info("【日期测试】{}",time);
        mav.addObject("echoMsg","【echo】"+msg);

        return mav;
    }
}
