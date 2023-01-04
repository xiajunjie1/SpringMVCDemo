<%@ page pageEncoding="UTF-8" %>
<html>
<head>
<title>登录成功</title>
</head>
<body>
    <h1>用户登录成功</h1>
            <h2>用户信息：<%=session.getAttribute("user")%></h2>
            <h2>角色信息：<%=session.getAttribute("role")%></h2>
</body>
</html>