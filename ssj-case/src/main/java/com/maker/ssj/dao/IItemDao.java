package com.maker.ssj.dao;

import com.maker.ssj.po.Item;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IItemDao extends JpaRepository<Item,Long> {
}
