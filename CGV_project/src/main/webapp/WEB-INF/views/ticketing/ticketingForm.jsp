<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
	<script src="${contextPath}/resources/js/ticketing.js"></script>
	
	<style>
  		@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
	</style>
	
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	
	<br>

	<div class="center">
		<form class="formData" action="${contextPath}/ticketing/checkData" method="post">
			<table>
			
				<tr>
					<td class="ticketingFormTitle">영화</td> 
				</tr>
				
				<tr>
					<td><div class="ticketingList">	<br>
						<c:forEach  var="list" items="${movieList}" varStatus="status">
							<div class="movieDiv"> 
								<img class="Info-img" src="${contextPath}/resources/mvImage/${list.movieImage}" onclick="movieSave(${list.num},${status.index})"> 
								<input type="hidden" class="movieNum" value="${list.num}">
							</div>
						</c:forEach>
					</div></td>	
				</tr>
					
				<tr>
					<td class="ticketingFormTitle"><br>극장</td> 
				</tr>
				<tr>
					<td><jsp:include page="ticketingTheaterForm.jsp" /></td>
				</tr>	
				
				<tr>
					<td class="ticketingFormTitle"><br>날짜</td>
				</tr>	
				<tr>
					<td><jsp:include page="ticketingDateForm.jsp" /></td>
				</tr>
				
				<tr>
					<td><input type="hidden" id="test1" name="movieNum" value=""/></td>
                    <td><input type="hidden" id="test2" name="theater" value=""/></td>
                    <td><input type="hidden" id="test3" name="date" value=""/></td>
					<td class="ticketingBtnTd"> <br> <input type="submit" value="다음으로" class=w-btn onclick="saveData()"> </td>
				</tr>							
					
			</table>
		</form>
	</div>
</body>
</html>