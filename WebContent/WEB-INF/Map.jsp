<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyBcPN6qBVuLMVDXW-reLi71Vy9FjiRmmKc&sensor=false"></script>
<script>
	function initialize() {
		var Y_point = 35.110850;
		var X_point = 126.877517;
		var zoomLevel = 16;
		var markerTitle = "CGI센터";
		var markerMaxWidth = 300;
		var myLatlng = new google.maps.LatLng(Y_point, X_point);
		var mapOptions = {
				zoom:zoomLevel,
				center:myLatlng,
				mapTypeId:google.maps.MapTypeId.ROADMAP
		
		}
		
		var map = new google.maps.Map(document.getElementById('map_view'), mapOptions);
		var marker = new google.maps.Marker({
			
			position:myLatlng,
			map:map,
			title:markerTitle
			
		});
		
		var infowindow = new google.maps.maps.InfoWindow(
					{
						content:contentString,
						maxWidth:markerMaxWidth
						
						
					}
		
		);
		
		google.maps.event.addListener(marker, 'click',function(){
			infowindow.open(map,marker);
		});
		
	}

</script>
</head>
<body onload = "initialize()">
	<div id ="map_view" style = "width:500px;height:300px;"></div>

</body>
</html>