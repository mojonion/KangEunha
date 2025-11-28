<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header">
	<span class="logo"><a href="index.jsp">Bambino</a></span>
	<div class="tools-nav_holder">
		<!-- <ul class="tools-nav">
			<li><a href="#">My account</a></li>
			<li class="login"><a href="login.jsp">Login</a></li>
		</ul> -->
		<ul class="tools-nav">
			<% if(session.getAttribute("UserId") != null) { %>
				<li><a href="mypage.jsp">My Page</a></li>
				<li><a href="logout.do">Logout</a></li>
			<% }else { %>
					<li><a href="login.do">Login</a></li>
					<li><a href="join.do">Join</a></li>
			<% } %>
		</ul>
		<div class="checkout">
			<span>3 products, <span class="pink">$380,50</span></span>
			<a href="cart.jsp" class="btn btn_checkout">Checkout</a>
		</div>
	</div>
	<div class="clear"></div>
	<a class="menu_trigger" href="#">menu</a>
	<nav id="nav">
		<ul class="navi">
			<li class="searc_li" >
				<div  class="ul_search li">
					<a class="search" href="#"><span>search</span></a>
					<form method="get" class="searchform" action="#">
						<input type="text" class="field" name="s" id="s" placeholder="What are you looking for?" />
						<input type="submit" class="submit" value=""  />
						<div class="clear"></div>
					</form>
				</div >
			</li>
			<li><a href="products.jsp">Our collection</a></li>
			<li><a href="products.jsp">Top products </a></li>
			<li><a href="products.jsp">Best sellers</a></li>
			<li><a href="products.jsp">Gifts</a></li>
			<li><a href="boardlist.do">QnA</a></li>
		</ul>
		<div  class="ul_search">
			<a class="search" href="#"><span>search</span></a>
			<form method="get" class="searchform" action="#">
				<input type="text" class="field" name="s" id="s" placeholder="What are you looking for?" />
				<input type="submit" class="submit" value=""  />
			</form>
		</div >
	</nav>
</header>

<div style="height:30px;"></div> <!-- 헤더-본문 사이 여백 -->