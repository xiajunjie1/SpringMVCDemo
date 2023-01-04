<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head><title>SpringMVC开发框架</title></head>
    <body>
        【雇员信息】编号：${emp.empno}、名字：${emp.ename}、
            雇佣日期：<fmt:formatDate value="${emp.hiredate}" pattern="yyyy年MM月dd日"/><br/>
        【部门信息】编号：${emp.dept.deptno}、名称：${emp.dept.dname}、地点：${emp.dept.loc}
    </body>
</html>