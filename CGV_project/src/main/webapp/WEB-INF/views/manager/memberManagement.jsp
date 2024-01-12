<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberManagement.jsp</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
</head>
<body>

	<jsp:include page="managerNav.jsp" />

	<div class="memberManagement">
		<br>
			<h1 class="memberTitle">회원 리스트</h1><hr>
		<br>
		
		<table class="memberManagementTBL" >
		
			<tr>
				<td>번호</td> <td>아이디</td> <td>이름</td>
			</tr>
		
		<c:forEach var="member" items="${list}" varStatus="status">
			<tr>
				<td>${status.index+1}</td> <td>${member.id }</td> <td>${member.name }</td> 
				<td><a href="${contextPath}/manager/modify.do?num=${member.num}">수정</a></td>
				<td><a href="${contextPath}/manager/delete.do?num=${member.num}">삭제</a></td>
			</tr>
		</c:forEach>
			
		</table>
		
	</div>
	
</body>
</html>

