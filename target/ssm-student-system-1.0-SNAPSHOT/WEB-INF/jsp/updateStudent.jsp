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
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {


        })
    </script>
</head>
<body>
<div align="center">
    <p>学生修改页面</p>
    <form action="student/updateStudent.do" method="post">
        <tr>
            <td>id：</td>
            <td><input type="text" name="id" id="id"></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age" id="age"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="修改"></td>
        </tr>
    </form>
</div>

</body>
</html>
