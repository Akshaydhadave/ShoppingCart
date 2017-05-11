<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	    	<div class="col-md-3">
	        
			        <div class="panel panel-default">
			          <div class="panel-heading">
			            <h3 class="panel-title">My Account</h3>
			          </div>
			          <div class="panel-body">
			          	<legend class="text-center"></legend>
			            <ul class="list-group">
			              <a href="${contextRoot}/myAccount" id="myAccount" class="list-group-item">Account details</a>
			              <a href="${contextRoot}/orderDetails" id="orderDetails" class="list-group-item">Orders</a>
			            <%--   <a href="${contextRoot}/user/wishList" id="wishList" class="list-group-item">Wish list</a> --%>
			              
			            </ul> 
			            <legend class="text-center"></legend>
			            <ul class="list-group">
			              <a href="${contextRoot}/PersonalDetails" id="personalInfo" class="list-group-item">Personal information</a>
			              <a href="${contextRoot}/ChangePassword" id="changePW" class="list-group-item">Change password</a>
			              <a href="${contextRoot}/billingAddress" id="billingAddress" class="list-group-item">billing address</a>
			              <a href="${contextRoot}/manageAddress" id="manageAddress" class="list-group-item">Manage addresses</a>
			              <a href="${contextRoot}/changeMobNo" id="changeMobNo" class="list-group-item">Update mobile number</a>
			              
			            </ul> 
			          </div>
			        </div>
			
            
			</div>
			<div class="col-md-9">
				
					
					<c:if test="${userClickedShippingAddress==true }">
						<%@include file="ShippingAddress.jsp" %>
					</c:if>  					
             <c:if test="${userClickedPersonalDetails==true }">
						<%@include file="PersonelDetails.jsp" %>
					</c:if>  	
					<c:if test="${userClickedChangePassword==true }">
						<%@include file="ChangePassword.jsp" %>
					</c:if>  				

		
	</div>
	
	</div>