<!DOCTYPE html>
<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>学码网</title>
		
		<link rel="stylesheet" type="text/css" href="../css/comm.css">
		<link rel="stylesheet" type="text/css" href="../css/index.css">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/banner.js"></script>
		<script type="text/javascript" src="../js/index.js"></script>
		
		<script type="text/javascript">
			
		var path = document.location.pathname.substring(0,
				(document.location.pathname.substring(1).indexOf("/")+1));
		
			function buy(id){
					
				$.ajax({
					type:"post",
					url:path+"/main/buy",
					data:{"courseId":id},
					success:function(data){
						if(data == "IsAjax"){
							window.location.href = path +"/login/toLogin";
						}else if (data == true) {
							$("#course_"+id).text("加入购物车成功").css("color","green");
						} else if(data == false){
							$("#course_"+id).text("购物车中已有此商品").css("color","red");
						}
					}
				});	
				
			}
		
		</script>
		
	</head>
	<body id="body">
		<!-- 引入头部start -->
		<%@include file="header.jsp"%>
		<!-- 引入头部end -->
	
		<!-- main -->
		<div class="main">
			<div class="bgfff">
				<!-- banner -->
				<div class="banner_box auto">
					<div class="banner ">
						<c:forEach items="${courseDirections}" var="courseDirection">
							<img src="${courseDirection.picture_url}">
						</c:forEach>
					</div>
					<div class="side_bar">
						<ul>
							<c:forEach items="${courseDirections}" var="courseDirection">
								<li><a href="${pageContext.request.contextPath}/main/toCourse?courseDirectionId=${courseDirection.id}&courseContentId=0">${courseDirection.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					<span class="prev btns"><img src="../images/prev.png"></span>
					<span class="next btns"><img src="../images/next.png"></span>
					<div class="points">
						<c:forEach begin="1" end="${fn:length(courseDirections)}">
							<span></span>
						</c:forEach>
					</div>
				</div>
	
				<!-- column -->
				<div class="column auto autoH">
					<h3>实/战/推/荐</h3>
					<c:forEach items="${demoCourses}" var="demoCourse">
						<div class="course_box">
							<a href="${pageContext.request.contextPath}/main/toVideo?courseId=${demoCourse.id}" >
								<img src="${demoCourse.picture_url}">
							</a>
							<div>
								<p class="title">
									<a href="${pageContext.request.contextPath}/main/toVideo?courseId=${demoCourse.id}" >
										${demoCourse.description}
									</a>
								</p>
								<p class="level">实战 初级</p>
								<p class="price"><span>¥${demoCourse.price}</span>
								<span class="right buy" onclick="buy(${demoCourse.id});">加入购物车</span></p>
								<p><span id="course_${demoCourse.id}"></span></p>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- column end -->
			</div>
			<!-- column -->
				<div class="column auto autoH">
					<h3>新/手/入/门</h3>
					<c:forEach items="${newCourses}" var="newCourse">
						<div class="course_box">
							<a href="${pageContext.request.contextPath}/main/toVideo?courseId=${newCourse.id}" >
								<img src="${newCourse.picture_url}">
							</a>
							<div>
								<p class="title">
									<a href="${pageContext.request.contextPath}/main/toVideo?courseId=${newCourse.id}" >
										${newCourse.description}
									</a>
								</p>
								<p class="level">基础 初级</p>
								<p class="price"><span>¥${newCourse.price}</span>
								<span class="right buy" onclick="buy(${newCourse.id});">加入购物车</span></p>
								<p><span id="course_${newCourse.id}"></span></p>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- column end -->
			<!--  -->
		</div>
		<!-- foot -->
		<%@include file="foot.jsp" %>
	</body>
</html>