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
    <p>学生添加页面</p>
    <form action="student/addStudent.do" method="post">
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="注册"></td>
        </tr>
    </form>
</div>

</body>
</html>
