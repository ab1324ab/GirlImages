<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/26
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%
    Object w=session.getAttribute("name");
    if (w==null){
        response.sendRedirect("../index.jsp");
        return;
    }
%>

