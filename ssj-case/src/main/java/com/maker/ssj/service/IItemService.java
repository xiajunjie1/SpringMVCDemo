package com.maker.ssj.service;

import com.maker.ssj.po.Item;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;

import java.util.List;

@CacheConfig(cacheNames = "itemCache")//设置全局的缓存名称
public interface IItemService {
    @Cacheable("items") //缓存名称，非key值
    public List<Item> list();
    @CacheEvict("items") //SpringCache提供，清空缓存的操作
    public default void clearCache(){} //设计为default方法是因为不需要子类进行实现

    public boolean add(Item item);//新增分类

}
