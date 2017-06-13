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
<title>显示文章</title>
<link rel="stylesheet" href="../theme/bootstrap.css">
<script src="../theme/jquery.js"></script>
<script src="../theme/bootstrap.js"></script>
<link
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
<style type="text/css">
.left {
	padding-left: 30px;
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
	<div class="container  nav">
		<!-- 导航栏 -->
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">${ sessionScope.username }个人博客</a>
			</div>
			<div class=" nav_href fa fa-sign-out">
				<a href="../info/indicate.jsp?id=2" onclick="return exit()"
					style="padding-left: 2px">退出</a>
			</div>
			<div class="fa fa-user-o nav_href">
				<a href="#" style="padding-left: 2px">${ sessionScope.username }</a>
			</div>
			<div class=" nav_href fa fa-plus">
				<a href="<%=request.getContextPath()%>/tag/new"
					style="padding-left: 2px">标签</a>
			</div>
			<div class=" nav_href fa fa-plus">
				<a href="<%=request.getContextPath()%>/blog/new"
					style="padding-left: 2px">文章</a>
			</div>
		</nav>
 		<div class="row">
			<div class="left">
				<h2>
					<a href="#">${ blogsInfo[0].title }</a>
				</h2>
				<div
					style="background-color: #888888; width: 105px; border-radius: 7px;">
					<div class="fa fa-tags left ">
						<font color="white" size="2">诗词歌赋</font>
					</div>
				</div>
				<p class="tag_size_padding">
					<label class="tag_color_padding">杜甫</label><label
						class="tag_color_padding">2017年1月1日&nbsp;10:10</label><a>编辑</a>
				</p>
				<div style="padding-left: 30px">
					<p class="con_size_padding">岱宗夫如何，齐鲁青未了。</p>
					<p class="con_size_padding">造化钟神秀，阴阳割昏晓。</p>
					<p class="con_size_padding">荡胸生层云，觉此如归聊。</p>
					<hr style="margin-top: 1px;">
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../js/exit.js">
		
	</script>
	<script type="text/javascript">
		var url = "../blog/view"; // 请求的地址
		var request = $.ajax(url, {
			method : "get", // HTTP 请求方法，常用的有 POST GET DELETE PUT
			cache : false, // 主要是针对 HTTP GET 请求，防止浏览器缓存 
		}).done(function(data, textStatus, jqXHR) {
			// 请求成功后，会跳转到这个方法中
			alert("获取文章成功！");
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 请求失败后，会跳转到这个方法中
			alert("error");
		}).always(function() {
			// 无论请求成功或失败，都会跳转到这个方法
			// 接口规范为：jqXHR.always(function( data|jqXHR, textStatus, jqXHR|errorThrown ) { })
			//  alert( "complete" );
		});
	</script>
</body>
</html>