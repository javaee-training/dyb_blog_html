<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- JSTL 核心标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JSTL 函数标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- JSTL 国际化即格式化文本标签 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../theme/bootstrap.css">
<script src="../theme/jquery.js"></script>
<script src="../theme/bootstrap.js"></script>
<title>关于博客</title>
</head>
<body>
	<!-- 导航栏 -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="rows">
			<div class="col-md-10">
				<h4>个人博客</h4>
			</div>
			<div class="col-md-2">
				<h5>
					<a href="register.jsp">注册</a>&nbsp; &nbsp; &nbsp; &nbsp; <a href="login.jsp">登录</a>
				</h5>
			</div>
		</div>
	</nav>
</body>
</html>