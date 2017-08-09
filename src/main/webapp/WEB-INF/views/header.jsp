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
 
<!-- <script type="text/javascript">
	function Validate() {

		var searchvalue = document.getElementById("searchAttribute").value;

		if (searchvalue == "") {
			alert("Please Search Something");
			return false;
		}

		return true;
	}
</script>
 -->
 
</head>


<body>
<nav class="navbar navbar-inverse navbar-fixed-top">

  <div class="container-fluid">
  <button type="button" class="navbar-toggle"  data-toggle="collapse" data-target="#collapse-example" >
 

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
			<ul class="nav navbar-nav navbar-left">
		
		       
		
		     
    <li>
    <c:url value="resources/images/logo.jpg" var="url5"></c:url>
    
      <a class="navbar-brand" href="index">
      <img src="${url5 }" class="img-circle" style="height:50px; width: 100px; margin-top: -13px; margin-left: -13px">
      </a>
      <a class="navbar-brand" href="index" style="margin-top:-13px; margin-left:-5px">
      BOOKS MANIA
       </a>
 
    </li>
      <li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
     <li ><a href="aboutus"><span class="glyphicon glyphicon-education"></span>about us</a></li>
     
       <li><a  href="contact">
       <span class="glyphicon glyphicon-phone"></span>contact
       </a></li>
      
      <li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<security:authorize access="hasRole('ROLE_ADMIN')">
			
      <c:url value="/admin_getproductform" var="url3"></c:url>
      <a href="${url3 }"><span class="glyphicon glyphicon-plus"></span>Add Product</a>
      </security:authorize>
      </c:if>
      </li>
			<c:url value="/getallproducts" var="url4"></c:url><li><a href="${url4 }"><span class="glyphicon glyphicon-list"></span> BOOKS</a></li>
  <%--     <li class="dropdown">
     <a href="" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-search"></span>
        select by category<b class="caret"></b> </a>
  <ul class="dropdown-menu">
  <li><c:forEach items="${categorie }" var="c">
  <c:url value="/searchbycategory?searchCondition=${product.category.categoryname }" var="url"></</c:url>
  <a href="${url }">${c.categoryname }</a>
  </c:forEach>
  <c:url value="/searchbycategory?searchCondition=All" var="url1">
  </c:url><a href="${url1 }">All</a></li></ul></li>
   --%>
 <%--  <li>
  <form action="searchproduct" method="get"
				class="navbar-form pull-left">
				<div class="input-group" style=" height: 43px">
					<input type="text" class="form-control" name="Search here"
						id="searchAttribute" placeholder="Search here"
						style="width: 200px; height: 43px" />
					<div class="input-group-btn">
					<c:url value="/getallproducts" var="url8"></c:url>
						<a href="${url8 }">
							<button class="btn btn-default" type="submit"
								onclick="return Validate()" style="background-color: #ffe11b"
								href="${url8 }">
								<i class="glyphicon glyphicon-search"
									style="height: 28.4px; width: 20px; padding-top: 7px"></i>
							</button>
						</a>
					</div>
				</div>
			</form>
  </li> 
   --%>
  
  
  <li>
  <security:authorize access="hasRole('ROLE_USER')">
  <li><a href="<c:url value="/cartgetcart"></c:url>">Cart</a></li>
  </security:authorize></li></ul>
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
		    <li><a href="${url6 }"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>	
		    </c:if>
		    <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		    <li><a href="${logoutUrl }">logout</a></li>
		    </c:if>
		    </ul>
		    
		    
		    
		    
		    
</div>


   
 
     
    
  
  
</div>
</nav>

 
</body>
</html>