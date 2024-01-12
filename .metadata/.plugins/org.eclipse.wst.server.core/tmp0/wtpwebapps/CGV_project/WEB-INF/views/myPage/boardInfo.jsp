<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	
	<div class="center">
		<br>
		<h1>내가 쓴 문의사항</h1>
		<br>

		<table class="boardInfo-table" >
			<tr>
				<td class="boardInfo-title" colspan="3">${board.subject}</td>
				<td class="boardInfo-data">등록일 ${board.reg_date} &nbsp&nbsp&nbsp&nbsp 조회수 ${board.readcount}&nbsp&nbsp</td>
			</tr>
			
			<tr> <td class="boardInfo-writer" colspan="4" >작성자: &nbsp ${board.writer}</td> </tr>
			
			<tr> <td class="boardInfo-space" colspan="4"></td> </tr>
			
			<tr> <td class="boardInfo-content" colspan="4">${board.content}</td> </tr>
			
			<tr> <td class="boardInfo-space" colspan="4"></td> </tr>
			
			<tr>
				<td colspan="4">
					<input type="button" value="수정하기" onclick="location.href='${contextPath}/myPage/boardUpdateForm.do?num=${board.num}'">
					<input type="button" value="삭제하기" onclick="location.href='${contextPath}/myPage/boardDelete.do?num=${board.num}'">
					<input type="button" value="목록보기" onclick="location.href='${contextPath}/myPage/myWriteList.do'" >
					<input type="button" value="뒤로가기" onclick="history.back()" >
				</td>
			</tr>
			<tr>
				<td class="boardInfo-space2" colspan="4"></td>
			</tr>
		</table>
	</div>
</body>
</html>

