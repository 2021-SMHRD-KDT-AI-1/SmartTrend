<%@page import="com.VO.positiveVO"%>
<%@page import="java.util.ArrayList"%>
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
positiveHotelListDAO dao = new positiveHotelListDAO();
ArrayList<positiveVO> list = dao.positiveHotelList();
%>
<html lang="ko">
	<head>
		<title>Generic - Hyperspace by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="trip/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="trip/assets/css/noscript.css" /></noscript>
		<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zfj80en4gl"></script>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a href="index.html" class="title">Hyperspace</a>
				<nav>
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="generic.html" class="active">Generic</a></li>
						<li><a href="elements.html">Elements</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div class="inner">
							<h1 class="major">A Generic Page</h1>
							<span class="image fit"><img src="trip/images/pic04.jpg" alt="" /></span>
							<p>링크</p>
							<p>지도</p>
							<p><%=list.get(0).getName()%></p>
							<div id="map" style="width:1040px;height: 388px;"></div>
							<script>
							var HOME_PATH = window.HOME_PATH || '.';
			                //지도 생성
			                var gwangju = new naver.maps.LatLng(35.14496693139039, 126.91577035574662),
			                    map = new naver.maps.Map('map', {
			                    	//지도의 중심좌표
			                        center: gwangju.destinationPoint(100, 100),
			                      	//지도의 확대 레벨
			                        zoom: 17
			                    });
			                	marker = new naver.maps.Marker({
			                    position: gwangju,
			                    map: map
			                });
		                	var contentString = [
		                        '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
		                        '<center><h4 style="color : #000000"><%=list.get(0).getName()%></h4></center>',
		                        '<p><%=list.get(1).getAddress()%></P>',
		                        '</div>'
		                    	].join('');

			                var infowindow = new naver.maps.InfoWindow({
			                    content: contentString
			              		 });

			                naver.maps.Event.addListener(marker, "click", function(e) {
			                    if (infowindow.getMap()) {
			                        infowindow.close();
			                    } else {
			                        infowindow.open(map, marker);
			                    }
			                });

			                infowindow.open(map, marker);
                        	</script>
						</div>
					</section>
				</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper alt">
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

	</body>
</html>