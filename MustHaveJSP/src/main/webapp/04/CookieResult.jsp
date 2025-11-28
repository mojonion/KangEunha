<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키값 확인하기</h2>
	<%
	/* 클라이언트가 보내주는 쿠키를 출력하는 메서드 */
	Cookie[] cookies = request.getCookies();
	/* 쿠키가 잇을 때 실행하는 if문 */
	if (cookies!=null) {
		/* 모든 쿠키를 출력하는 for문 */
		for (Cookie c : cookies) {
			String cookieName = c.getName();
			String cookieValue = c.getValue();
			out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
		}
	}
	%>
</body>
</html>