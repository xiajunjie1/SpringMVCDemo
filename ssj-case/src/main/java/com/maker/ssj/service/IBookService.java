package com.maker.ssj.service;

import com.maker.ssj.po.Book;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

public interface IBookService {
    /**
     * 分页查询
     * return 包含当前查询的全部内容的集合以及总记录数，总页数等信息
     * key = allData、value = 全部图书信息集合（List集合）
     * key = allRecorders、value = 数据匹配的行数（COUNT()函数统计结果）
     * key = allPages、value = 总页数
     * key = allItem、value = 全部的分类数据信息（Map集合），用于显示分类的名称
     * */
    public Map<String ,Object> List(int currentPage,int lineSize,String colum,String keyword);

    public Map<String,Object> preAdd();
    public boolean add(Book book);
    //根据id查询书籍信息
    public Map<String,Object> get(Long bid);

    public Map<String,Object> preEdit(long bid);

    public boolean edit(Book book);

    public String delete(long bid);
}
