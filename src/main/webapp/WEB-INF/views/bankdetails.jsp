<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="header.jsp"%>

</head>
<body>

	
<div class="container" style="width: 40%; margin-top: 100px">
		<!-- http://localhost:8080/ecommerce/saveproduct -->

		
			
	<div class="container-wrapper">
	
		 <div class="panel panel-heading" style="background-color: red; height: 80px">
			
				<h1><b>USE YOUR DEBIT CARD </b></h1>

		 </div>
	    

		<div class="panel panel-body" style="background-color: green; height: 280px">
				<c:url value="thanks" var="url"></c:url>
				  <form:form action="${url}" modelAttribute="order">
			                    ENTER CARD NUMBER:
				                <input TYPE="password"  value="card">
		                        <br><br>
			                    ID=ORDER ID: S18006500${order.orderId }<br><br>
			                    CARD HOLDER NAME:
				                <input TYPE="text"  value="name"><br>
				                <br>
		                        ENTER 3 DIGIT CARD PIN:
				                <input TYPE="password">
                                <br>
			                    <br>
			                    <input type="submit" value="confirm">

				  </form:form>
			
			
		</div>
		
		
		</div>
		

	</div>
</body>
</html>