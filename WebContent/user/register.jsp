<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>博客登录</title>
<link rel="stylesheet" href="../theme/bootstrap.css">
<script src="../theme/jquery.js"></script>
<script src="../theme/bootstrap.js"></script>
<style type="text/css">
.nav_href {
	padding-top: 15px;
	padding-left: 15px;
	padding-right: 15px;
	float: right;
}

.nav {
	width: 96%;
	border-radius: 5px;
	margin: 0 auto;
}

.in {
	padding-top: 15px;
	padding-buttom: 15px;
}

.inputlabel {
	float: left;
}

.for_user {
	float: left;
}

.sub_color {
	color: 337ab7;
}
</style>
</head>
<body style="text-align: center;">
 		<!-- 导航栏 -->
		<nav class="navbar navbar-default nav">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">个人博客</a>
				</div>
				<a class="nav_href" href="register.jsp">注册</a> <a class="nav_href" href="login.jsp">登录</a>
			</div>
		</nav>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
				<div class="alert alert-danger in" id="username_tip" style="visibility: hidden">错误！请进行一些更改。</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title ">注册您的账户</h3>
					</div>
					<div class="panel-body">
						<form role="form" action="registerAction" method="post">
							<div class="form-group ">
								<div class="for_user">
									<label>账号：</label>
								</div>
								<input type="text" class="form-control" id="username" placeholder="请输入账号">
							</div>
							<div class="form-group">
								<div class="for_user">
									<label>密码：</label>
								</div>
								<input type="text" class="form-control" id="password" placeholder="请输入密码">
							</div>
							<div class="sub_color in">
								<input type="submit" style="width: 200px; background: url(../images/button.jpg); color: white; margin: 0 auto;" class="btn" value="注册" onclick="checkName()"></input>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-xs-4"></div>
		</div>
 	<script type="text/javascript">
 function checkName(){
	 var username_tip = document.getElementById("username_tip");
 	 var checkNameResult = document.getElementById("username").value;
 		if(checkNameResult.trim().length<6){
			username_tip.style.visibility="visible";
 			 
		}else{
 			}
	 
	}
	
  </script>
</body>
</html>