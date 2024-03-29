<!DOCTYPE html>
<%@page language="java" pageEncoding="UTF-8"%>
<html >
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>学码网</title>
		
		<link rel="stylesheet" type="text/css" href="../css/index.css">
		<link rel="stylesheet" type="text/css" href="../css/comm.css">
		<link rel="stylesheet" type="text/css" href="../css/course.css">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/course.js"></script>
		<script type="text/javascript" src="../js/jqPaginator.js"></script>
		<script type="text/javascript" src="../js/index.js"></script>
	
	</head>
	<body id="body">
		<!-- 引入头部start -->
		<%@include file="header.jsp"%>
		<!-- 引入头部end -->
		
		<!-- car_box -->
		<div class="order_box pay_box success autoH">
			<div class="auto">
				<h1>订单成功</h1>
				<div class="order_pic">	
					<p class="p1 autoH"><a class="right" href="">我有疑问，需要反馈？</a></p>
					<div class="successInfo">
						<p>
							<span class="left icon"><img src="../images/success_03.png"></span>您已经成功付款<span>${totalPrice}</span>元
						</p>
						<p>
						<a href="#">已购买的课程</a> | <a href="#">订单详情</a> | <a href="#">联系我们</a>
						</p>
						<p><span class="left"><img src="../images/success_07.png"></span>安全提醒：下单后，用邮箱给您发送链接办理退款的都是骗子</p>
					</div>
				</div>
			</div>
		</div>
		<!-- foot -->
		<%@include file="foot.jsp" %>
	</body>
</html>