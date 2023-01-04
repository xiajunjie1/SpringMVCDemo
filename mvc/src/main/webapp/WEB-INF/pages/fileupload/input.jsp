<%@ page pageEncoding="UTF-8" %>

<html>
    <body>
        <form action="<%=request.getContextPath() %>/upload/get" method="post" enctype="multipart/form-data">
            <label>文件编号：</label><input type="text" value="23423324" name="id" />
            <br />
            <label>文件上传：</label> <input type="file"  name="photo" />
            <br/>

            <br/>
            <button type="submit">提交</button>
        </form>
    </body>
</html>