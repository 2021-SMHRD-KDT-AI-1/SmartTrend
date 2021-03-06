<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Lens by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
	<title>코로나 청정지역</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zfj80en4gl"></script>
</head>

<body class="is-preload-0 is-preload-1 is-preload-2">

	<!-- Main -->
	<div id="main">

		<!-- Header -->
		<header id="header">
			<h1>청정지역</h1>
			<p>어디가 있을까??? <br><a href="http://ncov.mohw.go.kr/">코로나바이러스감염증-19</a></p>
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
				<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
			</ul>
		</header>

		<!-- Thumbnail 지도가 표시되는 부분-->
		<section id="thumbnails">
			<article>
				<!-- <a class="thumbnail" href="http://127.0.0.1:5500/html5up-lens2/gwangju.html" data-position="left center"><img src="images/thumbs/01.jpg" alt="" /></a> -->
				<div id="map" style="width:1200px;height: 1000px;"></div>
				<script>
                var HOME_PATH = window.HOME_PATH || '.';
                //지도 생성
                var gwangju = new naver.maps.LatLng(36.497859, 127.734243),
                    map = new naver.maps.Map('map', {
                    	//지도의 중심좌표
                        center: gwangju.destinationPoint(0, 500),
                      	//지도의 확대 레벨
                        zoom: 7
                    }),
                    //마커생성	
                    //광주 마커 추가
                    markerGwangju = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.160037, 126.851429),
                        icon:{
                        	//마커 이미지
							url:HOME_PATH + "/images/marker/good3.png",
							//마커 이미지 크기
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	//울산 마커
                    markerUlsan = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.53971397065472, 129.3115419833993),
                        icon:{
                        	//마커 이미지
							url:HOME_PATH + "/images/marker/good3.png",
							//마커 이미지 크기
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// 부산 마커
                    markerBusan = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.17994006018334, 129.07495023492874),
                        icon:{
                        	//마커 이미지
							url:HOME_PATH + "/images/marker/good3.png",
							//마커 이미지 크기
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// 대전 마커
                    markerDaejeon = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(36.35059285100311, 127.38482426465373),
                        icon:{
                        	//마커 이미지
							url:HOME_PATH + "/images/marker/good3.png",
							//마커 이미지 크기
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// 대구 마커
                    markerDaegu = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.871823806233884, 128.6018633083427),
                        icon:{
                        	//마커 이미지
							url:HOME_PATH + "/images/marker/good3.png",
							//마커 이미지 크기
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// 서울 마커 추가
                    markerSeoul = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(37.56668151413355, 126.9781473929723),
                        icon:{
                        	//마커 이미지
							url:HOME_PATH + "/images/marker/good3.png",
							//마커 이미지 크기
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// 제주 마커 추가
                    markerJeju = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(33.255997839650576, 126.5601508961923),
                        icon:{
                        	//마커 이미지
							url:HOME_PATH + "/images/marker/good3.png",
							//마커 이미지 크기
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
              
				//마커 정보창에 표출될 정보
				// 광주 정보창
                var contentStringGwangju = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">광주 현황</h3>',
                    '   <p>새 확진자 : 5 <br/>',
                    '기존 확진자 : 235 <br/>',
                    '거리두기 단계 : 1.5 <br/>',
                    '영업시간 제한 : 11시 <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// 울산 정보창
                var contentStringUlsan = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">울산 현황</h3>',
                    '   <p>새 확진자 : 5 <br/>',
                    '기존 확진자 : 235 <br/>',
                    '거리두기 단계 : 1.5 <br/>',
                    '영업시간 제한 : 11시 <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// 부산 정보창
                var contentStringBusan = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">부산 현황</h3>',
                    '   <p>새 확진자 : 5 <br/>',
                    '기존 확진자 : 235 <br/>',
                    '거리두기 단계 : 1.5 <br/>',
                    '영업시간 제한 : 11시 <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// 대전 정보창
                var contentStringDaejeon = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">대전 현황</h3>',
                    '   <p>새 확진자 : 5 <br/>',
                    '기존 확진자 : 235 <br/>',
                    '거리두기 단계 : 1.5 <br/>',
                    '영업시간 제한 : 11시 <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				//대구 정보창
                var contentStringDaegu = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">대구 현황</h3>',
                    '   <p>새 확진자 : 5 <br/>',
                    '기존 확진자 : 235 <br/>',
                    '거리두기 단계 : 1.5 <br/>',
                    '영업시간 제한 : 11시 <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// 서울 정보창
                var contentStringSeoul = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">서울 현황</h3>',
                    '   <p>새 확진자 : 5 <br/>',
                    '기존 확진자 : 235 <br/>',
                    '거리두기 단계 : 1.5 <br/>',
                    '영업시간 제한 : 11시 <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// 제주 정보창
                var contentStringJeju = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">제주 현황</h3>',
                    '   <p>새 확진자 : 5 <br/>',
                    '기존 확진자 : 235 <br/>',
                    '거리두기 단계 : 1.5 <br/>',
                    '영업시간 제한 : 11시 <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
		

				//마커 정보창 생성
                var infowindowGwangju = new naver.maps.InfoWindow({
                    content: contentStringGwangju
                });  
				var infowindowUlsan = new naver.maps.InfoWindow({
                    content: contentStringUlsan
                });
				var infowindowBusan = new naver.maps.InfoWindow({
                    content: contentStringBusan
                });
				var infowindowDaejeon = new naver.maps.InfoWindow({
                    content: contentStringDaejeon
                });
				var infowindowDaegu = new naver.maps.InfoWindow({
                    content: contentStringDaegu
                });
				var infowindowSeoul = new naver.maps.InfoWindow({
                    content: contentStringSeoul
                });
				var infowindowJeju = new naver.maps.InfoWindow({
                    content: contentStringJeju
                });
			

				
				//마커 마우스 올릴시 광주정보창 생성
                naver.maps.Event.addListener(markerGwangju, "mouseover", function () {
                    infowindowGwangju.open(map, markerGwangju);
                });
				//마커 마우스 내릴시 광주정보창 제거
                naver.maps.Event.addListener(markerGwangju, 'mouseout', function () {
                    infowindowGwangju.close();
                });
				//마커 마우스 올릴시 울산마커정보창 생성
                naver.maps.Event.addListener(markerUlsan, "mouseover", function () {
                    infowindowUlsan.open(map, markerUlsan);
                });
				//마커 마우스 내릴시 울산정보창 제거
                naver.maps.Event.addListener(markerUlsan, 'mouseout', function () {
                    infowindowUlsan.close();
                });
				//마커 마우스 올릴시 부산마커정보창 생성
                naver.maps.Event.addListener(markerBusan, "mouseover", function () {
                    infowindowBusan.open(map, markerBusan);
                });
				//마커 마우스 내릴시 부산정보창 제거
                naver.maps.Event.addListener(markerBusan, 'mouseout', function () {
                    infowindowBusan.close();
                });
				//마커 마우스 올릴시 대전마커정보창 생성
                naver.maps.Event.addListener(markerDaejeon, "mouseover", function () {
                    infowindowDaejeon.open(map, markerDaejeon);
                });
				//마커 마우스 내릴시 대전정보창 제거
                naver.maps.Event.addListener(markerDaejeon, 'mouseout', function () {
                    infowindowDaejeon.close();
                });
				//마커 마우스 올릴시 대구마커정보창 생성
                naver.maps.Event.addListener(markerDaegu, "mouseover", function () {
                    infowindowDaegu.open(map, markerDaegu);
                });
				//마커 마우스 내릴시 대구정보창 제거
                naver.maps.Event.addListener(markerDaegu, 'mouseout', function () {
                    infowindowDaegu.close();
                });
				//마커 마우스 올릴시 서울마커정보창 생성
                naver.maps.Event.addListener(markerSeoul, "mouseover", function () {
                    infowindowSeoul.open(map, markerSeoul);
                });
				//마커 마우스 내릴시 서울정보창 제거
                naver.maps.Event.addListener(markerSeoul, 'mouseout', function () {
                    infowindowSeoul.close();
                });
				//마커 마우스 올릴시 제주마커정보창 생성
                naver.maps.Event.addListener(markerJeju, "mouseover", function () {
                    infowindowJeju.open(map, markerJeju);
                });
				//마커 마우스 내릴시 제주정보창 제거
                naver.maps.Event.addListener(markerJeju, 'mouseout', function () {
                    infowindowJeju.close();
                });
		
				
                //클릭시 발생하는 이벤트를 정의
                function getClickHandlerGw(seq) {
                    return function (e) {
                    	location.href = "subpage.jsp?loc='gwangju'";
                    }
                }
                function getClickHandlerUl(seq) {
                    return function (e) {
                    	location.href = "trippage.html?loc=Ulsan";
                    }
                }
                function getClickHandlerBu(seq) {
                    return function (e) {
                    	location.href = "trippage.html?loc=Busan";
                    }
                }
                function getClickHandlerDj(seq) {
                    return function (e) {
                    	location.href = "trippage.html?loc=Daejeon";
                    }
                }
                function getClickHandlerDg(seq) {
                    return function (e) {
                    	location.href = "trippage.html?loc=Daegu";
                    }
                }
                function getClickHandlerSe(seq) {
                    return function (e) {
                    	location.href = "trippage.html?loc=Seoul";
                    }
                }
                function getClickHandlerJe(seq) {
                    return function (e) {
                    	location.href = "trippage.html?loc=Jeju";
                    }
                }
               naver.maps.Event.addListener(markerGwangju, 'click', getClickHandlerGw());
               naver.maps.Event.addListener(markerUlsan, 'click', getClickHandlerUl());
               naver.maps.Event.addListener(markerBusan, 'click', getClickHandlerBu());
               naver.maps.Event.addListener(markerDaejeon, 'click', getClickHandlerDj());
               naver.maps.Event.addListener(markerDaegu, 'click', getClickHandlerDg());
               naver.maps.Event.addListener(markerSeoul, 'click', getClickHandlerSe());
               naver.maps.Event.addListener(markerJeju, 'click', getClickHandlerJe());
     
                        
               
                			//var marker = markers[seq],
                           // infoWindow = infoWindows[seq];

                //for (var i=0, ii=markers.length; i<ii; i++) {
                //    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
              // }
                 //마커에 이벤트 추가, 단 지금은 하나의 마커여서 이렇게 추가했지만 

                //for (var i=0, ii=markers.length; i<ii; i++) {
                   // naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
              //  }
                 //마커에 이벤트 추가, 단 지금은 하나의 마커여서 이렇게 추가했지만 

                //나중에 위에 주석처리한 코드처럼 여러개의 마커에 한꺼번에 이벤트 추가할수 있음
               // naver.maps.Event.addListener(markerGwangju, 'click', getClickHandler(1));
				</script>
			</article>
		</section>

		<!-- Footer -->
		<footer id="footer">
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a>.</li>
			</ul>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>