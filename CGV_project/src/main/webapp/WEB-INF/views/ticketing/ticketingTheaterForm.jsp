<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="ticketingTheater">
		<table class="ticketingTable">
			<tr class="regionTitle">
				<td class="region" onclick="checkRegion(${0})">서울</td> <td class="side"> | </td> <td class="region" onclick="checkRegion(${1})">파주</td> <td class="side"> | </td> <td class="region" onclick="checkRegion(${2})">대구</td> <td class="side"> | </td> <td class="region" onclick="checkRegion(${3})">부산/울산</td> 
			</tr>
			
			<tr class="regionInfo" style="display:block;">
				<td class="seoul" onclick="theaterSave(this)">홍대</td> <td class="seoul" onclick="theaterSave(this)">용산</td> <td class="seoul" onclick="theaterSave(this)">강남</td>
			</tr>

			<tr class="regionInfo" style="display:none;">
				<td class="paju" onclick="theaterSave(this)">야당</td> <td class="paju" onclick="theaterSave(this)">금촌</td>
			</tr>

			<tr class="regionInfo" style="display:none;">
				<td class="daegu" onclick="theaterSave(this)">대구스타디움</td> <td class="daegu" onclick="theaterSave(this)">죽전</td>
			</tr>

			<tr class="regionInfo" style="display:none;">
				<td class="busan" onclick="theaterSave(this)">해운대</td> <td class="busan" onclick="theaterSave(this)">서면</td> <td class="busan" onclick="theaterSave(this)">울산삼산</td>
			</tr>

		</table>
	</div>
	
</body>
</html>