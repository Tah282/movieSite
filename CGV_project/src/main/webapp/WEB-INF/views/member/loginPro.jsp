<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPro.jsp</title>
</head>
<body>
	<c:if test="${check ne null }">
		<c:set var="log" value="${id}" scope="session" />
		<script>
			alert("로그인 성공");
			location.href="${contextPath}/index.do";
		</script>
	</c:if>
	
	<c:if test="${check eq null}">
		<script>
			alert("아이디와 패스워드를 확인해주세요.");
			location.href="${contextPath}/member/loginForm.do";
		</script>
	</c:if>
</body>
</html>

