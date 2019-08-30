<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<c:if test="${empty sessionScope.id}">
	<form action="<%=request.getContextPath()%>/main.do?action=login" method="post" id='_fo3'>
		<table>
		<tr><td>로그인</td><td><input type="text" name='id' id='_lid' data-msg='아이디를'/></td></tr>
		<tr><td>비밀번호</td><td><input type="password" name='pwd' id='_lpwd' data-msg='패스워드를'/></td></tr>
		</table>
	</form>
	<button id='_btnlog'><img alt="로그인" src="<%=request.getContextPath()%>/image/write.png"></button>
  </c:if>
  <%
  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  %>
  <c:if test="${not empty sessionScope.id}">
	[${alias}]님 반갑습니다.<br/><%=sdf.format(new Date()) %><br/>
	<a href='./main.do?action=logout'>로그아웃</a>
  </c:if>