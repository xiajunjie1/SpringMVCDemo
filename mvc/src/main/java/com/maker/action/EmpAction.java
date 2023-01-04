package com.maker.action;

import com.maker.action.abs.AbstractAction;
import com.maker.vo.Dept;
import com.maker.vo.Emp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/emp/*")
public class EmpAction extends AbstractAction {
    private static final Logger LOGGER= LoggerFactory.getLogger(EmpAction.class);

    @GetMapping("add_input")
    public String add_input(){
        return "/pages/emp/input.jsp";
    }

    @PostMapping("add")
    public ModelAndView add(Emp emp){
        ModelAndView mav=new ModelAndView("/pages/emp/show.jsp");
        LOGGER.info("【雇员信息】编号：{}、姓名：{}、雇佣日期：{}",
                emp.getEmpno(), emp.getEname(), emp.getHiredate());
        LOGGER.info("【部门信息】编号：{}、名称：{}、位置：{}",
                emp.getDept().getDeptno(), emp.getDept().getDname(), emp.getDept().getLoc());

        return mav;
    }
    @PostMapping("add_json")
    public ModelAndView add_json(@RequestBody Emp emp){
        //@RequestBody的目的是告诉控制层，此时传输的内容是一个完整的JSON
        //该数据通过Jackson组件才能使用
        LOGGER.info("【雇员信息】编号：{}、姓名：{}、雇佣日期：{}",
                emp.getEmpno(), emp.getEname(), emp.getHiredate());
        LOGGER.info("【部门信息】编号：{}、名称：{}、位置：{}",
                emp.getDept().getDeptno(), emp.getDept().getDname(), emp.getDept().getLoc());
        return null;

    }
    @GetMapping("list")
    @ResponseBody //添加后，直接返回对象会自动转为JSON
    public Object list(){
        List<Emp> result=new ArrayList<>(5);
        for(int i =0;i<3;i++) {
            Emp emp = new Emp(1001L+i, "夏"+i, new Date(), new Dept(10L, "研发部", "武汉"));
            result.add(emp);
        }
        return result;
    }


}
