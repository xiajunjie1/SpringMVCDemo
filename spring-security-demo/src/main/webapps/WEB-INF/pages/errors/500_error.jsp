<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>拦截器实例</title>
    </head>
    <body>
        <h1>对不起，出现错误！</h1>
        <c:forEach items="${errors}" var="error">
            <li>
                <span style="font-size:30px">${error.key}=${error.value}</span>
            </li>
        </c:forEach>


    </body>
</html>