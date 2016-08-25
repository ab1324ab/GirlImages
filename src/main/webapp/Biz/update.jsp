<%@ page import="sever.tbuilt.lEItext.Student" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/25
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Student student=new Student();
    request.setCharacterEncoding("UTF-8");
    //拿值
    String  StudentNo=request.getParameter("StudentNo");
    String  StudentName=request.getParameter("StudentName");//名字
    String  Sex=request.getParameter("Sex");
    String  GradeId=request.getParameter("GradeId");
    String  Phone=request.getParameter("Phone");
    String  Address=request.getParameter("Address");
    String  BornDate=request.getParameter("BornDate");
    String  Emall=request.getParameter("Emall");
    //赋值
    student.setStudentNo(StudentNo);
    student.setStudentName(StudentName);
    student.setSex(Integer.parseInt(Sex));//字符转int
    student.setGradeId(Integer.parseInt(GradeId));
    student.setPhone(Phone);
    student.setAddress(Address);
    //字符串转日期
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date date = null;
    try {
        date = format.parse(BornDate);
        student.setBornDate(date);
    } catch (ParseException e) {
        e.printStackTrace();
        System.out.println("日期错误");
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
zheli shi
</body>
</html>
