package com.maker.action;

import com.maker.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("pages/annotation/admin/*")//此父路径不需要验证
public class AdminAction {
    @Autowired
    IAdminService adminService;
    @RequestMapping("add")
    @ResponseBody
    public Object add(){
        //若无对应权限用户访问，则会返回403
        return Map.of("result","创建新管理员","flag",adminService.add());
    }
    @RequestMapping("edit")
    @ResponseBody
    public Object edit(){
        return Map.of("result","修改管理员数据","flag",adminService.edit());
    }
    @RequestMapping("delete")
    @ResponseBody
    public Object delete(@RequestParam(name="ids",required = false)List<String> ids){
        return Map.of("result",adminService.delete(ids));
    }
    @RequestMapping("get")
    @ResponseBody
    public Object get(String username){
        return Map.of("result",adminService.get(username));
    }
    @RequestMapping("list")
    @ResponseBody
    public Object list(){
        return Map.of("result",adminService.list());
    }


}
