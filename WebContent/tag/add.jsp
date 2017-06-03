<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>录入标签</title>
<link rel="stylesheet" href="../theme/bootstrap.css">
<script src="../theme/jquery.js"></script>
<script src="../theme/bootstrap.js"></script>
<link
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
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
</head>
<body>
	<div class="container nav">
		<nav class="navbar navbar-default ">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">个人博客</a>
			</div>
			<div class=" nav_href fa fa-sign-out">
				<a style="padding-left: 2px">退出</a>
			</div>
			<div class="fa fa-user-o nav_href">
				<a style="padding-left: 2px">张三</a>
			</div>
			<div class=" nav_href fa fa-plus">
				<a style="padding-left: 2px">标签</a>
			</div>
			<div class=" nav_href fa fa-plus">
				<a style="padding-left: 2px">文章</a>
			</div>
		</nav>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">录入标签</h3>
			</div>
			<div class="panel-body">
				<form role="form">
					<div class="form-group ">
						<div class="for_user">
							<label>标签：</label>
						</div>
						<input type="text" class="form-control" id="username"
							placeholder="标题">
					</div>
					<div style="float: right; padding-top: 10px;">
						<button type="button" class="btn btn-default">保存</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>