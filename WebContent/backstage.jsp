<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<title>jQuery背景切换注册登录模板</title>
<%
	String path = request.getContextPath();
%>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="<%=path%>/css/styleback.css" />
</head>
<body>

<div class="login-container">
	<h1>文西蛋糕后台管理系统</h1>
	
	<div class="connect">
		<p>欢迎进入</p>
	</div>
	
	<form action="backland" method="post" id="loginForm">
		<div>
			<input type="text" name="username" class="username" placeholder="用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="submit" type="submit">登 录</button>
	</form>



</div>

<script src="<%=path%>/js/jquery.minback.js"></script>
<script src="<%=path%>/js/common.js"></script>
<!--背景图片自动更换-->
<script src="<%=path%>/js/supersized.3.2.7.min.js"></script>
<script src="<%=path%>/js/supersized-init.js"></script>
<!--表单验证-->
<script src="<%=path%>/js/jquery.validate.min.js?var1.14.0"></script>

</body>
</html>