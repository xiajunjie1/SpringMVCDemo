<%@ page pageEncoding="UTF-8" %>
<%! public static final String POST_URL="/jay-login"; %>
<html>
    <head>
        <title>用户登录</title>
    </head>

    <body>
        <h2>用户登录</h2>
        <hr />
        <h2>${param.error ? "验证码错误":""}</h2>
        <form action="<%=POST_URL %>" method="post">
            <label>用户名：</label><input type="text" name="uname" value="xia" /><br/>
            <label>密码：</label><input type="password" name="pwd" /> <br/>
            <input type="checkbox"  value="true" id="rme" name="rme"  />记住我 <br/>
            <label>验证码：</label><input type="text" name="code" maxlength="4" size="4" /><img src="/captcha" />
            <button type="submit">提交</button> <button type="reset">重置</button>
        </form>
    </body>
</html>