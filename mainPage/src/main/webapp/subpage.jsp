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
		locName = "����";
	} else if (loc.equals("Ulsan")) {
		locName = "���";
	} else if (loc.equals("Busan")) {
		locName = "�λ�";
	} else if (loc.equals("Daejeon")) {
		locName = "����";
	} else if (loc.equals("Daegu")) {
		locName = "�뱸";
	} else if (loc.equals("Seoul")) {
		locName = "����";
	} else if (loc.equals("Jeju")) {
		locName = "����";
	}
%>
<html lang="ko">
	<head>
		<title>Smart Trend/sub</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="trip/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="trip/assets/css/noscript.css" /></noscript>
		<style>
			#one, #two, #three { display: none; }
			#one.on, #two.on, #three.on { display: block; }
			#one >.inner{ background: url(./trip/assets/css/images/qqsplash.jpg); background-size: 100% auto; background-position: 50% 50%; }
			#two >.inner{ background: url(./trip/assets/css/images/CJLK9T.jpg); background-size: 100% auto; background-position: 50% 100%; }
			#three >.inner{ background: url(./trip/assets/css/images/HgeHz1.jpg); background-size: 100% auto; background-position: 50% 80%; }
			
			
			#intro.on { display: none; }
			#sidebar li a { cursor: pointer; }
			
			.asww { padding: 28px; }
			.spotlights > section:nth-child(2n-1) { background: rgba(0,0,0,0.05); }
			.spotlights > section:nth-child(2n) { background: rgba(0,0,0,0.1); }
			
		</style>
	</head>
	<body class="is-preload">

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro" onclick="introClick()" class="scrolly active-locked active">Welcome <%=locName %></a></li>
							<li><a href="#one" onclick="sideClick('#one')">����</a></li>
							<li><a href="#two" onclick="sideClick('#two')">���</a></li>
							<li><a href="#three" onclick="sideClick('#three')">����</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up sectionM">
						<div class="inner">
							<h1 style="color:#fff;">Welcome <%=locName %></h1>
							<p style="color:rgba(255,255,255,0.65);">���ѹα��� �����ο� �ִ� �����÷� ���󳲵��� �߽� �����̸�, 2016�⸻ ����, ���� 501.25��, �α� 148�� 9õ������ �ϵ������� ��籺, �������� �强��, �������� ����, �������� ���ֽ�, ���������� ȭ������ ���Ѵ�. ������λ���뱸����õ�� ���� ȣ�������� �ִ� �����Դϴ�.
							</p>
							<ul class="actions">
								<li><a style="border-color: rgba(255, 255, 255, 0.35) !important; color: #fff !important" href="index.jsp" class="button scrolly">H O M E</a></li>
							</ul>
						</div>
						<div id="intro-bg"></div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights fade-up sectionM">
						<div  class="inner">
							<h1 style="color:#fff;">����</h1>
							<p style="color:rgba(255,255,255,0.65);">SNS���� ������ �����͸� �������� AI�� ������ ��õ�� �帳�ϴ�.</p>
							<ul class="actions">
								<li><a style="border-color: rgba(255, 255, 255, 0.35) !important; color: #fff !important" href="index.jsp" class="button scrolly">H O M E</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listFood.size(); i++) { %>
						<section class="asww">
							<%if (i%2==0) { %>
							<a href="#" class="image"><img src="<%=listFood.get(i).getFile() %>" alt="" data-position="center center" /></a>	
							<% }%> 
							<div class="content">
								<div class="inner">
									<h2><%=listFood.get(i).getName() %></h2>
									<p><br><%=listFood.get(i).getAddress() %><br>
									<%=listFood.get(i).getTel() %><br>
									<big><b><%=listFood.get(i).getCount() %> (��õ��) </b></big></p>
									<ul class="actions">
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %>&loc=food&loc2=Gwangju" class="button">M O R E</a></li>
									</ul>
								</div>
							</div>
							<% if (i%2==1) { %>
							<a href="#" class="image"><img src="<%=listFood.get(i).getFile() %>" alt="" data-position="center center" /></a>	
							<% }%>
						</section>
						<%} %>
						
					</section>

				<!-- Two -->
				    
					<section id="two" class="wrapper style2 spotlights sectionM">
						<div class="inner">
							<h1 style="color:#fff;">���</h1>
							<p style="color:rgba(255,255,255,0.65);">SNS���� ������ �����͸� �������� AI�� �ֺ� ��Ҹ� ��õ�� �帳�ϴ�.</p>
							<ul class="actions">
								<li><a style="border-color: rgba(255, 255, 255, 0.35) !important; color: #fff !important" href="index.jsp" class="button scrolly">H O M E</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listattraction.size(); i++) { %>
						<section class="asww">
							<%if (i%2==0) { %>
							<a href="#" class="image"><img src="<%=listattraction.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<% }%> 
							<div class="content">
								<div class="inner">
									<h2><%=listattraction.get(i).getName()%></h2>
									<p><br><%=listattraction.get(i).getAddress() %><br>
									<%=listattraction.get(i).getTel() %><br>
									<big><b><%=listattraction.get(i).getCount() %> (��õ��) </b></big></p>
									<ul class="actions">
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %>&loc=attr&loc2=Gwangju" class="button">M O R E</a></li>
									</ul>
								</div>
							</div>
							<% if (i%2==1) { %>
							<a href="#" class="image"><img src="<%=listattraction.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<% }%>
						</section>
						<%} %>	
					</section>

				<!-- three -->
					<section id="three" class="wrapper style2 spotlights sectionM">
						<div class="inner">
							<h1 style="color:#fff;">����</h1>
							<p style="color:rgba(255,255,255,0.65);">SNS���� ������ �����͸� �������� AI�� ���ھ�ü�� ��õ�� �帳�ϴ�.</p>
							<ul class="actions">
								<li><a style="border-color: rgba(255, 255, 255, 0.35) !important; color: #fff !important" href="index.jsp" class="button scrolly">H O M E</a></li>
							</ul>
						</div>
						<% for (int i=0; i<listHotel.size(); i++) { %>
						<section class="asww">
							<%if (i%2==0) { %>
							<a href="#" class="image"><img src="<%=listHotel.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<% }%> 
							<div class="content">
								<div class="inner">
									<h2><%=listHotel.get(i).getName()%></h2>
									<p><br><%=listHotel.get(i).getAddress() %><br>
									<%=listHotel.get(i).getTel() %><br>
									<big><b><%=listHotel.get(i).getCount() %> (��õ��) </b></big></p>
									<ul class="actions">
										<li><a href="detailpage.jsp?index=<%=Integer.toString(i) %>&loc=hotel&loc2=Gwangju" class="button">M O R E</a></li>
									</ul>
								</div>
							</div>
							<%if (i%2==1) { %>
							<a href="#" class="image"><img src="<%=listHotel.get(i).getFile() %>" alt="" data-position="center center" /></a>
							<% }%> 
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
					//$('html').scrollTop(0);
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