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

<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Yummy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="<%=path%>/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="<%=path%>/css/style.css" type="text/css" rel="stylesheet" media="all">

<!-- 按钮 -->

<link rel="stylesheet" type="text/css" href="<%=path%>/css/buttons.css" />
<!-- js -->
<script src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="<%=path%>/js/simpleCart.min.js"> </script>
<!-- cart -->
<style type="text/css">    
body{    
    font-size:13px;    
    line-height:25px;    
    }    
table{    
    border-top: 1px solid #333;    
    border-left: 1px solid #333;  
      
    
      
}    
td{    
    border-right: 1px solid #333;    
    border-bottom: 1px solid #333;    
    text-align:center;   
     
     
    }    
.title{
     
    font-weight:bold;    
    background-color: #cccccc;    
}    
input text{    
    width:10px;    
}    
          
</style>    
<script type="text/javascript">    
function addRow(){    
    //行的长度    
    var rowlength=document.getElementById("order").rows.length;    
    //得到整个表格对象    
    var order = document.getElementById("order").insertRow(rowlength-1);    
    order.id=rowlength-1;    
    //插入列    
    var cel1=order.insertCell(0).innerHTML="游戏光盘";    
    var cel2=order.insertCell(1).innerHTML="34";    
    var cel3=order.insertCell(2).innerHTML="&yen;58.40";    
    var cel4=order.insertCell(3).innerHTML="<input type=\"button\"value=\"删除\" onclick=\"delRow('"+(rowlength-1)+"')\"/>"+ "<input type=\"button\"value=\"修改\" onclick=\"editRow('"+(rowlength-1)+"')\"/>"    
    }    
    function delRow(qwe){    
        var ewq=document.getElementById(qwe).rowIndex;    
        document.getElementById("order").deleteRow(ewq);    
        }    
    function editRow(rowID){    
        var row=document.getElementById(rowID);    
        var cel=row.cells;    
        var text=cel[1].innerHTML;    
        cel[1].innerHTML="<input type='text' value='"+text+"' style='width:40px;'>"    
        cel[3].lastChild.value="确定";    
        cel[3].lastChild.setAttribute("onclick","update('"+rowID+"')");    
        }    
             
    function update(qwe){    
        var row=document.getElementById(qwe);    
        var cel=row.cells;    
        var text=cel[1].lastChild.value;    
        cel[1].innerHTML=text;    
        cel[3].lastChild.value="修改";    
        cel[3].lastChild.setAttribute("onclick","editRow('"+qwe+"')");    
        }    
/* 
     
    function add(){    
        var a = document.getElementById("order").rows.length;    
        var b = document.getElementById("order").insertRow(a-1);    
        var one1 = b.insertCell(0).innerHTML="123";    
        }    
*/    
</script> 

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
	<!--cart-items-->
	<div id="aaa">
	
	
		<div id="bbb">
			<table border="0" cellspacing="0" cellpadding="0" id="order" id="mytable-first">    
			 <tr class="title">    
			   <td >商品图片</td>    
			   <td>当前购买数量</td>    
			   <td>价格须知</td>    
			   <td>操作</td>    
			 </tr>    
			 <c:forEach items="${list}" var="cake">
			 <tr id="${cake.id} ">    
			   <td id="nima" ><img src="<%=path%>/${cake.img1}" class="showimg" width="100%"  /> </td>    
			   <td width=100px;>${cake.num}</td>    
			   <td width=200px;>折后价：${cake.price}原价：${cake.discountprice}</td> 
			      
			   <td width=200px;>
			   
			   <input name="rowdel" type="button" value="移除购物车"  onclick="window.location.href='<%=path%>/deleteone/dell?name=${cake.id}' ">    
			   
			   </td>
			 </tr>   
			 </c:forEach> 
	         

 
			</table>  
			<div id="topay">  
			<a href="<%=path%>/topay.action/tomypay" class="button orange medium">去结算付款</a>
			
						
		
		    </div>

 			
			
			
		
			
			
			
			
			
			
				
		
	</div>
	<!--//checkout-->	
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
	<!--footer-->
	<div class="footer-bottom">
		<div class="container">
			<p> © 2015 Yummy . All rights reserved.</p>
		</div>
	</div>
</body>
</html>