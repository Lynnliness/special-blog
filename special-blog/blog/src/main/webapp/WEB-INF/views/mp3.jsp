<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/config.jsp"%>
<html lang="ch">
<head>
<title></title>
<link rel="stylesheet"
	href="${contextPath }/static/js/mp3/dist/APlayer.min.css">
<style>
body {
	font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
}

.container {
	max-width: 32rem;
	margin-left: auto;
	margin-right: auto;
}

h1 {
	font-size: 54px;
	color: #333;
	margin: 30px 0 10px;
}

h2 {
	font-size: 22px;
	color: #555;
}

h3 {
	font-size: 24px;
	color: #555;
}

hr {
	display: block;
	width: 7rem;
	height: 1px;
	margin: 2.5rem 0;
	background-color: #eee;
	border: 0;
}

a {
	color: #08c;
	text-decoration: none;
}

p {
	font-size: 18px;
}
</style>
</head>
<script src="${contextPath }/static/js/mp3/dist/APlayer.min.js"></script>

<body>
	<div class="container">
		<div id="player1" class="aplayer"></div>
		<script>
			var ap1 = new APlayer({
				element : document.getElementById('player1'),
				narrow : false,
				autoplay : true,
				showlrc : false,
				music : {
					title : '我喜欢上你时的内心活动.mp3',
					author : '陈绮贞',
					url : '${contextPath}/static/js/mp3/music/ilikeu.mp3',
					pic : '${contextPath}/static/js/mp3/music/ilikeu.jpg'
				}
			});
			ap1.init();
		</script>
	</div>
</body>
</html>