<%@page import="membership.MemberDAO"%>
<%@page import="common.DBConnPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>회원 추가 테스트(executeUpdate() 사용)</h2>
	<%
		
		String id = "test3";
		String pass = "1111";
		String name = "테스트1회원";
		
		//	DB 연결
		MemberDAO dao = new MemberDAO();
		//	sql의 ? 의미 : SQL에 설정할 동적 데이터
		dao.addMember(id, pass, name);
		out.println("행이 입력되었습니다.");
	
		dao.close();
	%>
</body>
</html>