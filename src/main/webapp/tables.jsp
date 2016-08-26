<%@ page import="sever.tbuilt.entity.ImplementationStudent" %>
<%@ page import="sever.tbuilt.lEItext.Student" %>
<%@ page import="java.util.List" %><%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2016/8/24
Time: 16:23
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="Biz/Sessionyanzheng.jsp"%>
<%
    Object name=session.getAttribute("name");
%>
<!DOCTYPE html>
<html lang="en">
<link rel="SHORTCUT ICON" href="img/23.png"/>
<head>
    <title>学员信息管理</title>
    <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/colorpicker.css" />
        <link rel="stylesheet" href="css/datepicker.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<style type="text/css">
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
	color: #005580;
}
a:active {
	text-decoration: none;
}
</style>
</head>
<body>


<div id="header">
    <h1><a href="./dashboard.html"></a></h1>
</div>


<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav btn-group">
        <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-user"></i> <span
                class="text"><%=name%></span></a></li>
        <li class="btn btn-inverse"><a title="" href="index.jsp"><i class="icon icon-share-alt"></i> <span
                class="text">退出</span></a></li>
    </ul>
</div>

<div id="sidebar">
    <a href="#" class="visible-phone"><i class="icon icon-th-list"></i>考试信息管理</a>
    <ul> 
        <li class="submenu active"><a href="#"><i class="icon icon-th-list"></i> <span>学员列表</span> <span class="label">3</span></a>
<ul>
<li class="active"><a href="tables.jsp">学员信息</a></li>
					</ul>
                    <ul>
<li class="active"><a href="xinzen.jsp">新增学员</a></li>
					</ul>
				</li>
        
        <li class="submenu active">
					<a href="#"><i class="icon icon-th-list"></i> <span>教员列表</span> <span class="label">3</span></a>
<ul>
<li class="active"><a href="Teachers.jsp">教员信息</a></li>
					</ul>
                    <ul>
<li class="active"><a href="#">新增教员</a></li>
					</ul>
				</li>
					
                    <li class="submenu active">
					<a href="course.jsp"><i class="icon icon-th-list"></i> <span>课程列表</span> <span class="label">3</span></a>
<ul>
<li class="active"><a href="course.jsp">课程信息</a></li>
					</ul>
                    <ul>
<li class="active"><a href="#">新增课程</a></li>
					</ul>
				</li>
                
       <li class="submenu active">
					<a href="#"><i class="icon icon-th-list"></i> <span>分数列表</span> <span class="label">3</span></a>
<ul>
<li class="active"><a href="score.jsp">学生分数</a></li>
					</ul>
                    <ul>
<li class="active"><a href="#">新增分数</a></li>
					</ul>
				</li>
    </ul>

</div>
<div id="content">
    <div id="content-header">
        <h1>学员信息管理</h1>
  </div>
    <div id="breadcrumb">
        <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>合众艾特</a>
        <a href="#" class="current">学员信息</a>
    </div>
   
<div class="container-fluid" id="zhongjian">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
                        <h5>学员信息列表</h5>
                    </div>
                    <div class="widget-content nopadding">
                      <table class="table table-bordered data-table">
                          <thead>
                            <tr>
                                <th width="15%">编号</th>
                                <th width="15%">微信号</th>
                                <th width="19%">姓名</th>
                                <th width="24%">性别</th>
                                <th width="20%">手机号</th>
                                <th width="22%">详细</th>

                            </tr>
                        </thead>
                            <tbody>
<!--table开始-->
<% ImplementationStudent student=new ImplementationStudent();
    List<Student> list=student.query();
    for (Student l:list) {
%>
                            <tr class="gradeU">
                                <td><%=l.getStudentNo()%></td>
                                <td><%=l.getLoginPwd()%></td>
                                <td><%=l.getStudentName()%></td>
                                <td><%=(l.getSex()==0)?'男':'女'%></td>
                                <td><%=l.getPhone()%></td>
                                <td><a href="xiangxi.jsp?id=<%=l.getStudentNo()%>"  target="_self">详细</a></td>
                            </tr>
 <%}%>
  <!--table结束 -->                       
    </tbody>
                      </table>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/bootstrap-colorpicker.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.form_common.js"></script>

</body>
</html>
