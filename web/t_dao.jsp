<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/5
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.yr.dao.t_Dao"%>
<%@page import="com.yr.user.Teacher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert teacher</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    String sex=request.getParameter("sex");
    String telephone=request.getParameter("telephone");
    String course=request.getParameter("course");
    String address=request.getParameter("address");
    String start=request.getParameter("start");
    String end=request.getParameter("end");
    //创建User对象，赋值
    Teacher t=new Teacher();
    t.setName(name);
    t.setPwd(pwd);
    t.setSex(sex);
    t.setTelephone(telephone);
    t.setCourse(course);
    t.setAddress(address);
    t.setStart(start);
    t.setEnd(end);
    t_Dao tdao=new t_Dao();
    //调用tdao的方法实现插入功能
    int x=tdao.insert(t);
    if(x>=1){
        //转发，如果>1，跳转到success2.jsp页面
        request.getRequestDispatcher("t_register_succ.jsp").forward(request, response);
    }
%>
</body>
</html>




