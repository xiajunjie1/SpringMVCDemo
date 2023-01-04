<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head><title>SSM实战手册</title></head>
<body>

<form action="<%=request.getContextPath() %>/pages/emp/add" method="post" enctype="multipart/form-data">
    雇员编号：<input type="text" name="empno" value="7369"/>${errors['empno']}<br/>
    雇员姓名：<input type="text" name="ename" value="夏"/>${errors['ename']}<br/>
    基本工资：<input type="text" name="sal" value="2450.79"/>${errors['sal']}<br/>
    雇佣日期：<input type="date" name="hiredate" value="1996-01-19"/>${errors['hiredate']}<br/>
    角色配置：<input type="checkbox" name="roles" value="news"/>新闻管理
               <input type="checkbox" name="roles" value="system" checked/>系统管理
               <input type="checkbox" name="roles" value="message" checked/>消息管理
                ${errors['roles']}<br/>
   雇员照片：<input type="file" name="photo" />${errors['photo']}<br/>
    <button type="submit">增加</button><button type="reset">重置</button>
</form>
</body>
</html>