<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>home</title>

<!-- Custom Theme files -->
<%
	String path = request.getContextPath();
%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Yummy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //Custom Theme files -->
<link href="<%=path%>/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="<%=path%>/css/style.css" type="text/css" rel="stylesheet"
	media="all">
<link href="<%=path%>/css/form.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- js -->
<script src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="<%=path%>/js/simpleCart.min.js">
	
</script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript"
	src="<%=path%>/js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" id="sourcecode">
	$(function() {
		$('.scroll-pane').jScrollPane();
	});
</script>



<script type="text/javascript">
	function topage(currentpage) {
		var form = document.forms[0];
		form.currentpage.value = currentpage;
		form.submit();
	}
</script>








<!-- //the jScrollPane script -->
<script type="text/javascript" src="<%=path%>/js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->
</head>

<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand">
						<a href="#">Da Vinci</a>
					</h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="<%=path%>/message.action/showlist" class="active">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">生日蛋糕<b class="caret"></b></a></li>
						<li class="dropdown grid"><a href="#"
							class="dropdown-toggle list1" data-toggle="dropdown">婚礼蛋糕<b
								class="caret"></b></a></li>
						<li class="dropdown grid"><a href="#"
							class="dropdown-toggle list1" data-toggle="dropdown">特别优惠 <b
								class="caret"></b></a></li>
						<li class="dropdown grid"><a href="#"
							class="dropdown-toggle list1" data-toggle="dropdown">Store<b
								class="caret"></b></a></li>

						<!--/.navbar-collapse-->
					</ul>
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search"
						aria-hidden="true"></span></a>
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default"
								aria-label="Left Align">Search</button>
						</form>
					</div>
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user"
						aria-hidden="true"></span></a>
					<div id="loginBox">
						<form id="loginForm">
							<fieldset id="body">
								<fieldset>
									<label for="email">Email Address</label> <input type="text"
										name="email" id="email">
								</fieldset>
								<fieldset>
									<label for="password">Password</label> <input type="password"
										name="password" id="password">
								</fieldset>
								<input type="submit" id="login" value="Sign in"> <label
									for="checkbox"><input type="checkbox" id="checkbox">
									<i>Remember me</i></label>
							</fieldset>
							<p>
								New User ? <a class="sign" href="${ctx }/login.jsp">Sign Up</a> <span><a
									href="#">Forgot your password?</a></span>
							</p>
						</form>
					</div>
				</div>
				<div class="header-right cart">
					<a href="<%=path%>/tocart.action/tomycart"><span
						class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4>
							<a href="checkout.html"> <span class="simpleCart_total">
									$0.00 </span> (<span id="simpleCart_quantity"
								class="simpleCart_quantity"> 0 </span>)
							</a>
						</h4>
						<p>
							<a href="javascript:;" class="simpleCart_empty">Empty cart</a>
						</p>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<div class="container">
			<h2 class="hdng">文西 <span>糕点</span> 欢迎您！</h2>
			<p>welcome</p>
			<a href="<%=path%>/message.action/showlist" class="active">开始购买</a>
			<div class="banner-text">			
				<img src="images/2.png" alt=""/>	
			</div>
		</div>
	</div>			
	<!--//banner-->
	<!--gallery-->
	<div class="gallery">
		<div class="container">
			<div class="gallery-grids">
				<div class="col-md-8 gallery-grid glry-one">
					<a href="products.html"><img src="images/g1.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid glry-two">
					<a href="<%=path%>/message.action/showlist" class="active"><img src="images/g2.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info galrr-info-two">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g3.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g4.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g5.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g6.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g7.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g8.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g9.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g10.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<!--//gallery-->
	<!--subscribe-->
	<div class="subscribe">
		 <div class="container">
			 <h3>Newsletter</h3>
			 <form>
				 <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
				 <input type="submit" value="Subscribe">
			 </form>
		 </div>
	</div>
	<!--//subscribe-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="products.html">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>Connect with Us</h4>
					<ul>
						<li><a href="#"><img src="images/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="images/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="images/i3.png" alt=""/>Follow us on Google-plus</a></li>
						<li><a href="#"><img src="images/i4.png" alt=""/>Follow us on Pinterest</a></li>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p> © 2015 Yummy . All rights reserved.</p>
		</div>
	</div>
</body>
</html>