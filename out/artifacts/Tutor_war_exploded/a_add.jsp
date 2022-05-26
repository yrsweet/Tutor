<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/23
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增添教师界面</title>
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
    <p class="fon">增添教师信息</p>
    <p>请输入教师信息!</p>
    <form method="post" action="t_dao.jsp">
        用户名：<input type="text" name="name" style="width: 300px;height: 50px" placeholder="请输入用户名：" > <br>
        密码：&nbsp;&nbsp;&nbsp;<input type="password" name="pwd" style="width: 300px;height: 50px" placeholder="请输入密码：" > <br>
        性别：&nbsp;&nbsp;&nbsp;<input type="text" name="sex" style="width: 300px;height: 50px" placeholder="请输入性别：" > <br>
        电话：&nbsp;&nbsp;&nbsp;<input type="tel" name="telephone" style="width: 300px;height: 50px" placeholder="请输入电话：" > <br>
        课程：&nbsp;&nbsp;&nbsp;<input type="text" name="course"  style="width: 300px;height: 50px" placeholder="请输入课程：" > <br>
        地址：&nbsp;&nbsp;&nbsp;<input type="text" name="address" style="width: 300px;height: 50px" placeholder="请输入地址：" > <br>
        开始时间：&nbsp;<input type="datetime-local" name="start" style="width: 300px;height: 50px" placeholder="请输入开始时间：" > <br>
        结束时间：&nbsp;<input type="datetime-local" name="end" style="width: 300px;height: 50px" placeholder="请输入结束时间：" > <br>
        <button type="submit" style="width:80px;height:40px; font-size: 20px" class="clear">提交</button>
        <button type="reset" style="width:80px;height:40px; font-size: 20px" class="clear">重置</button>
        <br>
    </form>
</div>
</body>
</html>


