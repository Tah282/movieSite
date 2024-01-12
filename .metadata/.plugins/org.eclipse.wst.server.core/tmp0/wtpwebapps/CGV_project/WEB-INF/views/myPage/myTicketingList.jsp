<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myWriteList.jsp</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
</head>
<body>
	<jsp:include page="../nav.jsp" />
	
	<div class="titleDiv">
	<br>&nbsp&nbsp
	<span class="myFormName">${name}님&nbsp</span> <span class="myFormId">&nbsp ${list[0].id }</span>
	</div>
	<br><br>
	
	<div class="center"><h1>나의 예매 내역</h1></div>
	
	<div class="ticketing-center" >
		<table class="myTicketingTable">
			<tr>
				<td class="ticketing-content2">번호</td>
				<td class="ticketing-content2">제목</td>
				<td class="ticketing-content2">예매일</td>
				<td class="ticketing-content2">결제금액</td>
			</tr>
		<c:forEach var="ticketing" items="${list}" varStatus="status" >
			<tr>
				<td class="ticketing-content3">${status.index+1}</td>
				<td class="ticketing-content3">${ticketing.movieName}</td>
				<td class="ticketing-content3">${ticketing.date}</td>
				<td class="ticketing-content3">${ticketing.movieCost}</td>
			</tr>
			
		</c:forEach>	
		</table>
	</div>
	
</body>
</html>

