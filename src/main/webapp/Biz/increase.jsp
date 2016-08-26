<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="sever.tbuilt.lEItext.Student" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="sever.tbuilt.entity.ImplementationStudent" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/26
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Student student=new Student();
    request.setCharacterEncoding("UTF-8");
    //拿值
    String  LoginPwd=request.getParameter("LoginPwd");
    String  StudentName=request.getParameter("StudentName");//名字
    String  Sex=request.getParameter("Sex");
    String  GradeId=request.getParameter("GradeId");
    String  Phone=request.getParameter("Phone");
    String  Address=request.getParameter("Address");
    String  BornDate=request.getParameter("BornDate");
    String  Emall=request.getParameter("Emall");
    String  IdentityCard= request.getParameter("IdentityCard");
    //赋值
    //student.setStudentNo(StudentNo);
    student.setStudentName(StudentName);//名字
    student.setSex((Sex.equals("男"))?0:1);//字符转int
    student.setGradeId(Integer.parseInt(GradeId));//字符转int
    student.setPhone(Phone);
    student.setAddress(Address);
    student.setEmall(Emall);
    student.setIdentityCard(IdentityCard);
    student.setLoginPwd(LoginPwd);
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
    ImplementationStudent imp=new ImplementationStudent();
    int i=imp.increase(student);
    if (i!=0){
        out.print("<Script>alert(\"增加成功!\")</Script>");
        response.sendRedirect("../tables.jsp");
    }else{
        out.print("<Script>alert(\"增加失败!\")</Script>");
        response.sendRedirect("../tables.jsp");
    }
    //RequestDispatcher rd=request.getRuquestDispatcher("../tables.jsp").forward(request,response);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
