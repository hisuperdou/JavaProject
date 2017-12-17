<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	String path = request.getContextPath();
%>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/buttons.css" />

 <style type="text/css">
  div{position: relative;}
  div img{width: 100px;height: 100px;}
  .div11{position: absolute;width: 100px;height: 100px;animation: myfirst 5s;
-moz-animation: myfirst 3s;  /* Firefox */
-webkit-animation: myfirst 3s;  /* Safari 和 Chrome */
-o-animation: myfirst 3s;top: 0;background:#fff;left:0;}
@keyframes myfirst
{
0%   {left: 0;}

100% {left:100px;}
}

@-moz-keyframes myfirst /* Firefox */
{
0%   {left: 0;}

100% {left:100px;}
}

@-webkit-keyframes myfirst /* Safari 和 Chrome */
{
0%   {left: 0;}

100% {left:100px;}
}

@-o-keyframes myfirst /* Opera */
{
0%   {left: 0;}

100% {left:100px;}
}
  </style>
</head>
<body>
您已支付成功，点击返回回到首页！！！！！！
 <div>
    <img src="<%=path%>/images/duihao.png"/>
    <div class="div11"></div>
  </div>
  <div style="text-align:center;">

</div>
<div>
<a href="<%=path%>/message.action/showlist" class="button green medium">返回</a>
</div>

</body>
</html>