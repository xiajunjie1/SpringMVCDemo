package com.maker.ssj.action;

import com.maker.common.annotation.ErrorPage;
import com.maker.common.annotation.RequestDataValidate;
import com.maker.ssj.po.Item;
import com.maker.ssj.service.IItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/pages/back/admin/item/*")
public class ItemAction {
    @Autowired
private IItemService service;
@RequestMapping("list")
public ModelAndView itemList(){
ModelAndView mav=new ModelAndView("back/admin/item/item_list");
List<Item> result=service.list();
mav.addObject("allItems",result);
return mav;
}
@RequestMapping("refresh")
public String refreshCache(){

    service.clearCache();
    //清除缓存后重新调回list界面，查询最新数据并写入缓存，相当于更新了缓存
    return "forward:/pages/back/admin/item/list";
}
@RequestMapping("add_input")
public String add_input(){
    return "back/admin/item/item_add";
}
@ErrorPage("/pages/back/admin/item/add_input") //自定义注解
@RequestMapping("add")
@RequestDataValidate("name:string;note:string") //自定义注解
public ModelAndView add(Item item){
   ModelAndView mav=new ModelAndView("plugin/forward");
    boolean flag=service.add(item);
   if(flag){
       mav.addObject("msg","分类添加成功");
   }else {
        mav.addObject("msg","分类添加失败");
   }
   mav.addObject("url","/pages/back/admin/item/add_input");
   return mav;
}
}
