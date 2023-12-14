<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css " />
	<script src="${contextPath}/resources/js/member.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<form class="formData" method="post" action="${contextPath}/member/loginPro.do" onsubmit="return false" >
		<table id="loginTable">
            <tr>
                <td class="login-header">로그인</td>
            </tr>
            <tr>
                <td>
                    <input class="login-id" type="text" placeholder="아이디를 입력해주세요" name="id">
                </td>
            </tr>
            <tr>
                <td>
                    <input class="login-pw" type="password" placeholder="비밀번호를 입력해주세요" name="pw">
                </td>
            </tr>
            <tr>
                <td class="login-sub">
                    <a href="">아이디 찾기</a>
                    |
                    <a href="">비밀번호 찾기</a>
                </td>
            </tr>
            <tr>
                <td class="login-td">
                    <input type="submit" class="login-btn" value="로그인" onclick="checkLogin()">
                </td>
            </tr>
            <tr>
                <td class="login-td">
                    <button class="join-btn" onclick="location.href='${contextPath}/member/joinForm.do'">회원가입</button>
                </td>
            </tr>
        </table>
	</form>	
</body>
</html>