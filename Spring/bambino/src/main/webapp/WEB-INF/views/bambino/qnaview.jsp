<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<title>Bambino</title>
	<link rel="stylesheet" href="../resources/css/fancySelect.css" />
	<link rel="stylesheet" href="../resources/css/uniform.css" />
	<link rel="stylesheet" href="../resources/css/jquery.bxslider.css" />
	<link href="../resources/css/jquery-ui-1.10.4.custom.css" rel="stylesheet">
	<link rel="stylesheet" href="../resources/css/all.css" />
	<link media="screen" rel="stylesheet" type="text/css" href="../resources/css/screen.css" />
<title>회원제 게시판</title>
<script>
function deletePost() {
	// confirm창에서 확인 버튼을 누르면 true를 취소를 누르면 false 반환
	var confirmed = confirm("정말로 삭제하겠습니까?");
	if(confirmed) {
		// form 태그 저장
		var form = document.writeFrm;
		// method 설정 : post, get
		form.method = "post";
		// submit 시 실행할 페이지 설정
		form.action = "delete.do";
		// submit 실행
		form.submit();
	}
}

</script>
</head>
<body>
<div id="wrapper">
		<div class="wrapper-holder">
<jsp:include page="header.jsp"/>
<form name="writeFrm">
	<!-- hidden : 보이지 않지만 submit 실행 시 데이터를 함께 전송하는 타입 -->
	<input type="hidden" name="num" value="${dto.num}" />
		<div class="entry">
		<h2>View</h2>
		<table class="list_table">
			<!-- 게시글 정보 헤더 (번호/작성자/작성일/조회수 등) -->
			<tr>
				<th class="braun two">번호</th>
				<th class="braun firstt">제목</th>
				<th class="braun three">작성자</th>
				<th class="braun three">조회수</th>
				<th class="braun last">작성일</th>
			</tr>

			<tr>
				<td class="white four">${dto.num}</td>
				<td class="white two">${dto.title}</td>
				<td class="white two">${dto.id}</td>
				<td class="white two">${dto.visitcount}</td>
				<td class="white three">${dto.postdate}</td>
			</tr>

			<!-- 내용 row -->
			<tr>
				<td class="white four">내용</td>
				<td class="white two" colspan="4" style="padding: 20px 50px;">
					${dto.content}</td>
			</tr>

			<!-- 버튼 row -->
			<tr>
				<td colspan="5" align="center" style="padding: 15px 0;"><c:if
						test="${ not empty UserId and UserId eq dto.id }">
						<button type="button"
							onclick="location.href='edit.do?num=${dto.num}';">수정하기</button>
						<button type="button" onclick="deletePost();">삭제하기</button>
					</c:if>
					<button type="button" onclick="location.href='/bambino/qnaview';">목록보기</button>
				</td>
			</tr>
		</table>
		</div>
</form>
</div>
<jsp:include page="footer.jsp"/>
</div>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../js/jcarousellite.js"></script>
	<script type="text/javascript" src="../js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="../js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="../js/fancySelect.js"></script>
	<script type="text/javascript" src="../js/jquery.bxslider.js"></script>
	<script src="../js/jquery-ui-1.10.4.custom.js"></script>
	<script type="text/javascript" src="../js/main.js"></script>
	
</body>
</html>










