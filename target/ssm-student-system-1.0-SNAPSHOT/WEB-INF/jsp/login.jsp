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
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
        })

    </script>
</head>
<body>
<div align="center">
    ${msg}
    <p>用户登录页面</p>
    <form action="user/loginUser.do" method="post">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"></td>
            <td><a href="user/register.do">注册</a></td>
        </tr>
    </form>

</div>

</body>
</html>
