<%@page import="common.DBConnPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email_Id = request.getParameter("emailId");
	String email_Address = request.getParameter("emailAddress");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");
	String agree = request.getParameter("agree");
	String content = request.getParameter("content");
	
	DBConnPool cp = new DBConnPool();
	// PrepareStatement를 이용한 INSERT문 실행하기
	String sql = "INSERT INTO tourist_member"
				+ "(email_Id, email_Address, name, password, tel, gender, agree, content, regidate)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
	
	cp.psmt = cp.con.prepareStatement(sql);
	cp.psmt.setString(1, email_Id);
	cp.psmt.setString(2, email_Address);
	cp.psmt.setString(3, name);
	cp.psmt.setString(4, password);
	cp.psmt.setString(5, tel);
	cp.psmt.setString(6, gender);
	cp.psmt.setString(7, agree);
	cp.psmt.setString(8, content);
	
	int inResult = cp.psmt.executeUpdate();
	out.println(inResult + "행이 입력되었습니다.");
	
	cp.close();
	response.sendRedirect("login.jsp");
%>