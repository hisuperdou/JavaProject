<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>吉祥蛋糕店登陆</title>
	<% String path=request.getContextPath(); %>
	<link rel="stylesheet" href="<%=path %>/css/style1.css">
	<link href="<%=path %>/css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
-->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Sign In And Sign Up Forms  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script src="<%=path %>/js/jquery.min1.js"></script>
<script src="<%=path %>/js/jquery.magnific-popup.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=path %>/js/modernizr.custom.53451.js"></script> 
 <script>
//取出传回来的参数error并与yes比较
 var errori ='<%=request.getParameter("error")%>';
 if(errori=='yes'){
  alert("登录失败!");
 }
 
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
</script>


		
</head>
<body>
	<h1 style="color:pink" >达文西蛋糕店登陆</h1>
	<div class="w3layouts">
		<div class="signin-agile">.
		
		
			<h2>登录</h2>
			<form action="land" method="post">
				<input type="text" name="username" class="name" placeholder="用户名" required="">
				<input type="password" name="password" class="password" placeholder="密码" required="">
				<ul>
					<li>
						<input type="checkbox" id="brand1" value="">
						<label for="brand1"><span></span>记住密码</label>
					</li>
				</ul>
				<a href="#">忘记密码?</a><br>
				<div class="clear"></div>
				<input type="submit" value="登录"/>
			</form>
		</div>
		<div class="signup-agileinfo">
			<h3>文西糕点</h3>
			<p>达文西蛋糕店主营点心、蛋糕、面包。店内环境温馨雅致，琳琅满目的面包、蛋糕，品种丰富多样，新鲜美味。每一个糕点都是上等选材经过细心烘烤而成的，口感细腻，处处散发着香醇的感觉，力求把健康、美味、营养、高品质的产品奉献给大家
     </p>
			<div class="more">
				<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay="50ms" href="#small-dialog">点击注册</a>				
			</div>
		</div>
		<div class="clear"></div>
	    </div>
	
	
	
	
	
	<div class="footer-w3l">
		<p class="agileinfo"> 终极蛋糕店，给你带来非凡享受  <a href="https://baike.baidu.com/item/%E8%BE%BE%E9%97%BB%E8%A5%BF/5833597?fr=aladdin/" target="_blank">点我了解详情</a>
        </p>
	</div>
	<div class="pop-up"> 
	<div id="small-dialog" class="mfp-hide book-form">
		<h3>注册表单 </h3>
			<form action="regist" method="post">
				<input type="text" name="username" placeholder="用户名" required=""/>
				
				<input type="password" name="password1" class="password" placeholder="密码" required=""/>
				<input type="password" name="password2" class="password" placeholder="重复密码" required=""/>					
				<input type="submit" value="点击注册">
			</form>
	</div>
</div>	
<body>
</html>


