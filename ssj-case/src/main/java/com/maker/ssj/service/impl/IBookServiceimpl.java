package com.maker.ssj.service.impl;

import com.maker.ssj.dao.IBookDao;
import com.maker.ssj.dao.IItemDao;
import com.maker.ssj.po.Book;
import com.maker.ssj.service.IBookService;
import com.maker.ssj.service.IItemService;
import com.maker.ssj.service.abs.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Service
public class IBookServiceimpl extends AbstractService implements IBookService {
    //用来查询分类的信息，使用业务层查询是因为有缓存
    @Autowired
    private IItemService iItemService;
    @Autowired
    private IBookDao bookDao;
    @Autowired
    private IItemDao itemDao;
    @Override
    public Map<String, Object> List(int currentPage, int lineSize, String colum, String keyword) {
        Map<String,Object>result=new HashMap<>();
        Pageable pageable = PageRequest.of(currentPage-1,lineSize);
        Page<Book> page=null;//保存查询的结果
        if(super.checkEmpty(colum,keyword)){
            //需要模糊查询
            Book book=new Book();
            super.setObjectProperty(book,colum,keyword);
            ExampleMatcher exampleMatcher=ExampleMatcher.matching()
                    .withMatcher(colum,matcher -> matcher.contains());//根据指定字段进行模糊查询
            Example<Book> example=Example.of(book,exampleMatcher);
            page=this.bookDao.findAll(example,pageable);

        }
        else{
            page=bookDao.findAll(pageable);
        }
        result.put("allRecords",page.getTotalElements());
        result.put("allPages",page.getTotalPages());
        result.put("allData",page.getContent());//获取图书信息
        Map<Long,String> items=new HashMap<>();//保存item信息，key为id，value为item名
        this.iItemService.list().forEach((item)->{
            items.put(item.getIid(),item.getName());
        });
        result.put("allItems",items);
        return result;
    }
    /**
     * 进入新增页面要传入分类参数，此分类由IItemService进行查询并返回结果
     * */
    @Override
    public Map<String, Object> preAdd() {
        Map<String,Object> result=new HashMap<>();
         result.put("allItems",iItemService.list());
        return result;
    }

    @Override
    public boolean add(Book book) {
        return bookDao.save(book).getBid()!=null;
    }

    @Override
    public Map<String, Object> get(Long bid) {
       Book book=  bookDao.findById(bid).get();
        Map<String,Object> result=new HashMap<>();
        result.put("item",this.itemDao.findById(book.getIid()).get());
        result.put("book",book);

        return result;
    }
    /**
     * 加载Item信息
     * */
    @Override
    public Map<String, Object> preEdit(long bid) {
        Map<String,Object> result=new HashMap<>();
        result.put("allItems",iItemService.list());
        result.put("book",bookDao.findById(bid).get());
        return result;
    }

    @Override
    public boolean edit(Book book) {
        return bookDao.save(book).getBid()!=null;
    }
    /**
     * 图书信息的物理删除功能
     * 返回值为图书封面的名称，为了方便删除掉图书封面图片
     * */
    @Override
    public String delete(long bid) {
        Optional<Book> optionalBook=bookDao.findById(bid);
        if(optionalBook.isPresent()){
            Book book=optionalBook.get();//获取需要删除的Book对象
            bookDao.delete(book);
            return book.getCover();
        }
        return null;
    }
}
