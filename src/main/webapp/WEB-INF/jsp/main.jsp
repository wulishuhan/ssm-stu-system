<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%     String basePath = request.getScheme() + "://" + request.getServerName() + ":"
        + request.getServerPort() + request.getContextPath() + "/"; %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {


        })
    </script>
</head>
<body>
<div align="center">
    ${msg}
    <p>SSM整合开发--实现student表的操作</p>
    <img src="images/01.png" alt="">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td><a href="student/taddStudent.do">添加学生</a></td>
        </tr>
        <tr>
            <td><a href="student/tlistStudent.do">查询学生</a></td>
        </tr>
        <tr>
            <td><a href="student/tdeleteStudent.do">删除学生</a></td>
        </tr>
        <tr>
            <td><a href="student/tupdateStudent.do">修改学生</a></td>
        </tr>

    </table>
</div>

</body>
</html>
