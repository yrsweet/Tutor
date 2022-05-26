<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/20
  Time: 21:12
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
    <title>工资及费用查询</title>
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
<p class="fon">教师工资及收费信息表:</p><br>
<div class="center">
    <table border="" bgcolor="ccceee" width="650" align="center">
        <tr>
            <td>姓名</td>
            <td>工资</td>
            <td>课程费用</td>
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
                String sql="select * from money";
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next()){
        %>
        <tr>
            <td><%=rs.getString("name") %></td>
            <td><%=rs.getInt("salary") %></td>
            <td><%=rs.getInt("charge") %></td>
        </tr>
        <%
                }
            }catch (Exception ex){
                ex.printStackTrace();

            }
        %>
    </table>
    <a href="a_select.jsp" class="center">返回管理员端界面</a>
</div>
</body>
</html>
