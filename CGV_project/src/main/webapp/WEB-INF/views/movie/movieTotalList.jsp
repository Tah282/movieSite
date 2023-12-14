<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="${contextPath}/resources/js/movie.js"></script>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css " /> 

	<script type="text/javascript">
		
	
		$(document).ready(function () {
			getTotalList(${check});
		})
		
	</script>

<title>Insert title here</title>
</head>
<body>
	
	<jsp:include page="../nav.jsp" />
	
	<div id="totalListDiv">
		
	</div>
	
</body>
</html>

