<%@ page pageEncoding="UTF-8" %>

<html>
    <body>
        <form action="<%=request.getContextPath() %>/emp/add" method="post">
            <label>雇员编号：</label><input type="text" value="1001" name="empno" />
            <br />
            <label>雇员姓名：</label> <input type="text" value="jayjxia" name="ename" />
            <br/>
            <label>雇佣日期：</label> <input type="date" value="2077-12-05" name="hiredate" />
            <br/>
            <label>部门编号</label> <input type="text" name="dept.deptno" value="10" /> <br/>
            <label>部门名称</label> <input type="text" name="dept.dname" value="研发部" />
            <label>部门位置</label> <input type="text" name="dept.loc" value="武汉" />
            <button type="submit">提交</button> &nbsp; <button type="reset">重置</button>
        </form>
    </body>
</html>