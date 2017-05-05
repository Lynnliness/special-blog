<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragrma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/index/styles.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/login/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/login/htmleaf-demo.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/login/login-form.css">
</head>
<body>
	<div class="slider3d first">
		<div class="slider3d__wrapper">
			<div id="login_form" class="form">
				<form class="register-form">
					<input type="text" placeholder="用户名" id="r_user_name" /> <input
						type="password" placeholder="密码" id="r_password" /> <input
						type="text" placeholder="电子邮件" id="r_emial" />
					<button id="create">创建账户</button>
					<p class="message">
						已经有了一个账户? <a href="#">立刻登录</a>
					</p>
				</form>
				<form class="login-form">
					<input type="text" placeholder="用户名" id="user_name" /> <input
						type="password" placeholder="密码" id="password" />
					<button id="login">登 录</button>
					<p class="message">
						还没有账户? <a href="#">立刻创建</a>
					</p>
				</form>
			</div>
			<div class="slider3d__inner">
				<div class="slider3d__rotater">
					<div class="slider3d__item">
						<h2 class="slider3d__heading" data-text="SO HEADING"></h2>
					</div>
					<div class="slider3d__item">
						<h2 class="slider3d__heading" data-text="MUCH ROTATION"></h2>
					</div>
					<div class="slider3d__item">
						<h2 class="slider3d__heading" data-text="VERY 3D"></h2>
					</div>
					<div class="slider3d__item">
						<h2 class="slider3d__heading" data-text="SUCH JAVASCRIPT"></h2>
					</div>
					<div class="slider3d__item">
						<h2 class="slider3d__heading" data-text="WOW WOW!"></h2>
					</div>
				</div>

			</div>
			<!-- 隐藏控制按钮 -->
			<!-- 		<div class="slider3d__controls"> -->
			<!-- 			<div class="slider3d__handle"> -->
			<!-- 				<div class="slider3d__handle__inner"> -->
			<!-- 					<div class="slider3d__handle__rotater"> -->
			<!-- 						<div class="slider3d__handle__item active">Page 1</div> -->
			<!-- 						<div class="slider3d__handle__item">Page 2</div> -->
			<!-- 						<div class="slider3d__handle__item">Page 3</div> -->
			<!-- 						<div class="slider3d__handle__item">Page 4</div> -->
			<!-- 						<div class="slider3d__handle__item">Page 5</div> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<!-- 			<div class="slider3d__control m--up"></div> -->
			<!-- 			<div class="slider3d__control m--down"></div> -->
			<!-- 		</div> -->

		</div>

		<script src="${contextPath }/static/common/jquery-3.2.1.js"></script>
		<script type="text/javascript"
			src="${contextPath }/static/js/index/main.js"></script>
		<script type="text/javascript">
			function check_login() {
				var name = $("#user_name").val();
				var pass = $("#password").val();
				if (name == "www.htmleaf.com" && pass == "www.htmleaf.com") {
					alert("登录成功！");
					$("#user_name").val("");
					$("#password").val("");

				} else {
					$("#login_form").removeClass('shake_effect');
					setTimeout(function() {
						$("#login_form").addClass('shake_effect')
					}, 1);
				}
			}
			function check_register() {
				var name = $("#r_user_name").val();
				var pass = $("#r_password").val();
				var email = $("r_email").val();
				if (name != "" && pass == "" && email != "") {
					alert("注册成功！");
					$("#user_name").val("");
					$("#password").val("");
				} else {
					$("#login_form").removeClass('shake_effect');
					setTimeout(function() {
						$("#login_form").addClass('shake_effect')
					}, 1);
				}
			}
			$(function() {
				$("#create").click(function() {
					check_register();
					return false;
				})
				$("#login").click(function() {
					check_login();
					return false;
				})
				$('.message a').click(function() {
					$('form').animate({
						height : 'toggle',
						opacity : 'toggle'
					}, 'slow');
				});
			})
		</script>
</body>
</html>
