package com.maker.ssj.dao;

import com.maker.ssj.po.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IBookDao extends JpaRepository<Book,Long> {
}
