package com.maker.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class Emp {
    private Long empno;
    private String ename;
    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date hiredate;
    private Dept dept;

    public Emp(Long empno, String ename, Date hiredate, Dept dept) {
        this.empno = empno;
        this.ename = ename;
        this.hiredate = hiredate;
        this.dept = dept;
    }

    public Emp(){

    }

    public Long getEmpno() {
        return empno;
    }

    public void setEmpno(Long empno) {
        this.empno = empno;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public Date getHiredate() {
        return hiredate;
    }

    public void setHiredate(Date hiredate) {
        this.hiredate = hiredate;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }
}
