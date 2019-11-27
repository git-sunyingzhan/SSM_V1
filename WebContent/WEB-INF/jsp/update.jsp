<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="./css/userAdmin.css">
	<script type="text/javascript" src="../js/jquery.min.js"></script>
</head>
<body>
		<div class="container_box">
		<div class="main_title">用户管理</div>
		<div  class="main_body">
			<div class="nav_title autoH color_909090">
				<label>用户管理</label><span class="jiantou"></span><label class="color_0e6fb6">修改信息</label>
			</div>
			<div class="shade_content">
				<form method="post" action="update.do?page=${page }">
					<div>
						<label>ID:</label>
						<span>
							<input type="text" name="id" value="${admin.id }" readonly>
						</span>
					</div>
					<div>
						<label>用户名:</label>
						<span>
							<input type="text" name="uname" value="${admin.uname }">
						</span>
					</div>
					<div>
						<label>真实姓名:</label>
						<span>
							<input type="text" name="realname" value="${admin.realname }">
						</span>
					</div>
					<div>
						<label>密码:</label>
						<span>
							<input type="password" name="pwd" value="${admin.pwd }">
						</span>
					</div>
					<div class="o_btns">
						<input class="save" type="submit" value="保存">
						<input class="cancel" type="button" value="取消" onclick="location.href='list.do?page=${page }'">
					</div>
				</form>
			</div>
		</div>
		</div>

</div>
</div>				
</body>
</html>










