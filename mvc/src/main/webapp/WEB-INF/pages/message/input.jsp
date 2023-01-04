<%@ page pageEncoding="UTF-8" %>

<html>
    <body>
        <form action="<%=request.getContextPath() %>/message/respresult" method="post">
            <label>输入信息：</label><input type="text" value="jayjxia" name="msg" />
            <br />
            <label>参数2：</label> <input type="text" value="it's test" name="message" />
            <br/>
            <label>日期：</label> <input type="date" value="2077-12-05" name="time" />
            <br/>
            <button type="submit">提交</button>
        </form>
    </body>
</html>