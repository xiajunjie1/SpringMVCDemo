package com.maker.ssj.action;

import com.maker.common.annotation.ErrorPage;
import com.maker.common.annotation.RequestDataValidate;
import com.maker.common.annotation.UploadFileType;
import com.maker.common.http.util.UploadFileUtils;
import com.maker.ssj.action.util.PageUtil;
import com.maker.ssj.po.Book;
import com.maker.ssj.service.IBookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pages/back/admin/book/*")
public class BookAction {

    private static final Logger LOGGER = LoggerFactory.getLogger(BookAction.class);
   private static final String SAVE_DIR="/WEB-INF/upload/book/";//定义文件保存路径
    @Autowired
    private IBookService bookService;
    @RequestMapping("list")
    public ModelAndView list(){
        ModelAndView mav=new ModelAndView("back/admin/book/book_list");
        PageUtil pageUtil=new PageUtil("/pages/back/admin/book/list","图书名称:name|图书作者:author");
        mav.addAllObjects(bookService.List(pageUtil.getCurrentPage(),pageUtil.getLineSize(), pageUtil.getColumn(), pageUtil.getKeyword()));
        return mav;
    }

    @RequestMapping("add_input")
    public ModelAndView addInput(){
        ModelAndView mav=new ModelAndView("back/admin/book/book_add");
        mav.addAllObjects(bookService.preAdd());
        return mav;
    }
    @ErrorPage
    @RequestDataValidate("name:string;note:string;tprice:double;iid:long;photo:upload")
    @RequestMapping("add")
    public ModelAndView add(Book book, double tprice, @UploadFileType MultipartFile photo){
        String filename="";
        String msg="";
        try{
            filename=UploadFileUtils.save(photo,SAVE_DIR);

        }catch (Exception e){
            LOGGER.error("【BookAction】文件存储异常：{}",e.getMessage());
            msg="文件上传异常";
        }
        if(filename!=null && !("".equals(filename))){
            book.setCover(filename);

        }else{
            filename="nophoto.png";
            book.setCover(filename);
        }
        book.setPrice((int)tprice*100);//以分为单位存储价格
        ModelAndView mav=new ModelAndView("plugin/forward");
       if(bookService.add(book)){
            mav.addObject("msg","图书信息增加成功");
       }else{
            mav.addObject("msg","图书信息增加失败");
       }
       mav.addObject("url","/pages/back/admin/book/add_input");
       return mav;
    }
    @RequestMapping("get")
    @ResponseBody //前端采用的是ajax的请求方式
    public Object get(long bid){
       return bookService.get(bid);

    }
    @RequestMapping("edit_input")
    public ModelAndView editInput(long bid){
        ModelAndView mav=new ModelAndView("back/admin/book/book_edit");
        mav.addAllObjects(bookService.preEdit(bid));
        return mav;
    }
    @ErrorPage
    @RequestMapping("edit")
    @RequestDataValidate("bid:long;name:string;note:string;tprice:double;iid:long;photo:upload")
    public ModelAndView edit(Book book,double tprice,@UploadFileType MultipartFile photo){
        book.setPrice((int)tprice*100);
        if(photo!=null && photo.getSize()>0){//上传了文件，如果未上传文件视为验证通过
            if(UploadFileUtils.NO_PHOTO.equals(book.getCover())){
                //之前未上传图片
               try{
                   book.setCover(UploadFileUtils.save(photo,SAVE_DIR));
               }catch (Exception e){
                   LOGGER.error("文件存储错误：{}",e.getMessage());
               }
            }else{
              UploadFileUtils.save(photo,SAVE_DIR,book.getCover());
            }
        }
        ModelAndView mav = new ModelAndView("/plugin/forward");
        if (this.bookService.edit(book)) { // 业务调用
            mav.addObject("msg", "图书信息修改成功！");
        }else
        {
            mav.addObject("msg", "图书信息修改失败！");
        }
        mav.addObject("url", "/pages/back/admin/book/list");
        return mav;
    }

    @ErrorPage
    @RequestDataValidate("bid:long")
    @RequestMapping("delete")
    public ModelAndView delete(long bid){
        ModelAndView mav=new ModelAndView("plugin/forward");
        String cover=bookService.delete(bid);
        String msg="";
        if(StringUtils.hasLength(cover)){
            if(!UploadFileUtils.NO_PHOTO.equals(cover)){
                //该图书上传了封面图片
                if(!UploadFileUtils.delete(SAVE_DIR,cover)){
                    msg+="封面图片删除异常-";
                }
            }
            msg+="图书信息删除成功！";
        }else{
            msg+="图书信息删除异常";
        }
        mav.addObject("url","/pages/back/admin/book/list");
        mav.addObject("msg",msg);
        return mav;
    }
}
