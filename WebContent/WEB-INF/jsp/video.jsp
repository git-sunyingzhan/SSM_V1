<!DOCTYPE html>
<%@page language="java" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>学码网</title>
		
		<link rel="stylesheet" type="text/css" href="../css/index.css">
		<link rel="stylesheet" type="text/css" href="../css/comm.css">
		<link rel="stylesheet" type="text/css" href="../css/course.css">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/course.js"></script>
		<script type="text/javascript" src="../js/jqPaginator.js"></script>
	
	</head>
	<body id="body">
		
		<div class="header header_blue">
			<div class="auto">
				<!-- <a href="index.html"><img class="left logo" src="images/logo_fff.png"></a> -->
				<p class="left course_tit">
					<a onclick="javascript:history.go(-1)">
						<img src="../images/jiantou_03.png">
					</a>
					${course.name}
				</p>
				<div class="right login_area">
					<span class="car" id="end">
						<a href="car.html">购物车</a>
						<span class="nums"></span>
					</span>
					<div class="user_head right ">
						<img class="head_pic" src="../images/head_pic.jpg"/>
						<p class="logout" onclick="javascript:document.location.href='${pageContext.request.contextPath}/login/loginOut'">
							${user.nickname}&nbsp;&nbsp;&nbsp;注销登录
						</p>
					</div>
				</div>
			</div>
		</div>
		
		<!-- car_box -->
		<div class="order_box video_box success autoH">
				<video controls="controls" poster="../images/ship_03.png">
					<source src="${course.video_url}" type="">
				</video>
		</div>
		<!-- foot -->
		<%@include file="foot.jsp" %>
	</body>
</html>