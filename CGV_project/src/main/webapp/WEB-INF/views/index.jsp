<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
	<title>index</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css " /> 

</head>
<body>

	<jsp:include page="nav.jsp" />
	<jsp:include page="banner.jsp" />  
	<jsp:include page="movie/movieList.jsp" />
	
</body>
</html>
