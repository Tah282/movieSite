<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm.jsp</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
	<script src="${contextPath}/resources/js/member.js"></script> 	
</head>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<div class="center">
		<br>
		<h1 class="join-title">회원가입 페이지</h1>
		<br>
			
		<form class="formData" method="post" action="${contextPath}/member/joinPro.do" onsubmit="return false">
			<table border="1" class="joinTable">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" class="join-id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="pw" class="join-pw"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="text" name="pwCheck" class="join-pwCheck"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" class="join-name"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" class="join-email"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="회원가입" class="join-btn" onclick="checkJoin()">
					</td>
				</tr>
			</table>
		</form>
	</div>	
</body>
</html>

