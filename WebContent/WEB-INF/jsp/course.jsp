<!DOCTYPE html>
<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>学码网</title>
		
		<link rel="stylesheet" type="text/css" href=../css/index.css">
		<link rel="stylesheet" type="text/css" href="../css/comm.css">
		<link rel="stylesheet" type="text/css" href="../css/course.css">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/course.js"></script>
		<script type="text/javascript" src="../js/index.js"></script>
	
		<script type="text/javascript">
			
			function findCourse(courseDirectionId,courseContentId,path){
				
				document.location.href = 
					path+"/main/toCourse?courseDirectionId="
						+courseDirectionId+"&courseContentId="+courseContentId;	
				
			}		
		
		</script>
	
	</head>
	<body id="body">
		<!-- 引入头部start -->
		<%@include file="header.jsp"%>
		<!-- 引入头部end -->
	
		<div class="category">
			<div class="auto">
				<ul>
					<li>
						<label class="direction">方向:</label>
						<span <c:if test="${courseDirectionId == 0}">class="current"</c:if> onclick="findCourse(0,0,'${pageContext.request.contextPath}');">全部</span>
						<c:forEach items="${courseDirections}" var="courseDirection">
							<span <c:if test="${courseDirectionId == courseDirection.id}">class="current"</c:if> onclick="findCourse(${courseDirection.id},0,'${pageContext.request.contextPath}');">${courseDirection.name}</span>
						</c:forEach>
					</li>
					<li>
						<label class="content">内容:</label>
						<span <c:if test="${courseContentId == 0}">class="current"</c:if> onclick="findCourse(${courseDirectionId},0,'${pageContext.request.contextPath}');">全部</span>
						<c:forEach items="${courseContents}" var="courseContent">
							<span <c:if test="${courseContentId == courseContent.id}">class="current"</c:if> onclick="findCourse(${courseDirectionId},${courseContent.id},'${pageContext.request.contextPath}');">${courseContent.name}</span>
						</c:forEach>
					</li>
				</ul>
			</div>
		</div>
		<!-- course_box -->
		<div class="course_box autoH">
			<div class="auto courses">
				<c:forEach items="${courses}" var="course">
					<a href="${pageContext.request.contextPath}/main/toVideo?courseId=${course.id}">
						<div class="course c_1">
							<img src="${course.picture_url}">
							<!--  
							<h3>设计工具</h3>
							-->
							<div>
								<p class="p1">${course.name}</p>
								<p class="p2">${course.description}</p>
								<p class="p2 p3">初级.4人在学</p>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
			<!--分页-->
			<div id="pages" class="pages">
				<a href="#">上一页</a>
				<a href="#" class="current_page">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#">下一页</a>
			</div>
		</div>
		<!-- foot -->
		<%@include file="foot.jsp" %>
	</body>
</html>