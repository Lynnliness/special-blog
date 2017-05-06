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
<html lang="zh">
<head>
<link rel="icon" type="image/x-icon"
	href="${contextPath }/static/img/favorite.ico" />
<link rel="shortcut icon" type="image/x-icon"
	href="${contextPath }/static/img/favorite.ico" />
<link rel="bookmark" type="image/x-icon"
	href="${contextPath }/static/img/favorite.ico" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="${contextPath }/static/common/jquery-3.2.1.js"></script>
<script src="${contextPath }/static/common/AjaxUtils.js"></script>
<script src="${contextPath }/layer/layer.js"></script>
<script src="${contextPath }/bootstrap/dist/js/bootstrap.js"></script>
<script src="${contextPath }/jquery_validate/jquery.validate.js"></script>
<script src="${contextPath }/jquery_validate/localization/messages_zh.js"></script>

</head>
<body>
</body>
</html>