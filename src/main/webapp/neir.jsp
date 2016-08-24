<%@ page import="sever.tbuilt.entity.ImplementationStudent" %>
<%@ page import="sever.tbuilt.lEItext.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/24
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
                                <td><a href="www.baidu.com" target="content">详细</a></td>
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
</body>
</html>
