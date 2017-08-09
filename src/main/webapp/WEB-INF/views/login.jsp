<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login here</title>
</head>
<body><br><br>
<br>
<br>

<br>
<br>





<br><div class="container-fluid">
<div class="panel panel-primary" style="width:600px; height:200px; margin:auto;">

<div class="panel-heading" style="text-align:center; font-size:25px">Login Here</div>

<div class="panel-body" style="background:#e8f3f8">

<c:url value="/j_spring_security_check" var="login"></c:url>
<form action="${login }" method="post">
Enter Username <input type="text" name="j_username"><br>
Enter password <input type="password" name="j_password"><br>


<br>
<input type="submit" value="Login">
</form>
</div>
</div>
</div>
</body>
</html><%-- <%@ include file="footer.jsp" %> --%>