<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Integer sum=(Integer) application.getAttribute("sum");
    if (sum==null){
        application.setAttribute("sum",0);
    }
    sum++;
    application.setAttribute("sum",sum);
%>
<!DOCTYPE html>
<html lang="en">
<link rel="SHORTCUT ICON" href="img/23.png"/>
    <head>
        <title>登录</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/unicorn.login.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
    <body>
        <div id="logo">
            <img src="img/logo.png" alt="" />
        </div>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="Biz/chuli.jsp" method="post"/>
				<p>学员信息管理系统&nbsp;被访问次数<%=sum%></p>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span><input type="text" placeholder="用户名"  name="username"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="密码" name="password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-recover">忘记密码？</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="登录" /></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical" />
				<p><br>请用一个注册的邮箱地址密码和账号会发送到这个邮箱</p>
				<div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-envelope"></i></span><input type="text" placeholder="邮箱地址" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-login">&lt; 返回</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="发送" /></span>
                </div>
            </form>
        </div>
        
        <script src="js/jquery.min.js"></script>  
        <script src="js/unicorn.login.js"></script> 
    </body>
</html>
