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

	<jsp:useBean id="now" class="java.util.Date" />

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1><b>USE YOUR DEBIT CARD </b></h1>

				 
			</div>

			<div class="container" >
				<c:url value="/cartconfirm{id}" var="url"></c:url>
				<form:form action="${url}" modelAttribute="order">
			ENTER CARD NUMBER:	<input TYPE="text"  value="card">
			<br>
			<br>
			<input type="submit" value="confirm">


				</form:form>
			</div>
		</div>

	</div>
</body>
</html>