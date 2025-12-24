<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html lang="ko">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no">
<link href='http://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<title>Bambino</title>
<link rel="stylesheet" href="../resources/css/fancySelect.css" />
<link rel="stylesheet" href="../resources/css/uniform.css" />
<link rel="stylesheet" href="../resources/css/jquery.bxslider.css" />
<link href="../resources/css/jquery-ui-1.10.4.custom.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/all.css" />
<link media="screen" rel="stylesheet" type="text/css"
	href="../resources/css/screen.css" />
<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div class="wrapper-holder">

		<jsp:include page="../bambino/header.jsp" />

		<section class="main">
			<div class="content">
			<section class="bar">
				<div class="bar-frame">
					<ul class="breadcrumbs">
						<li><a href="/">Home</a></li>
						<li>Login Page</li>
					</ul>
				</div>
				</section>
				<div class="bodytext_area box_inner">
					<span style="color: red; font-size: 1.2em;"> <!-- 로그인 실패시 실행할 문구 출력 -->
						${ LoginErrMsg == null ? '' : LoginErrMsg }
					</span>
					<c:if test="${UserId == null }">
						<script>
							function validateForm(form) {
								/* 아이디를 작성했는지 확인하는 if문 */
								/* 자바스크립트는 문자열 변수를 조건식으로 사용할 경우
									데이터가 있으면 true, 없으면 false를 출력 */
								if (!form.id.value) {
									alert("아이디를 입력하세요.");
									return false;
								}
								/* 비밀번호를 작성했는지 확인하는 if문 */
								if (form.pw.value == "") {
									alert("패스워드를 입력하세요.");
									return false;
								}
							}
						</script>
						<form action="/membership/login" class="form-newsletter" method="post"
							name="loginFrm" align="center"
							onsubmit="return validateForm(this);">
							<input type="text" name="id" placeholder="ID" /><br />
							<div style="height: 30px;"></div>
							<input type="password" name="pw" placeholder="PASSWORD" /><br />
							<div style="height: 50px;"></div>
							<input type="submit" value="Login" />
							<div style="height: 100px;"></div>
						</form>
					</c:if>
				</div>
			</div>
		</section>
	</div>

	<jsp:include page="../bambino/footer.jsp" />

	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../../js/jcarousellite.js"></script>
	<script type="text/javascript" src="../../js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="../../js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="../../js/fancySelect.js"></script>
	<script type="text/javascript" src="../../js/jquery.bxslider.js"></script>
	<script src="../../js/jquery-ui-1.10.4.custom.js"></script>
	<script type="text/javascript" src="../../js/main.js"></script>
	<script>
		let msg = '${msg}';
		if (msg) {
			alert(msg);
		}
	</script>
</body>
</html>