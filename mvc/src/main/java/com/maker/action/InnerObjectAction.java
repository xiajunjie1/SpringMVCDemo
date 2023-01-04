package com.maker.action;

import com.maker.action.abs.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/web/*")
public class InnerObjectAction extends AbstractAction {
    /**
     * 使用RequestContextHolder获取内置对象
     * */
    @RequestMapping("inner_object")
    @ResponseBody//在返回的内容不是路径跳转的时候必须要使用此注解
    public Object getInnerObject(){
      ServletRequestAttributes attributes= (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
      HttpServletRequest request=attributes.getRequest();
        HttpServletResponse response=attributes.getResponse();
        HttpSession session=attributes.getRequest().getSession();
        ServletContext application=request.getServletContext();
      Map<String,Object> innerObj=new HashMap<>();
      innerObj.put("【request】ContextPath",request.getContextPath());
      innerObj.put("【response】Locale",response.getLocale());
      innerObj.put("【session】SessionID",session.getId());
      innerObj.put("【application】ResponseCharacterEncoding",application.getResponseCharacterEncoding());
        return innerObj;
    }

    /**
     * 如果仅仅需要在控制层使用内置对象，也可以采用注入的方式获取相应的内置对象
     * */
    @RequestMapping("inner_object_2")
    @ResponseBody//在返回的内容不是路径跳转的时候必须要使用此注解
    public Object getInnerObject2(HttpServletRequest request,HttpServletResponse response,HttpSession session){

        ServletContext application=request.getServletContext();
        Map<String,Object> innerObj=new HashMap<>();
        innerObj.put("【request】ContextPath",request.getContextPath());
        innerObj.put("【response】Locale",response.getLocale());
        innerObj.put("【session】SessionID",session.getId());
        innerObj.put("【application】ResponseCharacterEncoding",application.getResponseCharacterEncoding());

        return innerObj;
    }
}
