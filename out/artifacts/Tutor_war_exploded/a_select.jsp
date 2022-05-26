<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/20
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>教师查询</title>
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
    //设置字符编码，避免出现乱码
    request.setCharacterEncoding("UTF-8");
%>
<p class="fon">管理员端教师信息表:</p><br>
<div class="center">
    <table border="" bgcolor="ccceee" width="650" align="center">
        <tr>
            <td>姓名</td>
            <td>密码</td>
            <td>性别</td>
            <td>电话</td>
            <td>课程</td>
            <td>地址</td>
            <td>开始时间</td>
            <td>结束时间</td>
        </tr>
        <%
            String driverClass="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/tutor?characterEncoding=utf-8";
            String user="root";
            String password="abc123";
            Connection conn;
            try{
                Class.forName(driverClass);
                conn= DriverManager.getConnection(url, user, password);
                Statement stmt=conn.createStatement();
                String sql="select * from teacher";
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next()){
        %>
        <tr>
            <td><%=rs.getString("name") %></td>
            <td><%=rs.getString("pwd") %></td>
            <td><%=rs.getString("sex") %></td>
            <td><%=rs.getString("telephone") %></td>
            <td><%=rs.getString("course") %></td>
            <td><%=rs.getString("address") %></td>
            <td><%=rs.getString("start") %></td>
            <td><%=rs.getString("end") %></td>
        </tr>
        <%
                }
            }catch (Exception ex){
                ex.printStackTrace();

            }
        %>
    </table>
    <a href="a_delete.jsp" style="width: 300px;height: 50px">删除教师数据</a><br>
    <a href="m_insert.jsp" style="width: 300px;height: 50px">增加教师工资及收费数据</a><br>
    <a href="login.jsp" style="width: 300px;height: 50px">返回主页面</a><br>
</div>
</body>
</html>

