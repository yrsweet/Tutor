<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/24
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改教师信息</title>
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
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    //String name = null;
%>
<%
    String driverClass="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/tutor?characterEncoding=utf-8";
    String user="root";
    String password="abc123";
        try{
        Class.forName(driverClass);
        conn= DriverManager.getConnection(url, user, password);
        String name=request.getParameter("name");
        String sql="select * from teacher where name='"+name+"'";
        pst = conn. prepareStatement(sql);
        rs = pst.executeQuery ();
        if ( rs.next()){
%>
<div class="center">
    <p class="fon">修改教师信息界面</p>
    <form method="post" action="t_doupdate.jsp?name=<%=rs.getString("name")%>">
        姓名：&nbsp;&nbsp;&nbsp;<input type="text" name="name" style="width: 300px;height: 50px" placeholder="请输入姓名：" > <br>
        密码：&nbsp;&nbsp;&nbsp;<input type="password" name="pwd" style="width: 300px;height: 50px" placeholder="请输入密码：" > <br>
        性别：&nbsp;&nbsp;&nbsp;<input type="text" name="sex" style="width: 300px;height: 50px" placeholder="请输入性别：" > <br>
        电话：&nbsp;&nbsp;&nbsp;<input type="tel" name="telephone" style="width: 300px;height: 50px" placeholder="请输入电话：" > <br>
        课程：&nbsp;&nbsp;&nbsp;<input type="text" name="course"  style="width: 300px;height: 50px" placeholder="请输入课程：" > <br>
        地址：&nbsp;&nbsp;&nbsp;<input type="text" name="address" style="width: 300px;height: 50px" placeholder="请输入地址：" > <br>
        开始时间：&nbsp;<input type="datetime-local" name="start" style="width: 300px;height: 50px" placeholder="请输入开始时间：" > <br>
        结束时间：&nbsp;<input type="datetime-local" name="end" style="width: 300px;height: 50px" placeholder="请输入结束时间：" > <br>
        <button type="submit" value="">确认</button>
    </form>
    <%
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
    %>
</div>
</body>
