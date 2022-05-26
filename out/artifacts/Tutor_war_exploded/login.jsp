<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/5
  Time: 22:02
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
    <h1 align="center">欢迎来到学校家教服务系统</h1>
    <p class="fon">登录界面</p>
    <form method="post" action="f_login.jsp">
        <input type="text" name="user" style="width: 300px;height: 50px" placeholder="请输入用户名："><br>
        <input type="password" name="pass" style="width: 300px;height: 50px" placeholder="请输入密码："><br>
        <p>如未注册，请先注册!</p><br>
        <a href="a_register.jsp" style="width: 300px;height: 50px">管理员</a>
        <a href="t_register.jsp" style="width: 300px;height: 50px">教师</a>
        <a href="s_register.jsp" style="width: 300px;height: 50px">学生</a><br>
        <button type="submit" value="login">登入</button>
    </form>
</div>
</body>
</html>