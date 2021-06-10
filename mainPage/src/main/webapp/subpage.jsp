<%@page import="com.DAO.PositiveattractionlistDAO"%>
<%@page import="com.DAO.positiveFoodListDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.positiveVO"%>
<%@page import="com.DAO.positiveHotelListDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<%
	String loc = request.getParameter("loc");
	String locName = "";
	

	positiveFoodListDAO dao1 = new positiveFoodListDAO();
	ArrayList<positiveVO> listFood = dao1.positiveFoodList();
	
	positiveHotelListDAO dao2 = new positiveHotelListDAO();
	ArrayList<positiveVO> listHotel = dao2.positiveHotelList();
	
	PositiveattractionlistDAO dao3 = new PositiveattractionlistDAO();
	ArrayList<positiveVO> listattraction = dao3.address();

	positiveHotelListDAO dao = new positiveHotelListDAO();
	ArrayList<positiveVO> list = dao.positiveHotelList();
	
	
	 

	
	
	if (loc.equals("Gwangju")) {
		locName = "±¤ÁÖ";
	} else if (loc.equals("Ulsan")) {
		locName = "¿ï»ê";
	} else if (loc.equals("Busan")) {
		locName = "ºÎ»ê";
	} else if (loc.equals("Daejeon")) {
		locName = "´ëÀü";
	} else if (loc.equals("Daegu")) {
		locName = "´ë±¸";
	} else if (loc.equals("Seoul")) {
		locName = "¼­¿ï";
	} else if (loc.equals("Jeju")) {
		locName = "Á¦ÁÖ";
	}
%>
<html lang="ko">
	<head>
		<title>Hyperspace by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="trip/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="trip/assets/css/noscript.css" /></noscript>
		<style>
			#one, #two, #three { display: none; }
			#one.on, #two.on, #three.on { display: block; }
			#intro.on { display: none; }
		</style>
	</head>
	<body class="is-preload">

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro" onclick="introClick()" class="scrolly active-locked active">Welcome <%=locName %></a></li>
							<li><a href="#one" onclick="sideClick('#one')">¸ÀÁý</a></li>
							<li><a href="#two" onclick="sideClick('#two')">¸í¼Ò</a></li>
							<li><a href="#three" onclick="sideClick('#three')">¼÷¹Ú</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up sectionM">
						<div class="inner">
							<h1>Welcome <%=locName %></h1>
							<p>Just another fine responsive site template designed by <a href="http://html5up.net">HTML5 UP</a><br />
							and released for free under the <a href="http://html5up.net/license">Creative Commons</a>.</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights fade-up sectionM">
						<div  class="inner">
							<h1>¸ÀÁý</h1>
							<p>Just another fine responsive site template designed by <a href="http://html5up.net">HTML5 UP</a><br />
							and released for free under the <a href="http://html5up.net/license">Creative Commons</a>.</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listFood.size(); i++) { %>
						<section>
							<!--  <a href="#" class="image"><img src="images/foodMain/dailyMain.jpg" alt="" data-position="center center" /></a>-->
							<a href="#" class="image"><img src="<%=listFood.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2><%=listFood.get(i).getName() %></h2>
									<p><%=listFood.get(i).getAddress() %></p>
									<p><%=listFood.get(i).getTel() %></p>
									<p><%=listFood.get(i).getCount() %></p>
									<ul class="actions">
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %>" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<%} %>
						
					</section>

				<!-- Two -->
				    
					<section id="two" class="wrapper style2 spotlights sectionM">
						<div class="inner">
							<h1>¸í¼Ò</h1>
							<p>Just another fine responsive site template designed by <a href="http://html5up.net">HTML5 UP</a><br />
							and released for free under the <a href="http://html5up.net/license">Creative Commons</a>.</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listattraction.size(); i++) { %>
						<section>
							<a href="#" class="image"></a>
							<div class="content">
								<div class="inner">
									<h2><%=listattraction.get(i).getName()%></h2>
									<p><%=listattraction.get(i).getAddress() %></p>
									<p><%=listattraction.get(i).getTel() %></p>
									<p><%=listattraction.get(i).getCount() %></p>
									
									<p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
									 
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %> "class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<%} %>	
					</section>

				<!-- three -->
					<section id="three" class="wrapper style2 spotlights sectionM">
						<div class="inner">
							<h1>¼÷¹Ú</h1>
							<p>Just another fine responsive site template designed by <a href="http://html5up.net">HTML5 UP</a><br />
							and released for free under the <a href="http://html5up.net/license">Creative Commons</a>.</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listHotel.size(); i++) { %>
						<section>
							<a href="#" class="image"><img src="trip/images/pic01.jpg" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2><%=listHotel.get(i).getName()%></h2>
									<p><%=listHotel.get(i).getAddress() %></p>
									<p><%=listHotel.get(i).getTel() %></p>
									<p><%=listHotel.get(i).getCount() %></p>
									
									
									<p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
									<ul class="actions">
										<li><a href="generic.html" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<%} %>	
					</section>

				

			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="trip/assets/js/jquery.min.js"></script>
			<script src="trip/assets/js/jquery.scrollex.min.js"></script>
			<script src="trip/assets/js/jquery.scrolly.min.js"></script>
			<script src="trip/assets/js/browser.min.js"></script>
			<script src="trip/assets/js/breakpoints.min.js"></script>
			<script src="trip/assets/js/util.js"></script>
			<script src="trip/assets/js/main.js"></script>
			<script>
				function sideClick(x) {
					$('.sectionM').removeClass('on')
					$('#intro').addClass('on')
					$(x).addClass('on')
					$(x+" > section:nth-child(2)").removeClass('inactive');
				}
				function introClick() {
					$('.sectionM').removeClass('on')
					$('#intro').removeClass('on')
				}	
			</script>
	</body>
</html>