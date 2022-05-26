<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/15
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册成功界面</title>
    <style type="text/css">
        .center{
            text-align:center;
            margin-top: 50px;
        }
        .fon{
            font-size: 40px;
        }
        .fon1{
            font-size: 20px;
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
<form method="post" action="a_check.jsp">
    <%
        request.setCharacterEncoding("UTF-8");
        String name = null;
        String pwd = null;
        if(request.getParameter("name")!=null && request.getParameter("pwd") != null)
        {
            name = request.getParameter("name");
            request.getSession().setAttribute("name",name);
            pwd = request.getParameter("pwd");
            request.getSession().setAttribute("pwd",pwd);
        }
    %>

    <div class="center">
        <p class="fon">注册成功界面</p>
        <p class="fon1">恭喜您已经注册成功 !</p>
        <p class="fon1">您的用户名是：<%=name%></p>
        <p class="fon1">您的密码是：<%=pwd%></p>
        <a href="a_login.jsp">返回登入界面</a>
    </div>

</form>
</body>
</html>

