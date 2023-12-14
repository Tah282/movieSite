<%@page import="com.cgv.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<c:choose>
	<c:when test="${ empty check }">
		<script>
			alert("회원가입완료!");
			location.href="${contextPath}/member/loginForm.do";
		</script>
	</c:when>
	
	<c:when test="${ not empty check }">
		<script>
			alert("아이디가 중복됩니다.");
			location.href="${contextPath}/member/joinForm.do";
		</script>
	</c:when>
	</c:choose>  

</body>
</html>