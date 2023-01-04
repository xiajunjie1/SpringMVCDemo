<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authorize access="isAuthenticated()">
<!--当前用户为认证用户 -->
    <h1>登录用户名：<security:authentication property="principal.username" /></h2>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
   <!--当前用户有ADMIN权限 -->
    <h1>该用户拥有”ADMIN“最高系统管理权限！</h1>
</security:authorize>