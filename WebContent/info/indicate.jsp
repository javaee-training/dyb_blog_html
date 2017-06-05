<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = "404";
	String btn = "";
	id = request.getParameter("id");
	String StrInfo = "";
	String nexturl = "";
	String nextbtninfo = "";
	switch (Integer.parseInt(id)) {
		case 1 :
			StrInfo = "未登录！";
			btn = "danger";
			nexturl = request.getContextPath()+"/user/login.jsp";
 			nextbtninfo = "去登录";
			break;
		case 2 :
			StrInfo = "注销成功！";
			btn = "success";
			nexturl = request.getContextPath()+"/user/login.jsp";
			session.invalidate();
 			nextbtninfo = "重新登录";
			break;
		case 3 :
			StrInfo = "注册成功！";
			btn = "success";
			nexturl = request.getContextPath()+"/user/login.jsp";
  			nextbtninfo = "登录";
			break;
		default :
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
</style>
<script>  
function myClick()  
{  
	window.location.href=" <%=nexturl%> ";
	}
</script>
</head>
<body>
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