<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<div class="nav">
	<table id="headerTable1" >
		<tr>
			<td class="header1-logo"><a href="${contextPath}/index.do"><img src="${contextPath}/resources/image/logo.png" class="logo"></a></td>
			<td class="header1-text">C U L T U R E P L E X<td>
			<td class="header1-space"></td>
		
			<c:if test="${sessionScope.log eq null}">
				<td class="header1-menu"> <a href="${contextPath}/member/loginForm.do">
				<img src="${contextPath}/resources/image/login.png" class="loginLogo"><br>로그인</a> </td>
			</c:if>
			<c:if test="${sessionScope.log ne null}">
				<td class="header1-menu"><a href="${contextPath}/member/logout.do">
				<img src="${contextPath}/resources/image/logout.png" class="logoutLogo"><br>로그아웃</a></td>
			</c:if>
			
			<td class="header1-menu"><a href="${contextPath}/member/joinForm.do">
				<img src="${contextPath}/resources/image/register.png" class="registerLogo"><br>회원가입</a></td>
            <td class="header1-menu"><a href="${contextPath}/member/myForm.do">
            	<img src="${contextPath}/resources/image/myinfo.png" class="myinfoLogo"><br>MY CGV</a></td>
            <td class="header1-menu"><a href="${contextPath}/board/boardList.do">
            	<img src="${contextPath}/resources/image/callcenter.png" class="callcenterLogo"><br>고객센터</a></td>
		</tr>
	</table>
	
	<table id="headerTable2">
        <tr>
        	<td class="header2-menu">
        		<a href="${contextPath}/movie/movieTotalList.do">영화</a></td>
	        <td class="header2-menu">
	        	<a href="${contextPath}/movie/cinemaForm.do">극장</a></td>
	        <td class="header2-menu">
	        	<a href="${contextPath}/ticketing/ticketingForm.do">예매</a></td>
	        <td class="header2-menu">
	        	<a href="${contextPath}/shop/storeForm.do">스토어</a></td>
	        <td class="header2-menu">
	        	<a href="${contextPath}/member/joinForm.do">이벤트</a></td>
	        <td class="header2-space"></td>
	        <td class="header2-search"><input type="text">  <a><img src="${contextPath}/resources/image/search.png" class="searchLogo"></a></td>
        </tr>
    </table>
</div>