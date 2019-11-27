<!DOCTYPE html>
<%@page language="java" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>学码网</title>
		
		<link rel="stylesheet" type="text/css" href="../css/comm.css">
		<link rel="stylesheet" type="text/css" href="../css/register.css">
		
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/register.js"></script>
	</head>
	<body>
		<!-- 引入头部 -->
		<%@ include file="header.jsp" %>
		
		<div class="auto register_box">
			<form action="${pageContext.request.contextPath}/registe/registe" method="post">
				<h3>新用户注册</h3>
				<div class="rows">
					<label>邮箱账号</label>
					<input type="text" id="email" name="email" placeholder="请输入邮箱账号">
					<p id="p_email"></p>
				</div>
				<div class="rows">
					<label>登录密码</label>
					<input type="password" id="password" name="password" placeholder="请输入密码">
					<p id="p_password"></p>
				</div>
				<div class="rows">
					<label>昵称</label>
					<input type="nickname" id="nickname" name="nickname" placeholder="请输入昵称">
					<p id="p_nickname"></p>
				</div>
				<div class="rows">
					<label>验证码</label>
					<input type="text" id="code" name="code" data-title="ucode" placeholder="请输入验证码">
					<input type="button" data-title="sendmess" value="发送验证码" onclick="javascript:createCode();"/>
					<p id="p_code"></p>
				</div>
				<div class="rows">
					<input type="button" data-title="submit" value="立即注册" onclick="javascript:putOn();"/>
				</div>
			</form>
		</div>
		<!-- foot -->
		<%@include file="foot.jsp" %>
	</body>
</html>