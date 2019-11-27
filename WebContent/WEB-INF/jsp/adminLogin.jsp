<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>管理员登录</title>
	<link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body class="login_body">
	<div class="loginBox">
		<img class="login_logo" src="../images/login_logo.png">
		<div class="loginForm">
		<% String msg = (String) request.getAttribute("msg"); 
			   String uname = (String) request.getAttribute("uname"); 
			   String umsg = (String) request.getAttribute("umsg"); %>
			<form action="login.do" method="post" enctype="utf-8">
				<div>
					<label class="fl w_20">昵称：</label>
					<span class="fr w_80"><input type="text" class="text_txt" name="uname" value="<%=uname==null?"":uname %>"></span>
				</div>
				<div>
					<label class="fl w_20">密码：</label>
					<span class="fr w_80"><input type="password" class="text_txt" name="pwd"></span>
					
					<span class="msg"  style="color:red"><%=msg==null?"":msg %></span>
				</div>
				<div>
					<label class="fl w_20">验证码：</label>
					<span class="fr w_80 verify"><input type="text" class="text_txt code" name="checkCode" id="checkcode" />
					<img id="num" src="createCode"  />
					<a href="javascript:;" 
					onclick="document.getElementById('num').src = 'createCode?t='+(new Date()).getTime()">
					换一张</a>			
					</span>
					<span class="msg"  style="color:red" id="codemsg"><%=umsg==null?"":umsg %></span>
				</div>
				<div>
					<label class="fl w_20"></label>
					<div class="fr w_80">
						<span class="fl"><input type="checkbox" name="auto"> 下次自动登录</span>
					</div>
				</div>
				<div>
					<span class="fr w_80">
						<input type="submit" style="height: 50px;" value="登录">
					</span>
				</div>
			</form>
		</div>
	</div>
</body>
	<script type="text/javascript">
		function getXHR() {
			if (window.XMLHttpRequest) {
				return new XMLHttpRequest();
			} else {
				return new ActiveXObject("Microsoft.XMLHttp");
			}
		}
		
		
		checkcode.onblur = f2;
		
		function f1(){
			var ajax = getXHR();
			ajax.open("get","checkCode.do?code="+this.value,true);
			ajax.onreadystatechange = function () {
				codemsg.innerHTML = ajax.response;
			}
			ajax.send();
		}
		
		function f2(){
			var ajax = getXHR();
			ajax.open("post","checkCode.do",true);
			ajax.setRequestHeader("content-type","application/x-form-urlencoded");
			ajax.onreadystatechange = function () {
				codemsg.innerHTML = ajax.response;
			}
			ajax.send("uname="+this.value);
		}
		
	</script>
</html>