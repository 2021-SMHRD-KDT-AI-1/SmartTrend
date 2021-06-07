<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zfj80en4gl"></script>
</head>
<body>
    <center><div id="map" style="width:840px;height: 700px;"></div></center>

<script>
var HOME_PATH = window.HOME_PATH || '.';

var gwangju = new naver.maps.LatLng(35.159985, 126.851346),
    map = new naver.maps.Map('map', {
        center: gwangju.destinationPoint(0, 500),
        zoom: 8
    }),
    marker = new naver.maps.Marker({
        map: map,
        position: gwangju
    });

var contentString = [
        '<div class="iw_inner">',
        '   <h3>광주 현황</h3>',
        '   <p>새 확진자 : 5 <br/>',
            '기존 확진자 : 235 <br/>',
            '거리두기 단계 : 1.5 <br/>',
            '영업시간 제한 : 11시 <br/>',
        '   <a href="http://ncov.mohw.go.kr/" target="_blank">코로나바이러스감염증-19(COVID-19)</a>',
        '   </p>',
        '</div>'
    ].join('');
    

var infowindow = new naver.maps.InfoWindow({
    content: contentString
    
});


naver.maps.Event.addListener(marker, "mouseover", function() {
    infowindow.open(map, marker);
});
naver.maps.Event.addListener(marker, 'mouseout', function() {
    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
    infowindow.close();
});

//클릭시 발생하는 이벤트를 정의
function getClickHandler(seq) {
    return function(e) {
        //var marker = markers[seq],
        //    infoWindow = infoWindows[seq];

        location.href="http://ncov.mohw.go.kr/";

    }
}

/*for (var i=0, ii=markers.length; i<ii; i++) {
    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
}*/
//마커에 이벤트 추가, 단 지금은 하나의 마커여서 이렇게 추가했지만
//나중에 위에 주석처리한 코드처럼 여러개의 마커에 한꺼번에 이벤트 추가할수 있음
naver.maps.Event.addListener(marker, 'click', getClickHandler(1));
</script>
</body>
</html>