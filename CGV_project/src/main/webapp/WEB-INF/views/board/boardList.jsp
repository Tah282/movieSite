<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList.jsp</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
</head>
<body>

	<jsp:include page="../nav.jsp" />
	
	<div class="board-center">
		<br>
			<h1 class="boardTitle">고객센터</h1><hr>
		<br>
		
		<table class="board-title">
			<tr>
				<td class="board-td">
					<button class="board-btn" onclick="location.href='${contextPath}/board/boardWriteForm.do'">문의하기</button>
				</td>
			</tr>
		</table>
		<br>
		
		<table class="board-content">
			<tr>
				<td class="board-content2">번호</td>
				<td class="board-content2_1">제목</td>
				<td class="board-content2">작성자</td>
				<td class="board-content2_1">작성일</td>
				<td class="board-content2_1">조회수</td>
			</tr>
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td class="board-content3">${number}</td>
				<td class="board-content3">
					<c:if test="${board.re_step > 1}">
						<c:forEach var="j" begin="1" end="${(board.re_step - 1) * 5}">
							&nbsp;
						</c:forEach>
						[답글]
					</c:if>
					<a href="${contextPath}/board/boardInfo.do?num=${board.num}&writer=${board.writer}">${board.subject}</a>
				</td>
				
			<c:choose>
				
				<c:when test="${empty board.manager}">
					<td class="board-content3">${board.writer}</td>
				</c:when>
				<c:when test="${not empty board.manager}">
					<td class="board-content3">${board.manager}</td>
				</c:when>
			</c:choose>
			
				<td class="board-content4">${board.reg_date}</td>
				<td class="board-content4">${board.readcount}</td>
			</tr>
			
			<c:set var="number" value="${number - 1}"></c:set>
			
		</c:forEach>
		</table>
		<br>
		
		<!--  페이지 카운터링 소스를 작성 -->
		<c:if test="${count > 0}">
			<c:if test="${startPage > clickablePageCount }">
				<a href="${contextPath}/board/boardList.do?pageNum=${startPage - clickablePageCount}">[이전]</a>
			</c:if>

			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<a href="${contextPath}/board/boardList.do?pageNum=${i}">[${i}]</a>
			</c:forEach>

			<c:if test="${endPage < pageCount }">
				<a href="${contextPath}/board/boardList.do?pageNum=${startPage + clickablePageCount}">[다음]</a>
			</c:if>
		</c:if>
		
	</div>

</body>
</html>