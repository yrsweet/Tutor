<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/14
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
    <style type="text/css">
        .center{
            text-align:center;
            margin-top: 50px;
        }
        .fon{
            font-size: 40px;
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
        .clear{
            opacity:0.3;
        }
    </style>
</head>
<body>

<div class="center">
    <p class="fon">注册界面</p>
    <p>请输入您的用户名和密码进行注册!</p>
    <form method="post" action="a_dao.jsp">
        用户名：<input type="text" name="name"  style="width: 300px;height: 50px" placeholder="请输入用户名：" > <br>
        密码：&nbsp;&nbsp;&nbsp;<input type="password" name="pwd" style="width: 300px;height: 50px" placeholder="请输入密码：" > <br>
        <button type="submit" style="width:80px;height:40px; font-size: 20px" class="clear">提交</button>
        <button type="reset" style="width:80px;height:40px; font-size: 20px" class="clear">重置</button>
        <br>
    </form>
</div>
</body>
</html>
