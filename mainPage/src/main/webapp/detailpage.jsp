<%@page import="com.DAO.PositiveattractionlistDAO"%>
<%@page import="com.DAO.positiveFoodListDAO"%>
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

//positiveHotelListDAO dao = new positiveHotelListDAO();
//ArrayList<positiveVO> list = dao.positiveHotelList();

			int index = Integer.parseInt(request.getParameter("index"));
			String loc = request.getParameter("loc");
			String loc2 = request.getParameter("loc2");
			
			double locationX[] = new double[5];
			double locationY[] = new double[5];
			
			String blog[] = new String[5];
	
			String image[] = new String[6];
			String image2[] = new String[6];
			String image3[] = new String[6];
			String image4[] = new String[6];

					
			ArrayList<positiveVO> list = null;
			
			// learn more 버튼 누르면 그 지역 정보 나오게 하는 조건문
			if(loc.equals("food")) {
				positiveFoodListDAO dao = new positiveFoodListDAO();
				list = dao.positiveFoodList();
				//맛집 좌표
				locationX[0] = 35.125015723818684;
				locationY[0] = 126.90928834228104;
				locationX[1] = 35.15420799879157;
				locationY[1] = 126.8761462759716;
				locationX[2] = 35.17141486496733;
				locationY[2] = 126.86900923423421;
				locationX[3] = 35.1509789371583;
				locationY[3] = 126.89386771339359;
				locationX[4] = 35.15636268032151;
				locationY[4] = 126.85969999814591;
				
				//맛집 블로그 링크
				blog[0] = "https://m.blog.naver.com/ekwjd3011/222336048232";
				blog[1] = "https://m.blog.naver.com/incanto96/221780248786";
				blog[2] = "https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=flyhigh3010&logNo=221373346804";
				blog[3] = "https://m.blog.naver.com/korea0313/221962185290";
				blog[4] = "https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=cumicoomi&logNo=220632897223";
				
				// 이미지 배열 메인맛집 
				image[0] = "images/foodMain/dailyMain.jpg";
				image[1] = "images/foodMain/rayMain.jpg";
				image[2] = "images/foodMain/hanaMain.jpg";
				image[3] = "images/foodMain/designMain.jpg";
				image[4] = "images/foodMain/eogaMain.jpg";
				
				//이미지2 배열 서브 맛집
				image2[0] = "images/foodSub/dailySub1.jpg";
				image2[1] = "images/foodSub/raySub2.jpg";
				image2[2] = "images/foodSub/hanaSub3.jpg";
				image2[3] = "images/foodSub/designSub4.jpg";
				image2[4] = "images/foodSub/eogaSub5.jpg";
				
				//이미지3 배열 서브맛집 오른쪽 
				image3[0] = "images/foodSub/dailySub2.jpg";
				image3[1] = "images/foodSub/raySub3.jpg";
				image3[2] = "images/foodSub/hanaSub4.jpg";
				image3[3] = "images/foodSub/designSub5.jpg";
				image3[4] = "images/foodSub/eogaSub6.jpg";
				
			
			
				
				
				
				
				
				
				
				
			} else if(loc.equals("attr")) {
				PositiveattractionlistDAO dao = new PositiveattractionlistDAO();
				list = dao.address();
				
				//명소 좌표
				locationX[0] = 35.15434206635804;
				locationY[0] = 126.9013176925811;
				locationX[1] = 35.15487007701321;
				locationY[1] = 126.84892042046563;
				locationX[2] = 35.12879783382397;
				locationY[2] = 126.97014829557247;
				locationX[3] = 35.22369320729583;
				locationY[3] = 126.89161221369756;
				
				// 명소 블로그 링크
				blog[0] = "https://blog.naver.com/dmswkdi1/222259630651";
				blog[1] = "https://blog.naver.com/dreamsumin/221597073278";
				blog[2] = "https://blog.naver.com/bowoon0421/222378662155";
				blog[3] = "https://blog.naver.com/shalala1982/222379443275";
				
				// 명소 이미지
				image[0] = "images/attractionMain/ydmarketMain.jpg";
				image[1] = "images/attractionMain/pleasanttheaterMain.jpg";
				image[2] = "images/attractionMain/jeungsimsatempleMain.jpg";
				image[3] = "images/attractionMain/gwangjufamilylandMain.jpg";
				
				//이미지 배열 서브 왼쪽 
				image2[0] = "images/attractionSub/ydmarketSub9.jpg";
				image2[1] = "images/attractionSub/pleasanttheaterSub3.jpg";
				image2[2] = "images/attractionSub/jeungsimsatempleSub20.jpg";
				image2[3] = "images/attractionSub/gwangjufamilylandSub10.jpg";
				
				//이미지 배열 서브 오른쪽 
				image3[0] = "images/attractionSub/ydmarketSub7.jpg";
				image3[1] = "images/attractionSub/pleasanttheaterSub4.jpg";
				image3[2] = "images/attractionSub/jeungsimsatempleSub1.jpg";
				image3[3] = "images/attractionSub/gwangjufamilylandSub7.jpg";
				
			} else if(loc.equals("hotel")) {
				positiveHotelListDAO dao = new positiveHotelListDAO();
				list = dao.positiveHotelList();
				
				// 호텔 좌표
				locationX[0] = 35.143950860135895;
				locationY[0] = 126.91655902709476;
				locationX[1] = 35.14476014687259;
				locationY[1] = 126.91575039599986;
				locationX[2] = 35.22072814012051;
				locationY[2] = 126.85319517529469;
				locationX[3] = 35.16209088602493;
				locationY[3] = 126.9187290433647;
				locationX[4] = 35.14996032263111;
				locationY[4] = 126.85075724087294;
				
				// 호텔 메인 블로그 링크
				blog[0] = "https://www.goodchoice.kr/product/detail?ano=2780";
				blog[1] = "https://blog.naver.com/seoyujin0706/221734495450";
				blog[2] = "https://blog.naver.com/lovee4789/222265500311";
				blog[3] = "https://blog.naver.com/oozt6/221542841015";
				blog[4] = "https://blog.naver.com/4896630/222074677258";
				
				// 호텔 이미지
				image[0] = "images/hotelMain/hubMain3.jpg";
				image[1] = "images/hotelSub/bentleySub5.jpg";
				image[2] = "images/hotelSub/spotSub3.jpg";
				image[3] = "images/hotelSub/geumsoojangSub3.jpg";
				image[4] = "images/hotelSub/wloungeSub5.jpg";
				
				
				//이미지 배열 서브 왼쪽 
				image2[0] = "images/hotelSub/hubSub8.jpg";
				image2[1] = "images/hotelSub/bentleySub8.jpg";
				image2[2] = "images/hotelSub/spotSub4.jpg";
				image2[3] = "images/hotelSub/geumsoojangSub6.jpg";
				image2[4] = "images/hotelSub/wloungeSub2.jpg";
				
				//이미지 배열 서브 오른쪽 
				image3[0] = "images/hotelSub/hubSub9.jpg";
				image3[1] = "images/hotelSub/bentleySub2.jpg";
				image3[2] = "images/hotelSub/spotSub7.jpg";
				image3[3] = "images/hotelSub/geumsoojangSub7.jpg";
				image3[4] = "images/hotelSub/wloungeSub1.jpg";
				
			}
			
			
			

%>
<html lang="ko">
	<head>
		<title>Smart Trend/detailpage</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="trip/assets/css/main.css" />
		<style type="text/css">
			.hdfsj { width:100%; display: flex; justify-content: space-between; align-items: center; }
		</style>
		<noscript><link rel="stylesheet" href="trip/assets/css/noscript.css" /></noscript>
		<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zfj80en4gl"></script>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a href="index.jsp" class="title">Smart Trend</a>
				<nav>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="subpage.jsp?loc=<%=loc2 %>" class="active"><%=loc2 %></a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div  class="inner">
							<h1 class="major"><%=list.get(index).getName()%></h1>
							<span class="image fit"><img src=<%=image[index] %> alt="" /></span><br>
							<div class="hdfsj">
								<div style="width:30%; height:280px; display: inline-block; overflow: hidden;">
									<span class="image fit"><img style="width:100%;" src=<%=image2[index] %> alt="" /></span>
								</div>
								
								<div style="width:30%; height:280px;  display: inline-block; overflow: hidden;">
									<span class="image fit"><img style="width:100%;" src=<%=image3[index+1] %> alt="" /></span>
								</div>
								
								<div style="width:30%; height:280px;  display: inline-block; overflow: hidden;">
									<span class="image fit"><img style="width:100%;" src=<%=image3[index] %> alt="" /></span>
								</div>
							</div>
							<br>
							<div>
							<br><br><br>
							<big><b><a href= <%=blog[index] %>>>>>  <%=list.get(index).getName()%>에 관한 정보를 더 보시려면?</a></b></big>
							<br><br><br>
							</div>
							<div id="map" style="width:100%;height: 388px; margin-bottom: 150px;"></div>
							<script>
							var HOME_PATH = window.HOME_PATH || '.';
			                //지도 생성
			                let locX = <%=locationX[index] %>;
			                let locY = <%=locationY[index] %>;
			                var gwangju = new naver.maps.LatLng(locX, locY),
			                    map = new naver.maps.Map('map', {
			                    	//지도의 중심좌표
			                        center: gwangju.destinationPoint(50, 50),
			                      	//지도의 확대 레벨
			                        zoom: 18
			                    });
			                	marker = new naver.maps.Marker({
			                    position: gwangju,
			                    map: map
			                });
		                	var contentString = [
		                        '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
		                        '<center><h4 style="color : #000000"><%=list.get(index).getName()%></h4></center>',
		                        '<p><%=list.get(index).getAddress()%></P>',
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