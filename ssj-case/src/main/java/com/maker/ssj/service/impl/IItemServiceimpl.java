package com.maker.ssj.service.impl;

import com.maker.ssj.dao.IItemDao;
import com.maker.ssj.po.Item;
import com.maker.ssj.service.IItemService;
import com.maker.ssj.service.abs.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IItemServiceimpl extends AbstractService implements IItemService {
    @Autowired
    private IItemDao dao;
    @Override
    public List<Item> list() {
        return dao.findAll();
    }

    @Override
    public boolean add(Item item) {
        //JPA中，由于设置的ID为自动增长，所以在进行新增后可以立刻获取到新增项的ID
        return dao.save(item).getIid()!=null;//获取到了新增ID，代表新增成功
    }
}
