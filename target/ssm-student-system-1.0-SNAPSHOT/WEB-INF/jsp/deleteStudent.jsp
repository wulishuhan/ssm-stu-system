<%--
  Created by IntelliJ IDEA.
  User: shuhan
  Date: 2020/7/21
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%     String basePath = request.getScheme() + "://" + request.getServerName() + ":"
        + request.getServerPort() + request.getContextPath() + "/"; %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>
<div align="center">
    <p>学生删除页面</p>
    <form action="student/deleteStudent.do" method="post">
        <tr>
            <td>name：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="删除"></td>
        </tr>
    </form>
</div>

</body>
</html>
