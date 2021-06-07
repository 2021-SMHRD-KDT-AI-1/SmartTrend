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
        '   <h3>���� ��Ȳ</h3>',
        '   <p>�� Ȯ���� : 5 <br/>',
            '���� Ȯ���� : 235 <br/>',
            '�Ÿ��α� �ܰ� : 1.5 <br/>',
            '�����ð� ���� : 11�� <br/>',
        '   <a href="http://ncov.mohw.go.kr/" target="_blank">�ڷγ����̷���������-19(COVID-19)</a>',
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
    // ��Ŀ�� ���콺�ƿ� �̺�Ʈ�� �߻��ϸ� ���������츦 �����մϴ�
    infowindow.close();
});

//Ŭ���� �߻��ϴ� �̺�Ʈ�� ����
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
//��Ŀ�� �̺�Ʈ �߰�, �� ������ �ϳ��� ��Ŀ���� �̷��� �߰�������
//���߿� ���� �ּ�ó���� �ڵ�ó�� �������� ��Ŀ�� �Ѳ����� �̺�Ʈ �߰��Ҽ� ����
naver.maps.Event.addListener(marker, 'click', getClickHandler(1));
</script>
</body>
</html>