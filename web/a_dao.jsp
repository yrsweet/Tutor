<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/15
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.yr.dao.a_Dao"%>
<%@page import="com.yr.user.Administrator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert administrator</title>
</head>
<body>
<%   //获取姓名密码和年龄
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    //创建User对象，赋值
    Administrator a=new Administrator();
    a.setName(name);
    a.setPwd(pwd);
    a_Dao adao=new a_Dao();
    //调用tdao的方法实现插入功能
    int x=adao.insert(a);
    if(x>=1){
        //转发，如果>1，跳转到success2.jsp页面
        request.getRequestDispatcher("a_register_succ.jsp").forward(request, response);
    }
%>
</body>
</html>
