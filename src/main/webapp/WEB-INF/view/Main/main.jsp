<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="login.title" /></title>

</head>
<body>

	<!-- 로그인 되지 않았을 때 -->
	<c:if test="${empty authInfo}"> 
		<form:form id="frm" name="frm" action="login" method="post" commandName="loginCommand">
			<table border =1>
				<tr>
					<td colspan=3> <spring:message code="autoLogin"/><form:checkbox path="autoLogin" value="auto"/>	</td>
				</tr>
				
				<tr>
					<td>아이디</td>
					<td>
					    <form:input  id="id1" path="id1" />
					    <form:errors path="id1" />
					</td>
					<td><form:checkbox path="idStore" value="store" /><spring:message code="rememberId"/></td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td>
						<form:password  id="pw" path="pw" />
						<form:errors path="pw" />
					</td>
					<td><input type="submit" id="btn" value="로그인" /></td>
				</tr>
				
				<tr>
					<td colspan=2>
						<a href="#">아이디 찾기</a>|<a href="#">비밀번호 찾기</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="regeister/agree">회원가입</a>
				    </td>
				</tr>
			</table>
		</form:form>
	</c:if>
	
	<!-- 로그인 되었을 때 -->
	<c:if test="${!empty authInfo}">
		<a href="member/memberDetail">내 정보</a>
		<a href="logout" >로그아웃</a> <!-- 왜 logout만써줘?? logout컨트롤러에 /logout만 적었으니까  -->
		<a href ="member/List">회원리스트</a>
		<a href ="#">공지사항 게시판</a>
		<a href ="board/answerBoardList">답변형 게시판</a>
		<a href ="#">상품목록</a>
	</c:if>
	
</body>
</html>