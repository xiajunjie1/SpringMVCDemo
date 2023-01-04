package com.maker.validate.action;

import com.maker.common.annotation.ErrorPage;
import com.maker.common.annotation.RequestDataValidate;
import com.maker.common.annotation.UploadFileType;
import com.maker.common.http.util.UploadFileUtils;
import com.maker.common.web.action.abs.AbstractAction;
import com.maker.validate.vo.Emp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;

@Controller
@RequestMapping("/pages/emp/*")
public class EmpAction extends AbstractAction {
private static final Logger LOGGER= LoggerFactory.getLogger(EmpAction.class);
    @RequestMapping("add_input")
    public ModelAndView add_Input(){
        ModelAndView mav=new ModelAndView("pages/input_add");
        return mav;
    }

    @PostMapping("add")
    // 所有的规则按照”参数名称:规则标记;参数名称:规则标记;参数名称:规则标记;“结构定义
    @RequestDataValidate(
            "empno:long;ename:string;sal:double;hiredate:date;roles:strings;photo:upload")
    @ErrorPage("/pages/emp/add_input")//配置单独的错误页
    public ModelAndView add(Emp emp, @UploadFileType MultipartFile photo){
        LOGGER.info("【增加雇员数据】雇员编号：{}、姓名：{}、工资：{}、雇佣日期：{}、角色：{}",
                emp.getEmpno(), emp.getEname(), emp.getSal(),
                emp.getHiredate(), emp.getRoles());
        ModelAndView mav=new ModelAndView("pages/add_success");
        mav.addObject("emp",emp);
        mav.addObject("flag",true);
        String saveFileName=null;
        try {
            saveFileName=UploadFileUtils.save(photo,"/WEB-INF/upload");
        } catch (Exception e) {
        }
        LOGGER.info("【文件上传】ContentType：{}、OriginalFileName：{}、Size：{}、SaveFileName：{}",
                photo.getContentType(), photo.getOriginalFilename(),
                photo.getSize(), saveFileName);
        mav.addObject("photo",saveFileName);
        return mav;
    }
    /**
     * 接收JSON数据
     * */
    @PostMapping("edit")
    @RequestDataValidate(require = true,
            value = "empno:long;ename:string:sal:double;hiredate:date;roles:strings")
    public ModelAndView edit(@RequestBody Emp emp) {
        LOGGER.info("【更新雇员数据】雇员编号：{}、姓名：{}、工资：{}、雇佣日期：{}、角色：{}",
                emp.getEmpno(), emp.getEname(), emp.getSal(),
                emp.getHiredate(), emp.getRoles());
        return null;
    }
    @GetMapping("get")
    @RequestDataValidate(require = false, value = "empno:long")
    public ModelAndView get(long empno) {
        LOGGER.info("【查询雇员信息】雇员编号：{}", empno);
        return null;
    }
    @DeleteMapping("delete")
    @RequestDataValidate("ids:longs")
    public ModelAndView delete(long ids[]) {
        LOGGER.info("【删除雇员信息】雇员编号：{}", Arrays.toString(ids));
        return null;
    }
}

