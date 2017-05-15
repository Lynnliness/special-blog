<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/config.jsp"%>
<html lang="zh">
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/index/styles.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/login/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/login/htmleaf-demo.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/static/css/login/login-form.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/bootstrap/dist/css/bootstrap.css">
</head>
<body>

	<div class="slider3d first">
		<div style="float: left; z-index: 999; position: absolute;margin-left: 5px">
		  <iframe width="455" scrolling="no" height="18" frameborder="0" allowtransparency="true" 
		      src="http://i.tianqi.com/index.php?c=code&id=1&icon=1&wind=1&num=2">
		  </iframe>
		</div>
		<div class="slider3d__wrapper">
			<div id="login_form" class="form">
				<form class="register-form">
					<input type="text" placeholder="用户名" id="r_user_name"
						required="required" /> <input type="password" placeholder="密码"
						id="r_password" /> <input type="text" placeholder="电子邮件"
						id="r_emial" />
					<button id="create">创建账户</button>
					<p class="message">
						已经有了一个账户? <a href="#">立刻登录</a>
					</p>
				</form>
				<form class="login-form" id="login_validate_form">
					<input type="text" placeholder="用户名" id="user_name" name="username"
						required /> <input type="password" placeholder="密码" id="password"
						name="password" />
					<button type="button" id="login" class="btn btn-primary"
						data-complete-text="登陆成功，正在跳转...">登 录</button>
					<p class="message">
						还没有账户? <a href="#">立刻创建</a>
					</p>
				</form>
			</div>

			<div class="slider3d__inner">

				<div class="slider3d__rotater">
					<div class="slider3d__item"
						style="background-image: url(${contextPath }/static/img/1.jpg);">
						<h2 class="slider3d__heading" data-text="SO HEADING"></h2>
					</div>
					<div class="slider3d__item"
						style="background-image: url(${contextPath }/static/img/2.jpg);">
						<h2 class="slider3d__heading" data-text="MUCH ROTATION"></h2>
					</div>
					<div class="slider3d__item"
						style="background-image: url(${contextPath }/static/img/3.jpg);">
						<h2 class="slider3d__heading" data-text="VERY 3D"></h2>
					</div>
					<div class="slider3d__item"
						style="background-image: url(${contextPath }/static/img/4.jpg);">
						<h2 class="slider3d__heading" data-text="SUCH JAVASCRIPT"></h2>
					</div>
					<div class="slider3d__item"
						style="background-image: url(${contextPath }/static/img/5.jpg);">
						<h2 class="slider3d__heading" data-text="WOW WOW!"></h2>
					</div>
				</div>

			</div>
			<!-- 			隐藏控制按钮 -->
			<div class="slider3d__controls">
				<div class="slider3d__control m--up"></div>
				<div class="slider3d__control m--down"></div>
			</div>
		</div>

		<script src="${contextPath }/static/js/index/main.js"></script>
		<script type="text/javascript">
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

			var formValidater = null;
			$().ready(function() {
				formValidater = $("#login_validate_form").validate({
					rules : {
						username : {
							required : true,
							minlength : 6
						},
						password : {
							required : true,
							minlength : 6
						}
					},
					messages : {
						username : {
							required : "请输入用户名",
							minlength : "用户名长度6位"
						}
					}
				});
			})

			$(function() {
				$("#create").click(function() {
					check_register();
					return false;
				})

				$("#login")
						.click(
								function() {
									if (formValidater.valid()) {
										var name = $("#user_name").val();
										var pass = $("#password").val();
										AjaxUtil
												.request({
													url : '${contextPath }/login.do',
													params : {
														"username" : name,
														"password" : pass
													},
													type : 'json',
													callback : function res(res) {
														if (res.success) {
															$("#login")
																	.button(
																			'loading')
																	.delay(1000)
																	.queue(
																			function() {
																				$(
																						"#login")
																						.button(
																								'complete');
																			});
															window.location.href = "${contextPath }/index.htm";
														} else {
															layer
																	.tips(
																			res.message,
																			'#login');
															$("#login").button(
																	'reset')
														}
													}
												});
									} else {
										$("#login_form").removeClass(
												'shake_effect');
										setTimeout(function() {
											$("#login_form").addClass(
													'shake_effect')
										}, 1);
									}
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
