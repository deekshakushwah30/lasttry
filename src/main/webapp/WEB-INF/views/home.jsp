
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container" style="width: 95%; margin-top: 80px" "background-color: black">
		<div class="panel panel-primary">
			<div class="panel-heading"  "background-color: RED">
				<b><h2><center>purchase your books,purchase your future</center></h2>
				<h3>All kind of books are available here...........</h3></b>
			</div>
			<div class="panel-body" style="padding-top: 40px;">
				<div class="col-md-2">
					<c:url value="/resources/images/p.jpg" var="imageUrl">
					</c:url>
					<img src="${imageUrl}"  class="img-circle"  style="width: 60%; height: 60%;">
				</div>
				<div class="col-md-2">
					<c:url value="/resources/images/h.jpg" var="imageUrl">
					</c:url>
					<img src="${imageUrl}"  class="img-circle"  style="width: 60%; height: 60%; ">
				</div>
				<div class="col-md-2">
					<c:url value="/resources/images/23.jpg" var="imageUrl">
					</c:url>
					<img src="${imageUrl}"  class="img-circle"  style="width: 60%; height: 60%; ">
				</div>
				<div class="col-md-2">
					<c:url value="/resources/images/21.jpg" var="imageUrl">
					</c:url>
					<img src="${imageUrl}"  class="img-circle"  style="width: 60%; height: 60%;">
				</div>
				
		</div>
		</div>
		</div>
		

</body>
</html>
<%@ include file="footer.jsp" %>