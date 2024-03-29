<!DOCTYPE html>
<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>学码网</title>
		
		<link rel="stylesheet" type="text/css" href="../css/index.css">
		<link rel="stylesheet" type="text/css" href="../css/comm.css">
		<link rel="stylesheet" type="text/css" href="../css/course.css">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/course.js"></script>
		<script type="text/javascript" src="../js/index.js"></script>
	
		<script type="text/javascript">
			var path = document.location.pathname.substring(0,
				(document.location.pathname.substring(1).indexOf("/")+1));
			
			function order(){
				
				var itemIds = [];
				
				var inputs = $("input[type=hidden]");
				
				for(var i=0;i<inputs.length;i++){
					itemIds[i] = inputs[i].value;
				}
				
				document.location.href = path + "/main/order?itemIds="+itemIds;
				
			}
		
		</script>
	
	</head>
	<body id="body">
		<!-- 引入头部start -->
		<%@include file="header.jsp"%>
		<!-- 引入头部end -->
		
		<!-- car_box -->
		<div class="order_box autoH">
			<div class="auto">
				<h1>确认订单</h1>
				<div class="order_pic order_check">	
					<p class="p2 autoH"><span class="left">商品信息</span></p>
					<ul>	
						<c:forEach items="${items}" var="item">
							<li>
								<input type="hidden" value="${item.id}"/>
								<a class="left" href="#"><img src="${item.c_picture_url}" alt=""></a>
								<span class="proName left"><a href="#">${item.c_name}</a></span>
								<span class="price left">￥${item.c_price}</span>
							</li>
						</c:forEach>
					</ul>
	
					<p class="p1 p3 autoH"><a href="#" class="f16"><span class="left">使用优惠券</span></a><a class="right" href="">什么是优惠券?</a></p>
					<div class="bottom">
						<p>共<span>${fn:length(items)}</span>件商品，商品总金额:<span class="pay oldPrice">￥${totalPrice}</span></p>	
						<p>实付款:<span class="pay payment">￥${totalPrice}</span></p>
						<p>购买账号:<span class="uname">${user.nickname}</span></p>
						<p><a href="${pageContext.request.contextPath}/main/toCar">返回购物车</a><a href="javascript:order();"><span>提交订单</span></a></p>
						<p><input type="checkbox" name="confirm"> 我已经阅读并同意<a href="#">《用户付费协议》</a></p>
					</div>
				</div>
			</div>
		</div>
		<!-- foot -->
		<%@include file="foot.jsp" %>
	</body>
</html>