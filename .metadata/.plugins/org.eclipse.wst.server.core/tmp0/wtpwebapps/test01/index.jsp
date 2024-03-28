<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인 페이지</h1>

<%
	pageContext.setAttribute( "name", "김민아");
%>

<h1>${name } 메인페이지</h1>


<%@ include file="menu.jsp" %>

</body>
</html>