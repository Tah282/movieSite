<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div class="managerNav">
	
	<span class="managerTitle">관리자 페이지</span> <br><br><br>
	
	<table id="managerHeader">
		<tr>
			<td class="menu"><a href="${contextPath}/manager/memberManagement.do">회원 관리 페이지</a></td>
			<td class="menu-space"> | </td>
			<td class="menu"><a href="${contextPath}/manager/movieManagement.do">영화 관리 페이지</a></td>
			<td class="menu-space"> | </td>
			<td class="menu"><a href="${contextPath}/manager/boardManagement.do">고객센터 관리 페이지</a></td>
		</tr>
	</table>
</div>

