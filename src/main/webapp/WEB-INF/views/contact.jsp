<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@ include file="header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>contact</title>
</head>
<body>
<br>
<br>
<br>

<div class="container-fluid">

<div class = "panel panel-default">
   <div class = "panel-heading panel-danger" style="background:red;">
      <h3><center>
        CONTACT US AT:</center>
      </h3>
   </div>
   
   <div class = "panel-body panel-info">
      <span class="glyphicons glyphicons-envelope">mail us at<a href="mailto:deekshakushwah@gmail.com"> deekshakushwah@gmail.com</a></span>
      <br>
      <br>
      <span class="glyphicons glyphicons-earphone">call at 9877766554</span>
      <br>
      <br>  
    <h5>Add your queries here</h5>
 
 


		<div class="panel panel-body" style="background-color: yellow; height: 280px">
				<c:url value="thanks" var="url"></c:url>
				  <form:form action="${url}" modelAttribute="order">
			                    Enter Email address
				                <input TYPE="text"  value=" ">
		                        <br><br>
			                    
			                  Enter Name:
				                <input TYPE="text"  value=" "><br>
				                <br>
		                        Enter query:
				                <input type="file">
                                <br>
			                    <br>
			                    <input type="submit" value="query">

				  </form:form>
			
			
		</div>
		
		


	
 
 
 
   </div>
</div>

</div>
</body>
</html>
<%@ include file="footer.jsp" %>