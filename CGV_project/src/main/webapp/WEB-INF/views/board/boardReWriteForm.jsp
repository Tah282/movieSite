<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
	<script src="${contextPath}/resources/js/board.js"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	
	<div class="center">
		<br>
		<h1>댓글 작성 페이지</h1>
		<br>
		
		<form class="formData" method="post" action="${contextPath}/board/boardReWritePro.do" onsubmit="return false">
			<table border="1">
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" class="writer"></td>
				</tr>
				
				<tr>
					<td>이메일</td>
					<td>
						<input type="email" name="email" class="email">
					</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>
						<input type="text" name="subject" class="subject">
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea rows="5" cols="30" class="content" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="hidden" name="ref" value="${ref}">
						<input type="hidden" name="re_step" value="${re_step}">
						<input type="hidden" name="re_level" value="${re_level}">
						<input type="submit" value="작성하기" onclick="writeBoardCheck()">
						<input type="reset" value="취소">
						<input type="button" value="목록보기" onclick="location.href='${contextPath}/board/boardList.do'" >
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>