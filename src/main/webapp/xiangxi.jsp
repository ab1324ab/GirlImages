<%@ page import="sever.tbuilt.entity.ImplementationStudent" %>
<%@ page import="sever.tbuilt.lEItext.Student" %>
<%@ page import="java.util.List" %><%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2016/8/24
Time: 16:23
To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@include file="Biz/Sessionyanzheng.jsp" %>
<%
    Object name=session.getAttribute("name");
%>
<!DOCTYPE html>
<link rel="SHORTCUT ICON" href="img/23.png"/>
<html lang="en">
<head>
    <title>学员信息管理</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css"/>
    <link rel="stylesheet" href="css/uniform.css"/>
    <link rel="stylesheet" href="css/select2.css"/>
    <link rel="stylesheet" href="css/unicorn.main.css"/>
    <link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color"/>
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
}
a:active {
	text-decoration: none;
}
body {
	margin-right: 30px;
}
.bian{
	visibility:hidden;
	float: right;
	clear: none;
    width: 50px;
	}
.xian{
	visibility:visible;
	float: right;
	clear: none;
	width: 50px;
}
</style>
    <Script>
        function deletestu(StudentNo){
             var b=window.confirm("是否确认删除?");
            if(b==true){
             location="Biz/shanchu.jsp?StudentNo="+StudentNo;
            }
        }
		
function bian(StudentNo){
    document.getElementById("update").style.display="none";
    var a=document.getElementsByTagName("input");
	for(var i=0;i<a.length;i++){
	      a[i].className=".xian";
	}
	document.getElementById("update").innerText="保存";
    document.getElementById("update").href="Biz/update.jsp?StudentNo="+StudentNo;

}
    </Script>
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
        <h1>信息管理</h1>
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
                        <h5>学员信息</h5>
                    </div>
                    <div class="widget-content nopadding">
  <% String id=request.getParameter("id");
        ImplementationStudent imp=new ImplementationStudent();
        List<Student> list=imp.queryDange(id);
        for (Student l:list) {

 %>
<form name="form1" method="post" action="Biz/update.jsp?StudentNo=<%=l.getStudentNo()%>">
                    <table width="80%" height="401" align="center" class="table table-bordered data-table">
                          <thead>

<tr>
 <th width="12%" align="left" valign="middle">编号</th>
 <td width="31%" align="center" valign="middle"><%=l.getStudentNo()%>
</td>
 <td width="4%" rowspan="6" valign="top">头像</td>
 <td width="42%" rowspan="6" align="center" valign="middle"><div id="ssss"><img src="http://img1.2345.com/duoteimg/qqTxImg/2013/04/22/13667110938.jpg" width="313" height="231"></div></td>
   <th width="11%" rowspan="9" align="center" valign="middle">&nbsp;</th>
 </tr>
<tr>
 <th width="12%" align="left" valign="middle">微信号</th>
 <td align="center" valign="middle"><%=l.getLoginPwd()%>
  </td>
   </tr>
<tr>
 <th width="12%" align="left" valign="middle">姓名</th>
 <td align="center" valign="middle"><%=l.getStudentName()%>
   <input class="bian" type="text" name="StudentName" value="<%=l.getStudentName()%>" id="a"></td>
   </tr>
<tr>                                
 <th width="12%" align="left" valign="middle">性别</th>
 <td align="center" valign="middle"><%=(l.getSex()==0)?'男':'女'%>
   <input class="bian" type="text" name="Sex" value="<%=(l.getSex()==0)?'男':'女'%>"  id="a"></td>
   </tr>
<tr>                                
 <th width="12%" align="left" valign="middle">课程</th>
 <td align="center" valign="middle"><%=l.getGradeId()%>
   <input class="bian" type="text" name="GradeId" value="<%=l.getGradeId()%>" id="a"></td>
   </tr>
<tr>                                
 <th width="12%" align="left" valign="middle">手机号</th>
 <td align="center" valign="middle"><%=l.getPhone()%>
   <input class="bian" type="text" name="Phone" value="<%=l.getPhone()%>" id="a"></td>
   </tr>
<tr>
    <th width="12%" align="left" valign="middle">身份证号</th>
    <td colspan="3" align="center" valign="middle"><%=l.getIdentityCard()%>
        <input class="bian" type="text" name="IdentityCard" value="<%=l.getIdentityCard()%>" id="b"></td>
</tr>
<tr>                                
 <th width="12%" align="left" valign="middle">住址</th>
 <td colspan="3" align="center" valign="middle"><%=l.getAddress()%>
   <input class="bian" type="text" name="Address" value="<%=l.getAddress()%>" id="b"></td>
   </tr>
<tr>                                
 <th align="left" valign="middle">生日</th>
 <td colspan="3" align="center" valign="middle"><%=l.getBornDate()%>
   <input class="bian" type="text" name="BornDate" value="<%=l.getBornDate()%>" id="b"></td>
   </tr>
<tr>                                
 <th width="12%" align="left" valign="middle">邮箱</th>
 <td colspan="3" align="center" valign="middle"><%=l.getEmall()%>
   <input class="bian" type="text" name="Emall" value="<%=l.getEmall()%>"  id="b">
</td>
   </tr>
<tr>   
<th  >
<th colspan="2" align="right" valign="middle" ><a href="JavaScript:bian(<%=l.getStudentNo()%>)" class=".xian" id="update">修改</a>
  <input  class="bian" type="submit" name="button" id="button" value="提交">
<th width="42%"><a href="JavaScript:deletestu(<%=l.getStudentNo()%>)">删除</a></th>
  <th width="11%" align="center" valign="middle"><a href="tables.jsp">退出</a></th>
 </tr>
<% }%>


                          
                        </thead>
                            <tbody>

                       
    </tbody>
                      </table>
                      </form>
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
