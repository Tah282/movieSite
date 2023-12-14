<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css " /> 

<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<br><br>

	<div class="movieInfo">
		<form action="${contextPath}/ticketing/ticketingForm.do">
			<table class="movieInfoTable">
				<tr>
					<td class="InfoImg_td" rowspan="4" ><img class="Info-img" src="${contextPath}/resources/mvImage/${movie.movieImage}"></td> 	<td class="InfoTitle">${movie.movieName}<br></td>
				</tr>
				
				<tr>
											<td>예매율 ${movie.movieRating}<br><hr></td>
				</tr>
				
				<tr>
											<td class="InfoData">감독 : ${movie.movieDirector}<br>
												배우 : ${movie.movieCharacter }<br>
												기본정보 : ${movie.movieAge}, ${movie.movieTime }<br>
												개봉 : ${movie.movieOpen }
											</td>
				</tr>
					
				<tr> <td><input type="submit" value="예매하기" class="Ticketing-btn"></td> </tr>
				
			</table>
		</form>
	</div>
</body>
</html>