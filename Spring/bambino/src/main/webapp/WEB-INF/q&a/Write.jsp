<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="IsLoggedIn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<title>Bambino</title>
	<link rel="stylesheet" href="css/fancySelect.css" />
	<link rel="stylesheet" href="css/uniform.css" />
	<link rel="stylesheet" href="css/jquery.bxslider.css" />
	<link href="css/jquery-ui-1.10.4.custom.css" rel="stylesheet">
	<link rel="stylesheet" href="css/all.css" />
	<link media="screen" rel="stylesheet" type="text/css" href="css/screen.css" />
<title>회원제 게시판</title>
<script type="text/javascript">
function validateForm(form) {
	if(form.title.value == "") {
		alert("제목을 입력하세요.");
		form.title.focus();
		return false;
	}if(form.content.value == "") {
		alert("내용을 입력하세요.");
		form.content.focus();
		return false;
	}
}
</script>
</head>
<body>
<div id="wrapper">
		<div class="wrapper-holder">
<jsp:include page="/header.jsp"/>
<form name="WriteFrm" method="post" action="boardwrite.do"
	onsubmit="return validateForm(this);">
	<div class="entry">
	<h2>Write</h2>
	<table class="write_table">
    <tr>
        <th>제목</th>
        <td>
            <input type="text" name="title" class="write-input" />
        </td>
    </tr>

    <tr>
        <th>내용</th>
        <td>
            <textarea name="content" class="write-textarea"></textarea>
        </td>
    </tr>
</table>

<!-- 버튼영역 그대로 밖으로 이동 -->
<div style="text-align:center; padding:20px;">
    <button type="submit">작성 완료</button>
    <button type="reset">다시 입력</button>
    <button type="button" onclick="location.href='boardlist.do';">목록 보기</button>
</div>

</div>
</form>
</div>
<jsp:include page="/footer.jsp"/>
</div>
</body>
</html>