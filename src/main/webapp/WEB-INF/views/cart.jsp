
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:include page="header.jsp" />
<title> Your Cart</title>

</head>
<body style="background-color: #f3f3f3">
<br>
<br>

	<div class="container-fluid">
		<c:forEach items="${cart.cartItems}" var="cartItem">
			<c:set var="totalitems" value="${cartItem.quantity + totalitems}">
			</c:set>
		</c:forEach>

		<c:if test="${totalitems!=null}">

			<div class="row">
				<div class="col-sm-9">
					<div class="panel" style="width: 85%; margin-left: 130px">
						<div class="panel panel-heading">
							<h2>
								<b>BOOK CART</b>
							</h2>
						</div>

						<div class="panel-body">
							<table class="table table-hover " style="margin-top: -20px">

								<thead>

									<tr>
										<th>Images</th>
										<th>Book Name</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Remove</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach items="${cart.cartItems}" var="cartItem">


										<tr>
											<td><img
												src="resources/images/${cartItem.product.id}.jpg"
												style="width: 140px; height: 130px"></td>
											<td>
												<h3>${cartItem.product.productname}</h3>
											</td>
											<td>
												<h3 style="margin-top: 16px">${cartItem.quantity}</h3>
											</td>
											<td><h4 style="padding-top: 10px">
													<i class="fa fa-inr" style="font-size: 15px;"></i> <b
														style="font-size: 15px"> ${cartItem.totalPrice} </b>
												</h4></td>
											<td><c:url
													value="cart_removecartitem${cartItem.cartItemId}"
													var="removeitem"></c:url> <a class="btn btn-danger"
												style="background-color: red; margin-top: 16px"
												href="${removeitem}">Remove</a></td>
										</tr>

										<c:set var="grandTotal"
											value="${cartItem.totalPrice + grandTotal}">
										</c:set>

									</c:forEach>
								</tbody>
							</table>



						</div>
						<!-- End panel-body -->
						<div class="panel-footer"
							style="background-color: grey; height: 80px">


							<c:url value="getallproducts" var="productlist"></c:url>
							<a href="${productlist}" class="btn btn-info"
								style="height: 50px;  width: 30%; margin-left: 300px; background-color: blue; font-size: 18px;">
								<div style="margin-top: 8px">
									<span class="glyphicon glyphicon-browse"></span>
									 <span style="font-weight: 600; font-size: 15px; color: black;"> VIEW MORE BOOKS
									 </span>
								</div>
							</a> 
							
							<%-- <c:url value="cartshippingaddressform${cart.id}" var="checkoutrurl"></c:url>
					<a href="${checkoutrurl}" class="btn btn-success" style="height: 50px; width: 30%; margin-left: 380px; background-color: yellow; font-size: 18px;">
					<div style="margin-top: 8px">
						 		 <span class="glyphicon glypicon-shopping-cart"></span>
						 <span  style="font-weight: 600; font-size: 15px; color: black;">
				 PLACE ORDER</span>
					</div>
					</a> --%>
							
							<!-- <a href="bankdetails" class="btn btn-success"
								style="height: 50px; width: 30%; margin-left: 380px; background-color: yellow; font-size: 18px;">
								<div style="margin-top: 8px">
							  <span style="font-weight: 600; font-size: 15px; color: black;">PLACE
										ORDER </span>
								</div>
							</a> -->

						</div>
					</div>
					<!-- End  panel -->
				</div>
				<!-- End  col-sm-12 -->

				<div class="col-sm-3">
					<div class="panel" style="margin-left: -50px; width: 90%">
						<div class="panel-heading">
							<h5 style="color: grey">PRICE DETAILS</h5>
						</div>
						<!-- End panel-heading -->
						<div class="panel-body"></div>


						<hr style="margin-top: -20px;">
						<h4 style="font-size: 16px; margin-left: 14px">
							Total Items <span style="margin-left: 190px">${totalitems}</span>
						</h4>
						<span style="font-size: 16px; margin-left: 14px"> Delivery
							Charges </span><span
							style="margin-left: 122px; font-size: 14px; color: #388e3c">
							FREE(*Sale)</span>


						<hr
							style="border-top: 1px dashed #8c8b8b; color: grey; width: 90%">
						<span style="font-size: 16px; margin-left: 14px"> <strong>Amount
								Payable</strong> <span style="margin-left: 85px">
								<i class="fa fa-inr" style="font-size: 15px;"></i> <strong>${grandTotal}</strong>
						</span>
						</span>


					</div>
					<!-- End panel -->
					<c:url value="cartshippingaddressform${cart.id}" var="checkoutrurl"></c:url>
					<a href="${checkoutrurl}" class="btn btn-success"
						style="width: 90%; margin-left: -48px"> 
						<span class="glyphicon glypicon-shopping-cart"></span> PLACE ORDER
					</a> <br> <br>
					<br> <a href="cart_clearcart${cart.id}" class="btn btn-danger"
						style="width: 90%; margin-left: -48px">CLEAR CART</a>

				</div>
				<!-- End col-sm-3 -->
			</div>
		</c:if>

		<c:if test="${totalitems==null}">

			<div class="container">
				<div class="panel">
					<div class="panel panel-heading ">
						<h2><center>
							<b>Shopping Cart</b></center>
						</h2>
					</div>
					<!-- End panel- heading -->
					<div class="panel-body">
						<img alt="empty cart" src="resources/emptycartimage.jpg"
							style="width: 350px; height: 250px; margin-left: 365px"> <br>
						<span
							style="font-weight: 600; margin-left: 395px; font-size: 20px">
							Your Shopping Cart is empty </span> <br> <br> <a
							href="getallproducts" class="btn btn-default"
							style="height: 50px; width: 30%; margin-left: 375px; background-color: #fb641b; font-size: 18px;">
							<div style="margin-top: 8px">
								</span> <span style="font-weight: 600; font-size: 15px; color: white;">CONTINUE
									SHOPPING</span>
							</div>
						</a>

					</div>
					<!-- End  panel-body -->

				</div>
				<!-- End panel -->
			</div>
			<!-- End container -->
		</c:if>


	</div>
	<!-- End container-fluid -->
</body>
</html>