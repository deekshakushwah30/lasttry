<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
	<%@ page isELIgnored="false" %>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >


<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

<script type="text/javacsript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    

</head>


<body>
<nav class="navbar navbar-inverse">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <button type="button" class="navbar-toggle"  data-toggle="collapse" data-target="#collapse-exaple" aria-expanded="false">
 
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  </button>
    <%-- <div class="navbar-header">
     
    <li>
    <c:url value="resources/images/logo.jpg" var="url5"></c:url>
    
      <a class="navbar-brand" href="login">
      <img src="${url5 }" class="img-circle" height="150px" width="150px">BOOKS MANIA
      </a>
 
    </li>
    </div> --%>
    <div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
		
		
		
		     
    <li>
    <c:url value="resources/images/logo.jpg" var="url5"></c:url>
    
      <a class="navbar-brand" href="login">
      <img src="${url5 }" class="img-circle" height="100px" width="100px">BOOKS MANIA
      </a>
 
    </li>
      <li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
     <li><a href="aboutus"><span class="glyphicon glyphicon-education"></span>about us</a></li>
      <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-call"></span>contact
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="mailto:deekshakushwah@gmail.com">email</a></li>
          <li><c:url value="/call" var="url3"></c:url><a href="${url2 }">Phone</a></li>
        </ul>
      </li>
      <li>
      <li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<security:authorize access="hasRole('ROLE_ADMIN')">
			
      <c:url value="/admin_getproductform" var="url3"></c:url>
      <a href="${url3 }"><span class="glyphicon glyphicon-plus"></span>Add Product</a>
      </security:authorize>
      </c:if>
      </li>
			<c:url value="/getallproducts" var="url4"></c:url><li><a href="${url4 }"><span class="glyphicon glyphicon-browse"></span>Browse All Products</a></li>
     <li class="dropdown">
     <a href="" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-search"></span>
        select by category<b class="caret"></b> </a>
  <ul class="dropdown-menu">
  <li><c:forEach items="${categorie }" var="c">
  <c:url value="/searchbycategory?searchCondition=${p.category.categoryname }" var="url"></</c:url>
  <a href="${url }">${c.categoryname }</a>
  </c:forEach>
  <c:url value="/searchbycategory?searchCondition=All" var="url1">
  </c:url><a href="${url1 }">All</a></li></ul></li>
  <li>
  <security:authorize access="hasRole('ROLE_USER')">
  <li><a href="<c:url value="/cartgetcart"></c:url>">Cart</a></li>
  </security:authorize></li>
  <ul class="nav navbar-nav navbar-right">
  <li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<a href="">Welcome ${pageContext.request.userPrincipal.name }</a>
			</c:if>
			</li>
			
			<c:if test="${pageContext.request.userPrincipal.name==null }">
			
      <li><c:url value="/registrationform" var="url5"></c:url>
      <a href="${url5 }"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
     
<c:url value="/login" var="url6"></c:url>
		    <li><a href="${url6 }"><span class="glyphicon glyphicon-user"></span>Sign In</a></li>	
		    </c:if>
		    <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		    <li><a href="${logoutUrl }">logout</a></li>
		    </c:if>


    </ul>
  </ul>
 
  
 
     
    
  </div>
  </div>
</nav>
</nav>
 
</body>
</html>