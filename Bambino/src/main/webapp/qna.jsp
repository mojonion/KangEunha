<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
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
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrapper">
		<div class="wrapper-holder">
		
			<jsp:include page="header.jsp"/>
			
			<section class="main">
				<div class="content">
					<section class="bar">
						<div class="bar-frame">
							<ul class="breadcrumbs">
								<li><a href="/">Home</a></li>
								<li>QnA</li>
							</ul>
						</div>
					</section>

					<div class="entry">

						<h2>QnA 목록</h2>

						<table class="list_table">
							<tr>
								<th class="braun two">번호</th>
								<th class="braun firstt">제목</th>
								<th class="braun three">작성자</th>
								<th class="braun three">조회수</th>
								<th class="braun last">작성일</th>
							</tr>
							<c:if test="${ empty boardLists }">
								<tr>
									<td colspan="5">등록된 게시물이 없습니다 ^ - ^ *</td>
								</tr>
							</c:if>
							<c:if test="${ not empty boardLists }">
								<!-- 게시글 번호를 역순으로 설정하기 위해 변수 생성 -->
								<c:set var="virtualNum" value="${totalCount + 1}" />
								<c:forEach var="dto" items="${ boardLists }">
									<c:set var="virtualNum" value="${ virtualNum - 1 }"></c:set>
									<tr>
										<td class="white four">${ virtualNum }</td>
										<td class="white two"><a href="/board.do?num=${ dto.num }">${ dto.title }</a></td>
										<td class="white two">${ dto.id }</td>
										<td class="white two">${ dto.visitcount }</td>
										<td class="white three">${ dto.postdate }</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>

						<form class="form-newsletter">
							<input type="button" value="글쓰기" onclick="location.href='/boardwrite.do';"/>
						</form>
						<div style="height: 100px;"></div>
					</div>
				</div>
			</section>
		</div>
		
		<jsp:include page="footer.jsp"/>
				
	</div>
	
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/jcarousellite.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/fancySelect.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.js"></script>
	<script src="js/jquery-ui-1.10.4.custom.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>