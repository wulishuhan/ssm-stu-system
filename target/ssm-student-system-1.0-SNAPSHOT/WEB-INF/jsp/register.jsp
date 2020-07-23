<%--
  Created by IntelliJ IDEA.
  User: shuhan
  Date: 2020/7/23
  Time: 15:45
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
    <p>用户注册页面</p>
    <form action="user/addUser.do" method="post">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="注册"></td>
        </tr>
    </form>
</div>

</body>
</html>
