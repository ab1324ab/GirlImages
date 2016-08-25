<%@ page import="sever.tbuilt.entity.ImplementationStudent" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/25
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   String s=request.getParameter("StudentNo");
    ImplementationStudent i=new ImplementationStudent();
    i.delete(s);
    response.sendRedirect("../tables.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
我是处理页面
</body>
</html>
