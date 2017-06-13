<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- JSTL 核心标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JSTL 函数标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- JSTL 国际化即格式化文本标签 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String id = "404";
	String btn = "";
	id = request.getParameter("id");
	if (id == null) {
		id = "404";
	}
	String StrInfo = "";
	String nexturl = "";
	String nextbtninfo = "";
	switch (Integer.parseInt(id)) {
		case 1 :
			StrInfo = "未登录！";
			btn = "danger";
			nexturl = request.getContextPath() + "/user/login.jsp";
			nextbtninfo = "去登录";
			break;
		case 2 :
			StrInfo = "注销成功！";
			btn = "success";
			nexturl = request.getContextPath() + "/user/login.jsp";
			session.invalidate();
			nextbtninfo = "重新登录";
			break;
		case 3 :
			StrInfo = "注册成功！";
			btn = "success";
			nexturl = request.getContextPath() + "/user/login.jsp";
			nextbtninfo = "登录";
			break;
		case 4 :
			StrInfo = "文章添加成功！";
			btn = "success";
			nexturl = request.getContextPath() + "/blog/view.jsp";
			nextbtninfo = "查看文章";
			break;
		default :
			StrInfo = "404";
			btn = "danger";
			nexturl = request.getContextPath() + "/user/login.jsp";
			nextbtninfo = "登录";
			break;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../theme/bootstrap.css">
<script src="../theme/jquery.js"></script>
<script src="../theme/bootstrap.js"></script>

<title>状态信息</title>
<style type="text/css">
.left {
	padding-left: 15px;
	padding-right: 15px;
}

.nav_href {
	padding-top: 15px;
	padding-left: 15px;
	padding-right: 15px;
	float: right;
}

.con_size_padding {
	font-size: 16px;
}

.tag_size_padding {
	font-size: 14px;
}

.tag_color_padding {
	font-size: 14px;
	color: #888888;
	padding-right: 15px;
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

.center {
	text-align: center;
}

.button_right {
	padding_right: 10px
}
</style>
<script>  
function myClick()  
{  
	window.location.href=" <%=nexturl%>";
	}
</script>
</head>
<body>
	<div class="container nav">
		<!-- 导航栏 -->
		<nav class="navbar navbar-default ">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">${ session==null?"":sessionScope.username }个人博客</a>
			</div>
			<div class=" nav_href fa fa-sign-out">
				<a href="../info/indicate.jsp?id=2" onclick="return exit()"
					style="padding-left: 2px">退出</a>
			</div>
			<div class="fa fa-user-o nav_href">
				<a href="#" style="padding-left: 2px">${ session==null?"个人中心":sessionScope.username }</a>
			</div>
			<div class=" nav_href fa fa-plus">
				<a href="../tag/add.jsp" style="padding-left: 2px">标签</a>
			</div>
			<div class=" nav_href fa fa-plus">
				<a href="../blog/add.jsp" style="padding-left: 2px">文章</a>
			</div>
		</nav>
	 
	</div>
	<div id="container">
		<div id="header"></div>
		<div id="page" class="clearfix">
			<br>
			<h1 align="center">
				<%=StrInfo%></h1>
			<br> <br> <br>
			<div align="center">
				<button type="button" class="btn btn-<%=btn%>" onclick="myClick()"><%=nextbtninfo%></button>
			</div>
		</div>
		<div id="footer"></div>
	</div>
</body>
</html>