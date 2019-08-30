<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${stat}</title>
</head>
<body>
<h1>${stat}</h1>
<h2>${msg}</h2>

<a href='../index.jsp'>홈페이지로 돌아가기</a>
<% 
session.removeAttribute("stat");
session.removeAttribute("msg");
session.removeAttribute("nrul");
%>
</body>
</html>