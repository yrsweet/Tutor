<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/20
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学校家教服务系统</title>
    <style type="text/css">
        .center{
            text-align:center;
            margin-top: 60px;
        }
        .fon{
            font-size: 30px;
        }
        body{
            background: url("image/7.jpg");
            background-size: 100% 100%;
        }
        input {
            background-color: transparent;
            outline: none;
            color: black;
        }
    </style>
</head>
<body>
<div class="center">
    <h1 align="center">学校家教服务系统</h1>
    <p class="fon">设置工资及收费界面</p>
    <form method="post" action="m_dao.jsp">
        <input type="text" name="name" style="width: 300px;height: 50px" placeholder="请输入用户名："><br>
        <input type="text" name="salary" style="width: 300px;height: 50px" placeholder="请输入工资："><br>
        <input type="text" name="charge" style="width: 300px;height: 50px" placeholder="请输入课程费用："><br>
        <button type="submit">确认</button>
    </form>
</div>
</body>
</html>

