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
	<title>�ڷγ� û������</title>
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
			<h1>û������</h1>
			<p>��� ������??? <br><a href="http://ncov.mohw.go.kr/">�ڷγ����̷���������-19</a></p>
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
				<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
			</ul>
		</header>

		<!-- Thumbnail ������ ǥ�õǴ� �κ�-->
		<section id="thumbnails">
			<article>
				<!-- <a class="thumbnail" href="http://127.0.0.1:5500/html5up-lens2/gwangju.html" data-position="left center"><img src="images/thumbs/01.jpg" alt="" /></a> -->
				<div id="map" style="width:1200px;height: 1000px;"></div>
				<script>
                var HOME_PATH = window.HOME_PATH || '.';
                //���� ����
                var gwangju = new naver.maps.LatLng(36.497859, 127.734243),
                    map = new naver.maps.Map('map', {
                    	//������ �߽���ǥ
                        center: gwangju.destinationPoint(0, 500),
                      	//������ Ȯ�� ����
                        zoom: 7
                    }),
                    //��Ŀ����	
                    //���� ��Ŀ �߰�
                    markerGwangju = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.160037, 126.851429),
                        icon:{
                        	//��Ŀ �̹���
							url:HOME_PATH + "/images/marker/good3.png",
							//��Ŀ �̹��� ũ��
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	//��� ��Ŀ
                    markerUlsan = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.53971397065472, 129.3115419833993),
                        icon:{
                        	//��Ŀ �̹���
							url:HOME_PATH + "/images/marker/good3.png",
							//��Ŀ �̹��� ũ��
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// �λ� ��Ŀ
                    markerBusan = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.17994006018334, 129.07495023492874),
                        icon:{
                        	//��Ŀ �̹���
							url:HOME_PATH + "/images/marker/good3.png",
							//��Ŀ �̹��� ũ��
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// ���� ��Ŀ
                    markerDaejeon = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(36.35059285100311, 127.38482426465373),
                        icon:{
                        	//��Ŀ �̹���
							url:HOME_PATH + "/images/marker/good3.png",
							//��Ŀ �̹��� ũ��
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// �뱸 ��Ŀ
                    markerDaegu = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(35.871823806233884, 128.6018633083427),
                        icon:{
                        	//��Ŀ �̹���
							url:HOME_PATH + "/images/marker/good3.png",
							//��Ŀ �̹��� ũ��
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// ���� ��Ŀ �߰�
                    markerSeoul = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(37.56668151413355, 126.9781473929723),
                        icon:{
                        	//��Ŀ �̹���
							url:HOME_PATH + "/images/marker/good3.png",
							//��Ŀ �̹��� ũ��
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
                	// ���� ��Ŀ �߰�
                    markerJeju = new naver.maps.Marker({
                        map: map,
                        position: new naver.maps.LatLng(33.255997839650576, 126.5601508961923),
                        icon:{
                        	//��Ŀ �̹���
							url:HOME_PATH + "/images/marker/good3.png",
							//��Ŀ �̹��� ũ��
                            size: new naver.maps.Size(30 , 30),
                        }
                    });
              
				//��Ŀ ����â�� ǥ��� ����
				// ���� ����â
                var contentStringGwangju = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">���� ��Ȳ</h3>',
                    '   <p>�� Ȯ���� : 5 <br/>',
                    '���� Ȯ���� : 235 <br/>',
                    '�Ÿ��α� �ܰ� : 1.5 <br/>',
                    '�����ð� ���� : 11�� <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// ��� ����â
                var contentStringUlsan = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">��� ��Ȳ</h3>',
                    '   <p>�� Ȯ���� : 5 <br/>',
                    '���� Ȯ���� : 235 <br/>',
                    '�Ÿ��α� �ܰ� : 1.5 <br/>',
                    '�����ð� ���� : 11�� <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// �λ� ����â
                var contentStringBusan = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">�λ� ��Ȳ</h3>',
                    '   <p>�� Ȯ���� : 5 <br/>',
                    '���� Ȯ���� : 235 <br/>',
                    '�Ÿ��α� �ܰ� : 1.5 <br/>',
                    '�����ð� ���� : 11�� <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// ���� ����â
                var contentStringDaejeon = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">���� ��Ȳ</h3>',
                    '   <p>�� Ȯ���� : 5 <br/>',
                    '���� Ȯ���� : 235 <br/>',
                    '�Ÿ��α� �ܰ� : 1.5 <br/>',
                    '�����ð� ���� : 11�� <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				//�뱸 ����â
                var contentStringDaegu = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">�뱸 ��Ȳ</h3>',
                    '   <p>�� Ȯ���� : 5 <br/>',
                    '���� Ȯ���� : 235 <br/>',
                    '�Ÿ��α� �ܰ� : 1.5 <br/>',
                    '�����ð� ���� : 11�� <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// ���� ����â
                var contentStringSeoul = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">���� ��Ȳ</h3>',
                    '   <p>�� Ȯ���� : 5 <br/>',
                    '���� Ȯ���� : 235 <br/>',
                    '�Ÿ��α� �ܰ� : 1.5 <br/>',
                    '�����ð� ���� : 11�� <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
				// ���� ����â
                var contentStringJeju = [
                    '<div class="iw_inner" style="box-sizing: border-box; color : #000000">',
                    '   <h3 style="color : #000000">���� ��Ȳ</h3>',
                    '   <p>�� Ȯ���� : 5 <br/>',
                    '���� Ȯ���� : 235 <br/>',
                    '�Ÿ��α� �ܰ� : 1.5 <br/>',
                    '�����ð� ���� : 11�� <br/>',
                    '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
                    '   </p>',
                    '</div>'
                ].join('');
		

				//��Ŀ ����â ����
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
			

				
				//��Ŀ ���콺 �ø��� ��������â ����
                naver.maps.Event.addListener(markerGwangju, "mouseover", function () {
                    infowindowGwangju.open(map, markerGwangju);
                });
				//��Ŀ ���콺 ������ ��������â ����
                naver.maps.Event.addListener(markerGwangju, 'mouseout', function () {
                    infowindowGwangju.close();
                });
				//��Ŀ ���콺 �ø��� ��긶Ŀ����â ����
                naver.maps.Event.addListener(markerUlsan, "mouseover", function () {
                    infowindowUlsan.open(map, markerUlsan);
                });
				//��Ŀ ���콺 ������ �������â ����
                naver.maps.Event.addListener(markerUlsan, 'mouseout', function () {
                    infowindowUlsan.close();
                });
				//��Ŀ ���콺 �ø��� �λ긶Ŀ����â ����
                naver.maps.Event.addListener(markerBusan, "mouseover", function () {
                    infowindowBusan.open(map, markerBusan);
                });
				//��Ŀ ���콺 ������ �λ�����â ����
                naver.maps.Event.addListener(markerBusan, 'mouseout', function () {
                    infowindowBusan.close();
                });
				//��Ŀ ���콺 �ø��� ������Ŀ����â ����
                naver.maps.Event.addListener(markerDaejeon, "mouseover", function () {
                    infowindowDaejeon.open(map, markerDaejeon);
                });
				//��Ŀ ���콺 ������ ��������â ����
                naver.maps.Event.addListener(markerDaejeon, 'mouseout', function () {
                    infowindowDaejeon.close();
                });
				//��Ŀ ���콺 �ø��� �뱸��Ŀ����â ����
                naver.maps.Event.addListener(markerDaegu, "mouseover", function () {
                    infowindowDaegu.open(map, markerDaegu);
                });
				//��Ŀ ���콺 ������ �뱸����â ����
                naver.maps.Event.addListener(markerDaegu, 'mouseout', function () {
                    infowindowDaegu.close();
                });
				//��Ŀ ���콺 �ø��� ���︶Ŀ����â ����
                naver.maps.Event.addListener(markerSeoul, "mouseover", function () {
                    infowindowSeoul.open(map, markerSeoul);
                });
				//��Ŀ ���콺 ������ ��������â ����
                naver.maps.Event.addListener(markerSeoul, 'mouseout', function () {
                    infowindowSeoul.close();
                });
				//��Ŀ ���콺 �ø��� ���ָ�Ŀ����â ����
                naver.maps.Event.addListener(markerJeju, "mouseover", function () {
                    infowindowJeju.open(map, markerJeju);
                });
				//��Ŀ ���콺 ������ ��������â ����
                naver.maps.Event.addListener(markerJeju, 'mouseout', function () {
                    infowindowJeju.close();
                });
		
				
                //Ŭ���� �߻��ϴ� �̺�Ʈ�� ����
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
                 //��Ŀ�� �̺�Ʈ �߰�, �� ������ �ϳ��� ��Ŀ���� �̷��� �߰������� 

                //for (var i=0, ii=markers.length; i<ii; i++) {
                   // naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
              //  }
                 //��Ŀ�� �̺�Ʈ �߰�, �� ������ �ϳ��� ��Ŀ���� �̷��� �߰������� 

                //���߿� ���� �ּ�ó���� �ڵ�ó�� �������� ��Ŀ�� �Ѳ����� �̺�Ʈ �߰��Ҽ� ����
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