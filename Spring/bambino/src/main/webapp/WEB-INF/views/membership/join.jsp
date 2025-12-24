<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
							<li>Join Page</li>
						</ul>
					</div>
				</section>
				<div id="container">
					<!-- bodytext_area -->
					<div class="entry">
						<!-- appForm -->
						<form action="../membership/join" method="post" class="form-newsletter">
							<fieldset>
								<h2>필수입력</h2>
								<div style="height: 30px;"></div>
								<ul class="app_list">
									<li class="clear"><label for="name_lbl"
										class="tit_lbl pilsoo_item">작성자명</label><br /> <input
										type="text" name="name" class="w100p" id="name_lbl"
										placeholder="이름을 입력해주세요" /></li>
									<div style="height: 60px;"></div>
									<li class="clear"><label for="id_lbl"
										class="tit_lbl pilsoo_item">아이디</label><br /> <input
										type="text" name="id" class="w100p" id="id_lbl"
										placeholder="아이디를 입력해주세요" /></li>
									<div style="height: 60px;"></div>
									<li class="clear"><label for="pwd_lbl"
										class="tit_lbl pilsoo_item">비밀번호</label><br /> <input
										type="password" name="pw" class="w100p" id="pwd_lbl"
										placeholder="비밀번호를 입력해주세요" /></li>
									<div style="height: 60px;"></div>
									<li class="clear"><label for="pwd2_lbl"
										class="tit_lbl pilsoo_item">비밀번호 확인</label><br /> <input
										type="password" class="w100p" id="pwd2_lbl"
										placeholder="비밀번호를 다시 한번 입력해주세요" /></li>
									<div style="height: 60px;"></div>
									<li class="clear"><label for="phone_lbl"
										class="tit_lbl pilsoo_item">연락처</label><br /> <input
										type="text" name="tel" class="w100p" id="phone_lbl"
										placeholder="휴대폰”-”없이 숫자만 입력하세요" /></li>
									<div style="height: 60px;"></div>
									<li class="clear"><label for="email_lbl"
										class="tit_lbl pilsoo_item">이메일</label>
										<div class="app_content email_area">
											<input type="text" name="emailId" class="w70"
												style="width: 30%;" id="email_lbl" title="이메일 주소" /> @ <input
												type="text" name="emailAddress" class="w70"
												style="width: 30%; float: none;" />
											<div class="row" style="display: inline-block;">
												<label for="page"></label> <select title="이메일 제공업체 목록"
													id="page" name="email"
													onchange="document.getElementsByName('emailAddress')[0].value=this.value;">
													<option>직접입력</option>
													<option>naver.com</option>
													<option>hanmail.net</option>
												</select>
											</div>
										</div></li>
									<li class="clear"><span class="tit_lbl">성별</span>
										<div class="app_content radio_area">
											<input type="radio" class="css-radio" id="mmm_lbl"
												name="gender" value="male"><label for="mmm_lbl">남</label>
											<input type="radio" class="css-radio" id="www_lbl"
												name="gender" value="female"><label for="www_lbl">여</label>
										</div></li>
									<div style="height: 20px;"></div>
									<li class="clear"><span class="tit_lbl">개인정보 활용동의</span>
										<div class="app_content checkbox_area">
											<input type="checkbox" class="css-checkbox" id="agree_lbl"
												name="agree"><label for="agree_lbl">동의함</label>
										</div></li>
								</ul>
								<input type="submit" value="Join" />
								<!-- <p class="btn_line"><button class="btn_baseColor">등록</button></p>	 -->
							</fieldset>
							<div style="height: 100px;"></div>
							<!-- 본문-푸터 사이 여백 -->
						</form>
						<!-- //appForm -->

					</div>
					<!-- //bodytext_area -->

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
		if(msg) {
			alert(msg);
		}
	</script>
</body>
</html>