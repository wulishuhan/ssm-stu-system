<%--
  Created by IntelliJ IDEA.
  User: shuhan
  Date: 2020/7/21
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
        stuinfo();
        })
        function stuinfo() {
            $.ajax({
                url:"student/queryStudent.do",
                type:"post",
                dataType:"json",
                success:function (resp) {
                    $("#stubody").html("");
                    $.each(resp,function (i,n) {
                    $("#stubody").append("<tr>")
                        .append("<td>"+n.id+"</td>")
                        .append("<td>"+n.name+"</td>")
                        .append("<td>"+n.age+"</td>")
                        .append("</tr>")
                    })
                }
            })
        }
    </script>
</head>

<body>
<div align="center">
    <p>查询学生信息</p>
    <table>
        <thread>
            <tr>
                <td>id</td>
                <td>姓名</td>
                <td>年龄</td>
            </tr>
        </thread>
        <tbody id="stubody">

        </tbody>
    </table>
</div>

</body>
</html>
