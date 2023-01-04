package com.maker.service;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.access.prepost.PreFilter;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.security.RolesAllowed;
import java.util.List;

public interface IAdminService { //接口方法上直接定义所需要的注解
    //仅有拥有ADMIN权限（角色）的用户可以调用此方法
    @PreAuthorize("hasRole('ADMIN')") //业务调用之前进行授权检查，注解中的字符串为SpEL表达式
    public boolean add();
    //同时拥有ADMIN和SYSTEM权限的用户可以调用此方法
    @PreAuthorize("hasRole('ADMIN') AND hasRole('SYSTEM')")
    public boolean edit();

    //过滤注解，只有传入的参数中包含xia的内容的参数才会被传到业务层方法
    @PreFilter(filterTarget = "ids",value="filterObject.contains('xia')")
    public Object delete( List<String> ids);
    @Secured({"ROLE_ADMIN","ROLE_SYSTEM"}) //拥有ADMIN或SYSTEM权限的用户才能访问
    public Object get(String username);
    @RolesAllowed({"SYSTEM","ADMIN"}) //拥有ADMIN或SYSTEM权限的用户才能访问，JSR-250标准注解
    public Object list();

}
