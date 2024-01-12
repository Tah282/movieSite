<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteForm.jsp</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
	<script src="${contextPath}/resources/js/board.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	
	<div class="center">
		<br>
			<h1>문의하기</h1>
		<br>
		
		<form class="formData" method="post" action="${contextPath}/board/boardWritePro.do" onsubmit="return false">
			<table border="1">
				<tr>
					<td>작성자 </td>
					<td>&nbsp <input type="text" name="writer" class="writer" value="${id}" readonly></td>
				</tr>
				
				<tr>
					<td>이메일</td>
					<td>&nbsp
						<input type="email" name="email" class="email">
					</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>&nbsp
						<input type="text" name="subject" class="subject">
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>&nbsp
						<textarea rows="5" cols="30" class="content" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="작성하기" onclick="writeBoardCheck()">
						<input type="button" value="목록보기" onclick="location.href='${contextPath}/board/boardList.do'" >
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>