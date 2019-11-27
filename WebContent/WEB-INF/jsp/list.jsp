<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户列表</title>
	<link rel="stylesheet" type="text/css" href="./css/userAdmin.css">
	<style type="text/css">
		.curr{
			color:black;
			font-size: 24px;
		}
	</style>
	<script type="text/javascript" src="./js/jquery.min.js"></script>
</head>
<body>
	<div class="normal">
		<div class="main_title">用户管理</div>
		<div  class="main_body">
			<div class="nav_title autoH color_909090">
				<label>用户管理</label><span class="jiantou"></span><label class="color_0e6fb6">管理员</label>
			</div>
			<!-- 右侧内容 -->
			<div class="content">
				<!-- 选项组 -->
				<div class="options">
					<div class="o_btns">
						<input class="add" value="增加" onclick="location.href='add.html'" />
					</div>
				</div>
				<div class="c_main">
					<table cellspacing="0" cellpadding="0">
						<tr class="thead">
							<td class="col_10">序号</td>
							<td class="col_20">用户名</td>
							<td class="col_20">密码</td>
							<td class="col_20">姓名</td>
							<td class="col_5">操作</td>
						</tr>
						<c:forEach items="${list}"  var="user"  varStatus="vs">
							<tr>
								<td class="col_10">${vs.count }</td>
								<td class="col_20">${user.uname }</td>
								<td class="col_20">${user.pwd }</td>
								<td class="col_20">${user.realname }</td>
								<td class="col_5">
									<a class="edit" href="load.do?page=${page }&id=${user.id}"></a>/
									<a href="del.do?page=${page }&id=${user.id}" class="delete"></a>
								</td>
							</tr>
						</c:forEach>
					</table>
					<!-- 分页 -->
					<div class="Page navigation">
					  <ul class="pagination">
					  <c:if test="${page!=1 }">
					    <li><a href="list.do?page=${page-1 }">上一页</a></li>
					  </c:if>
					  
					    <!-- 根据总页数 totalPage 生成对应页码 -->
					    <c:forEach begin="1" end="${totalPage }" var="p">
					    	<li>
						    	<c:if test="${page==p }" var="pp">
							    	<a href="list.do?page=${p }" class="curr">${p }</a>
						    	</c:if>
						    	<c:if test="${!pp }" >
							    	<a href="list.do?page=${p }" >${p }</a>
						    	</c:if>
					    	</li>
					    </c:forEach>
					    
					    <c:if test="${page<totalPage }">
						    <li><a href="list.do?page=${page+1 }">下一页</a></li>
					    </c:if>
					  </ul>
					</div>
				</div>
			</div>
		</div>	
	</div>

</body>
</html>