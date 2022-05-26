<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/20
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.yr.dao.m_Dao"%>
<%@page import="com.yr.user.Money"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert money</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    Integer salary=Integer.parseInt(request.getParameter("salary"));
    Integer charge=Integer.parseInt(request.getParameter("charge"));
    Money m=new Money();
    m.setName(name);
    m.setSalary(salary);
    m.setCharge(charge);
    m_Dao mdao=new m_Dao();
    int x=mdao.insert(m);
    if(x>=1){
        request.getRequestDispatcher("m_select.jsp").forward(request, response);
    }
%>
</body>
</html>