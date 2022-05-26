<%--
  Created by IntelliJ IDEA.
  User: 86157
  Date: 2022/5/15
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="">
    <%
        request.setCharacterEncoding("UTF-8");
        String name=(String)session.getAttribute("name");
        String password=(String)session.getAttribute("pwd");
        String name1=request.getParameter("name");
        session.setAttribute("name1", name1);
        String password1=request.getParameter("pwd");
        session.setAttribute("password1", password1);
        if(name1.equals(name)&&password1.equals(password))
        {
            response.sendRedirect("a_select.jsp");
        }
        else
            response.sendRedirect("login_fail.jsp");
    %>
</form>
</body>
</html>
