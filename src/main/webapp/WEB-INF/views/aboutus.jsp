<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <script src="https://maps.googleapis.com/maps/api/js?callback=myMap"></script>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
function myMap() {
  var mapCanvas = document.getElementById("map");
  var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.2), zoom: 10
  };
  var map = new google.maps.Map(mapCanvas, mapOptions);
}
</script>



</head>
<body>
<div class="container"  "background-color: #black">
		<div class="panel panel-primary">
			<div class="panel-heading"  "background-color:#red ">
				<b><h2><center>OUR MISSION</center></h2></b>
				
			</div>
			<div class="panel-body"  "background-color:#green ">
				we want to make our customers happy by saving there time for searching different book for their studies in different sites.
				As much as our customers happy, as soon as our goal will fulfill.
				
				<br>
				<br>
				<br>
				<br>
				track our location
				<div id="map" style="width:400px;height:400px;background:yellow">
				</div>

           </div>
		</div>
		</div>

</body>
</html>
<%@ include file="footer.jsp" %>