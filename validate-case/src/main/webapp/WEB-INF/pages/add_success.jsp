<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head><title>SSM实战手册</title></head>
<body>
<div>雇员信息增加成功！</div>
<c:if test="${flag}">

    <div>
        <li>雇员编号：${emp.empno}</li>
        <li>雇员姓名：${emp.ename}</li>
        <li>基本工资：${emp.sal}</li>
        <li>雇佣日期：<fmt:formatDate value="${emp.hiredate}" pattern="yyyy年MM月dd日"/></li>
        <li>角色配置：${emp.roles}</li>
        <li>雇员照片：<img src="/validate/upload/${photo}" /></li>
    </div>
</c:if>
</body>
</html>