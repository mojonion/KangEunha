<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html lang="ko"> <!--<![endif]-->
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
					<div class="box_images">
						<a href="#"><img src="images/pic_01.png" alt="" ></a>
					</div>
					<ul class="box_image_list">
						<li><a href="#"><img src="images/pic_02.png" alt="" ></a></li>
						<li><a href="#"><img src="images/pic_03.png" alt="" ></a></li>
						<li><a href="#"><img src="images/pic_04.png" alt="" ></a></li>
					</ul>
					<div class="clear"></div>
					<section class="container">
						<div class="bottom-slider">
							<a href="#" class="btn-left"></a>
							<div class="slides">
								<p>Last added products</p>
								<ul class="item-list">
									<li>
										<div class="item">
											<div class="image">
											<a href="#"><img src="images/pic_carusel_01.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_02.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_03.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_02_2.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li class="last">
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_04.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_02.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_03.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_02_2.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_03.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
									<li class="last">
										<div class="item">
											<div class="image">
												<a href="#"><img src="images/pic_carusel_02.png"  alt="" /></a>
												<div class="hover">
													<p>Perspiciatis unde omnis iste natus voluptatem</p>
													<strong>$55.00</strong>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<a href="#" class="btn-right"></a>
						</div>
					</section>
					<div class="block-advice">
						<div class="advice-holder">
							<p>Join our newsletter</p>
						</div>
						<form action="#" class="form-newsletter">
							<fieldset>
								<input type="text" placeholder="Put your email..." />
								<input class="btn black normal" type="submit" value="Subscribe" />
							</fieldset>
						</form>
					</div>
					<div class="banner_box">
						<p>Take a part in our competition</p>
						<span>and get 80% discount for shopping</span>
					</div>
					<div class="clear"></div>
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