<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/24
  Time: 11:46
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
    int rs=0;
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    String sex=request.getParameter("sex");
    String telephone=request.getParameter("telephone");
    String course=request.getParameter("course");
    String address=request.getParameter("address");
    String start=request.getParameter("start");
    String end=request.getParameter("end");
    String driverClass="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/tutor?characterEncoding=utf-8";
    String user="root";
    String password="abc123";
    Connection conn;
    try{
        Class.forName(driverClass);
        conn= DriverManager.getConnection(url, user, password);
        PreparedStatement pst=null;
        String sql="update teacher set pwd='"+ pwd + "',sex='"+ sex + "',telephone='"+ telephone + "',course='"+ course + "',address='"+ address + "',start='"+ start + "',end='"+ end + "'where name='"+name+"'";
        pst=conn.prepareStatement(sql);
        rs=pst.executeUpdate();
        if(rs!=0){
            System.out.println("修改成功");
            request.getRequestDispatcher("t_select.jsp").forward(request,response);
        }
%>
<%

    }
    catch(Exception e){
        out.println(e);
    }

%>
</body>
</html>