<%@ page pageEncoding="UTF-8" %>
<%! public static final String ECHO_URL="/pages/message/echo"; %>
<form action="<%=ECHO_URL %>" method="post">
    <label>信息：</lable> <input type="text" name="msg" value="jayjxia" /><br/>
   <!--
        假如不加上以下的隐藏域，传递一个token值，那么提交后会403拒绝访问
        以下的name和token都是由SpringSecurity所生成的
   -->
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <button type="submit">发送</button>
</form>