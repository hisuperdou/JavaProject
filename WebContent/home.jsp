<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />



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
						<a href="home.jsp">Da Vinci</a>
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
						<form class="navbar-form" action="<%=path%>/lookone" method="post">
							<input type="text" class="form-control" name="name">
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
	<!--products-->
	<div class="products">
		<div class="container">
			<h2>我们为您准备的产品</h2>
			<div class="col-md-9 product-model-sec">
				<c:forEach items="${list}" var="cake">
				
				
						<div class="product-grid">
										
										<a href="<%=path%>/message1/nextshow?name=${cake.id}">
											<div class="more-product">
												<span> </span>
											</div>
											<div class="product-img b-link-stripe b-animate-go  thickbox">
												<img src="<%=path%>/${cake.img1}"  class="img-responsive" alt="">
												<div class="b-wrapper">
													<h4 class="b-animate b-from-left  b-delay03">
														<button>View</button>	
													</h4>
												</div>
											</div>
										</a>
										<div class="product-info simpleCart_shelfItem">
											<div class="product-info-cust prt_name">
												<h4>${cake.name }</h4>
												<span class="item_price">${cake.price} </span>
												<div class="ofr">
													<p class="pric1">
														<del>${cake.discountprice}</del>
													</p>
													<p class="disc">[15% Off]</p>
												</div>
												<input type="text" class="item_quantity" value="1" /> <input
													type="button" class="item_add items" value="折扣后">
												<div class="clearfix"></div>
											</div>
										</div>
						</div>
			
				</c:forEach>

			

			</div>


			<div class="col-md-3 rsidebar span_1_of_left">
				<section class="sky-form">
					<div class="product_right">
						<h4 class="m_2">
							<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>蛋糕类别
						</h4>
						<div class="tab1">
							<ul class="place">
								<li class="sort">普通蛋糕</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="#"><p>卡萨塔冰淇淋</p></a> <a href="#"><p>芝士蛋糕</p></a> <a
									href="#"><p>椰子蛋糕</p></a> <a href="#"><p>纸杯蛋糕</p></a>
							</div>
						</div>
						<div class="tab2">
							<ul class="place">
								<li class="sort">特别蛋糕</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="#"><p>美味的蛋糕</p></a> <a href="#"><p>姜饼</p></a>
							</div>
						</div>
						<div class="tab3">
							<ul class="place">
								<li class="sort">香草蛋糕</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="#"><p>牛奶蛋糕</p></a> <a href="#"><p>水果蛋糕</p></a>
							</div>
						</div>
						<div class="tab4">
							<ul class="place">
								<li class="sort">2～3层蛋糕</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="#"><p>包含人名的四层蛋糕</p></a> <a href="#"><p>花层</p></a> <a
									href="#"><p>双心形</p></a>
							</div>
						</div>
						<!--script-->
						<script>
							$(document).ready(function() {
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();

								$(".tab1 ul").click(function() {
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function() {
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function() {
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function() {
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab5 ul").click(function() {
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
							});
						</script>
						<!--//script -->
					</div>
				</section>
				<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>折扣专区
					</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>70% - 60% (5)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>50%
								- 40% (7)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>30% - 20% (2)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>10%
								- 5% (5)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>30% - 20% (7)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>10%
								- 5% (2)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Other(50)</label>
						</div>
					</div>
				</section>
				<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>价格区间
					</h4>
					<ul class="dropdown-menu1">
						<li><a href="">
								<div id="slider-range"></div> <input type="text" id="amount"
								style="border: 0; font-weight: NORMAL; font-family: 'Dosis-Regular';" />
						</a></li>
					</ul>
				</section>
				<!---->
				<script type="text/javascript" src="js/jquery-ui.min.js"></script>
				<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
				<script type='text/javascript'>
					//<![CDATA[ 
					$(window)
							.load(
									function() {
										$("#slider-range")
												.slider(
														{
															range : true,
															min : 0,
															max : 100000,
															values : [ 500,
																	100000 ],
															slide : function(
																	event, ui) {
																$("#amount")
																		.val(
																				"$"
																						+ ui.values[0]
																						+ " - $"
																						+ ui.values[1]);
															}
														});
										$("#amount")
												.val(
														"$"
																+ $(
																		"#slider-range")
																		.slider(
																				"values",
																				0)
																+ " - $"
																+ $(
																		"#slider-range")
																		.slider(
																				"values",
																				1));

									});//]]>
				</script>
				<!---->
				<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>蛋糕风味
					</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>香草味</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>巧克力</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>奶油糖果</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>草莓</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>黑色森林</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>什锦水果</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>蜂蜜</label>
						</div>
					</div>
				</section>
				<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>重量
					</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>0.5 KG</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>1 KG</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>2 KG</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>更多</label>
						</div>
					</div>
				</section>
				<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>蛋糕颜色
					</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>白色</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>粉色</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>金色</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>绿色</label>
						</div>
					</div>
				</section>
			</div>
			<div class="clearfix">
					<table  class="page">
					<tr>
						<td colspan="6" align="center" bgcolor="#F07818">共${page.totalRecords}条记录
							共${page.totalPages}页 当前第${page.pageNo}页<br> <a
							href="<%=request.getContextPath()%>/message.action/showlist?pageNo=${page.topPageNo}"><input
								type="button" name="fristPage" value="首页" /></a> <c:choose>
								<c:when test="${page.pageNo!=1}">
									<a
										href="<%=request.getContextPath()%>/message.action/showlist?pageNo=${page.previousPageNo }"><input
										type="button" name="previousPage" value="上一页" /></a>
								</c:when>
								<c:otherwise>
									<input type="button" disabled="disabled" name="previousPage"
										value="上一页" />
								</c:otherwise>
							</c:choose> <c:choose>
								<c:when test="${page.pageNo != page.totalPages}">
									<a
										href="<%=request.getContextPath()%>/message.action/showlist?pageNo=${page.nextPageNo }"><input
										type="button" name="nextPage" value="下一页" /></a>
								</c:when>
								<c:otherwise>
									<input type="button" disabled="disabled" name="nextPage"
										value="下一页" />
								</c:otherwise>
							</c:choose> <a
							href="<%=request.getContextPath()%>/message.action/showlist?pageNo=${page.bottomPageNo}"><input
								type="button" name="lastPage" value="尾页" /></a>
						</td>
					</tr>
				</table>
			</div>
		</div>






	</div>

	<!--//products-->
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
						<li><a href="#"><img src="images/i1.png" alt="" />Follow
								us on Facebook</a></li>
						<li><a href="#"><img src="images/i2.png" alt="" />Follow
								us on Twitter</a></li>
						<li><a href="#"><img src="images/i3.png" alt="" />Follow
								us on Google-plus</a></li>
						<li><a href="#"><img src="images/i4.png" alt="" />Follow
								us on Pinterest</a></li>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>© 2017 达文西 All rights reserved</p>
			<a
				href="https://baike.baidu.com/item/%E8%BE%BE%E9%97%BB%E8%A5%BF/5833597?fr=aladdin/"
				target="_blank">点我了解更多</a>
		</div>
	</div>
</body>
</html>
>
