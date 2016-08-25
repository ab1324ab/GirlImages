<%@ page import="sever.tbuilt.lEItext.TheLogin" %>
<%@ page import="sever.tbuilt.lEItext.UserInfo" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/25
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  request.setCharacterEncoding("UTF-8");
    //解决中文乱码问题
    String name=request.getParameter("username");//拿到数字框的值
    String pwd=request.getParameter("password");
    UserInfo u=new UserInfo(name,pwd);//传入
    TheLogin t=new TheLogin();
    List<UserInfo> list=t.query(u);
    if (list.size()!=0){
        response.sendRedirect("../tables.jsp");
    }else{
        response.sendRedirect("../inde.html");
    }
%>