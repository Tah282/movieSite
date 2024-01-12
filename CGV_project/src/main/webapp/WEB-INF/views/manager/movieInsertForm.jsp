<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css" />
</head>
<body>
	<jsp:include page="managerNav.jsp" />
		
	<div class="center">
		<br>
		<h1>영화 등록</h1>
		<br>

		<form class="formData" method="post" action="${contextPath}/manager/movieInsertPro.do" enctype="multipart/form-data">
			<table border="1">
				<tr>
					<td>제목</td>
					<td><input type="text" name="movieName" class="title"></td>
				</tr>
				<tr>
					<td>감독</td>
					<td><input type="text" name="movieDirector" class="director"></td>
				</tr>
				<tr>
					<td>출연진</td>
					<td><input type="text" name="movieCharacter" class="character"></td>
				</tr>
				<tr>
					<td>연령제한</td>
					<td><input type="text" name="movieAge" class="age"></td>
				</tr>
				<tr>
					<td>상영시간</td>
					<td><input type="text" name="movieTime" class="time"></td>
				</tr>
				<tr>
					<td>개봉일</td>
					<td><input type="text" name="movieOpen" class="open"></td>
				</tr>
				<tr>
					<td>상영여부</td>
					<td><input type="text" name="movieScreening" class="screening" value="상영예정"></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="movieCost" class="cost"></td>
				</tr>
				<tr>
					<td>줄거리</td>
					<td><textarea rows="5" cols="30" name="movieContent" class="content"></textarea></td>		
				</tr>
				<tr>
					<td>책 이미지</td>
					<td><input type="file" name="movieImage" class="movieImage"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="등록하기">
					</td>
				</tr>
			</table>
		</form>		
	</div>	
	
</body>
</html>