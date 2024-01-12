<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="${contextPath}/resources/js/ticketing.js"></script>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	
	<div class="WhiteSpace"></div>
	
	<div class="center">
		<form action="${contextPath}/ticketing/saveData" method="post">
			<table id="seatTable">
				<tr>
					<td class="screenTd" colspan="9"><img src="${contextPath}/resources/image/screen.jpg" class="screeanImg"><br><br></td>
				</tr>
				
				<c:forEach var="i" items="${seatList}" varStatus="status" >
					<c:if test="${status.index%8==0 }"> <tr> </c:if>
					
					<c:if test="${status.index == 4 || status.index == 12 || status.index == 20}"> <td class="seatSpace"></td> </c:if> 
						
					<c:if test="${i=='O'}">
						<td class="seatNum" onclick="checkSeat(${status.index})" style="CURSOR: pointer;">${i}
						<input type="hidden" name="seatNumTd" class="seatNumClass" value=""></td>
					</c:if>
					<c:if test="${i=='X'}">
						<td class="seatNum">${i}
						<input type="hidden" name="seatNumTd" class="seatNumClass" value=""></td>
					</c:if>	
							
					<c:if test="${status.index == 7 || status.index == 15 || status.index == 23}"> </tr> </c:if>
				</c:forEach>
				
				<tr>
					<td><input type="hidden" id="movie" name="movieNum" value="${movie}"/></td>
		            <td><input type="hidden" id="theater" name="theater" value="${theater}"/></td>
		            <td><input type="hidden" id="date" name="date" value="${date}"/></td>
				</tr>
				<tr>
					<td colspan="9"><input type="submit" value="예매하기" onclick="saveData2()"></td>
				</tr>
				
			</table>
		</form>
	</div>
	
</body>
</html>