<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="fonts" value="/resources/fonts" />


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>online shopping -${title}</title>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">



</head>

<body>



	<!-- Navigation -->
	<%@include file="./shared/navbar.jsp"%>
	
	<%-- 	<!-- Navigation -->
	<%@include file="./shared/Side.jsp"%> --%>

	<!-- Page Content -->
	<!--loading the home content  -->

	<c:if test="${userClickedHome==true}">
		<%@include file="home.jsp"%>
	</c:if>

	<!--load only when user clicks about  -->

	<c:if test="${userClickedAbout==true}">
		<%@include file="about.jsp"%>
	</c:if>
		<c:if test="${userClickedAddSupplier==true}">
		<%@include file="addsupplier.jsp"%>
	</c:if>

	<!--load only when user clicks contact  -->
	<c:if test="${userClickedContact==true}">
		<%@include file="contact.jsp"%>
	</c:if>
	<c:if test="${userClickedLogin==true}">
		<%@include file="login.jsp"%>
	</c:if>
	
	<c:if test="${userClickedLogInError==true}">
		<%@include file="loginerror.jsp"%>
	</c:if>

	
	<c:if test="${userClickedAccount==true}">
		<%@include file="Account.jsp"%>
	</c:if>
	

		<c:if test="${userClickedMyCart==true}">
		<%@include file="Cart.jsp"%>
	</c:if>
		
	<c:if test="${userClickedOperatingsystem==true}">
		<%@include file="operatingsystem.jsp"%>
	</c:if>
	
	<c:if test="${userClickedItDepot==true}">
		<%@include file="home.jsp"%>
	</c:if>
	
	<c:if test="${userClickedPaymentProcess==true}">
		<%@include file="PaymentProcess.jsp"%>
	</c:if>

	
	<%-- <c:if test="${userClickedMouse==true}">
		<%@include file="mouse.jsp"%> 
	</c:if> --%>
	<c:if test="${userClickedView==true}">
		<%@include file="viewcategory.jsp"%>
	</c:if>
	<c:if test="${userClickedAddCategory==true}">
		<%@include file="addcategory.jsp"%>
	</c:if>
	<c:if test="${userClickedViewSupplier==true}">
		<%@include file="viewsupplier.jsp"%>
	</c:if>
<c:if test="${userClickedViewCategory==true}">
		<%@include file="viewcategory.jsp"%>
	</c:if>
<c:if test="${userClickedViewProduct==true}">
		<%@include file="viewproduct.jsp"%>
	</c:if>

	<c:if test="${userClickedLaptops==true}">
		<%@include file="laptops.jsp"%>
	</c:if>
	 <c:if test="${userClickedShippingAddress==true || userClickedPersonalDetails == true || userClickedChangePassword == true || userClickedBillingAddress==true}">
		<%@include file="SideA.jsp"%>
	</c:if> 
	
	
		<c:if test="${userClickedComputers==true}">
		<%@include file="Computers.jsp"%>
	</c:if>
    <c:if test="${userClickedAddProductCategory==true}">
		<%@include file="addproduct.jsp"%>
	</c:if>
	 <c:if test="${userClickedRegister==true}">
		<%@include file="signup.jsp"%>
	</c:if>
     <c:if test="${userClickedProductDetails==true}">
		<%@include file="productdetails.jsp"%>
	</c:if>
	 <c:if test="${userClickShowProduct==true}">
		<%@include file="productdetails.jsp"%>
	</c:if>

	<c:if test="${userClickAllProducts == true  or userClickCategoryProducts == true}" >
				<%@include file="ListProducts.jsp"%>
			</c:if>  
<c:if test="${userClickShowProduct==true}">
		<%@include file="SingleProduct.jsp"%>
	</c:if>
	
	<c:if test="${userClickedSelectAddress == true }">

 		<%@include file="SelectAddress.jsp" %>
 		


 	</c:if>
 	<c:if test="${userClickedPaymentMode ==true }">

		<%@include file="Payment.jsp" %>

	</c:if> 
 	
 	<c:if test="${userClickedConfirmPurchase ==true }">

		<%@include file="ConfirmProduct.jsp" %>

	</c:if>
	<!-- /.container -->

	<!--footer comes here  -->
	<%@include file="./shared/footer.jsp"%>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

</body>

</html>

