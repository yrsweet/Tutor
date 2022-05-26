<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/15
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.yr.dao.s_Dao"%>
<%@page import="com.yr.user.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert Student</title>
</head>
<body>
<%   //获取姓名密码和年龄
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    //创建User对象，赋值
    Student s=new Student();
    s.setName(name);
    s.setPwd(pwd);
    s_Dao sdao=new s_Dao();
    //调用sdao的方法实现插入功能
    int x=sdao.insert(s);
    if(x>=1){
        //转发，如果>1，跳转到success.jsp页面
        request.getRequestDispatcher("s_register_succ.jsp").forward(request, response);
    }
%>
</body>
</html>
