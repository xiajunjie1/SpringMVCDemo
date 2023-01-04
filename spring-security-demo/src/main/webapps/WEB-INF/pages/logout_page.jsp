<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head><title>用户注销成功</title></head>
<body>
    <h1>${msg}</h1>
    <h1>${param.invalidate ? "用户已被强制下线，请重新登陆":""}</h1>
    <a href="/login_page">重新登陆！</a>
</body>
</html>