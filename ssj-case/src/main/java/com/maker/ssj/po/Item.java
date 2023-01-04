package com.maker.ssj.po;

import org.checkerframework.checker.interning.qual.InternedDistinct;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
public class Item implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)//id自增长
    private Long iid;
    private String name;
    private String note;

    public String getName() {
        return name;
    }

    public String getNote() {
        return note;
    }

    public Long getIid() {
        return iid;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setIid(Long iid) {
        this.iid = iid;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
