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
		locName = "광주";
	} else if (loc.equals("Ulsan")) {
		locName = "울산";
	} else if (loc.equals("Busan")) {
		locName = "부산";
	} else if (loc.equals("Daejeon")) {
		locName = "대전";
	} else if (loc.equals("Daegu")) {
		locName = "대구";
	} else if (loc.equals("Seoul")) {
		locName = "서울";
	} else if (loc.equals("Jeju")) {
		locName = "제주";
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
							<li><a href="#one" onclick="sideClick('#one')">맛집</a></li>
							<li><a href="#two" onclick="sideClick('#two')">명소</a></li>
							<li><a href="#three" onclick="sideClick('#three')">숙박</a></li>
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
							<h1>맛집</h1>
							<p>여기에 아무거나 집어넣어도 되고 삭제해도 되는 태그 <!--<a href="http://html5up.net/license">Creative Commons</a>.--></p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listFood.size(); i++) { %>
						<section>
							<a href="#" class="image"><img src="<%=listFood.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2><%=listFood.get(i).getName() %></h2>
									<p><%=listFood.get(i).getAddress() %></p>
									<p><%=listFood.get(i).getTel() %></p>
									<big><b><p><%=listFood.get(i).getCount() %> (추천수) </p></b></big>
									<ul class="actions">
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %>&loc=food" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<%} %>
						
					</section>

				<!-- Two -->
				    
					<section id="two" class="wrapper style2 spotlights sectionM">
						<div class="inner">
							<h1>명소</h1>
							<p>여기에 아무거나 집어넣어도 되고 삭제해도 되는 태그 <!--<a href="http://html5up.net/license">Creative Commons</a>.--></p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listattraction.size(); i++) { %>
						<section>
							<a href="#" class="image"><img src="<%=listattraction.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2><%=listattraction.get(i).getName()%></h2>
									<p><%=listattraction.get(i).getAddress() %></p>
									<p><%=listattraction.get(i).getTel() %></p>
									<big><b><p><%=listattraction.get(i).getCount() %> (추천수) </p></b></big>
									<ul class="actions">
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %>&loc=attr" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<%} %>	
					</section>

				<!-- three -->
					<section id="three" class="wrapper style2 spotlights sectionM">
						<div class="inner">
							<h1>숙박</h1>
							<p>여기에 아무거나 집어넣어도 되고 삭제해도 되는 태그 <!--<a href="http://html5up.net/license">Creative Commons</a>-->.</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listHotel.size(); i++) { %>
						<section>
							<a href="#" class="image"><img src="<%=listHotel.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2><%=listHotel.get(i).getName()%></h2>
									<p><%=listHotel.get(i).getAddress() %></p>
									<p><%=listHotel.get(i).getTel() %></p>
									<big><b><p><%=listHotel.get(i).getCount() %> (추천수) </p></b></big>
									<ul class="actions">
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %>&loc=hotel" class="button">Learn more</a></li>
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