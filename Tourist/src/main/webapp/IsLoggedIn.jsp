<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("user_id") == null) {
	JSFunction.alertLocation("로그인 후 이용해 주십시오.", "login.jsp", out);
	return;
}
%>