<div class="panel panel-default">
					  <div class="panel-heading">
						<h3 class="panel-title">Update billing address</h3>
					</div>
						<div class="panel-body">
						<div class="col-md-8 col-md-offset-2">
							<form:form method="post" action="${contextRoot}/user/updateBillingAddress" commandName="user">
							<fieldset>
							
                         <form:hidden path="uid" class="form-control"
								placeholder="Enter Product Id" value="${user.uid}" />
						<form:hidden path="fname" class="form-control"
								placeholder="Enter Product Id" value="${user.fname}" />
						<form:hidden path="lname" class="form-control"
								placeholder="Enter Product Id" value="${user.lname}" />
						<form:hidden path="pno" class="form-control"
								placeholder="Enter Product Id" value="${user.pno}" />
						<form:hidden path="email" class="form-control"
								placeholder="Enter Product Id" value="${user.email}" />
						
						<form:hidden path="pw" class="form-control"
								placeholder="Enter Product Id" value="${user.pw}" />
								
								<form:hidden path="cart.cartid" class="form-control"
								placeholder="Enter Product Id" value="${user.cart.cartid}" />
								
								<form:hidden path="role" class="form-control"
								placeholder="Enter Product Id" value="${user.role}" />
						

                        <div class="form-group col-md-12">
                            <form:label path="add1">Address line 1: </form:label>
                            <form:input type="text" class="form-control" path="add1" value="${user.add1}" placeholder="address line 1" />
                            
                        </div>

						 <div class="form-group col-md-12">
                            <form:label path="add2">Address line 2: </form:label>
                            <form:input type="text" class="form-control" path="add2" value="${user.add2}" placeholder="address line 2" />
                            
                        </div>
                        
                        <div class="form-group col-md-12">
                            <form:label path="add3">Address line 3: </form:label>
                            <form:input type="text" class="form-control" path="add3" value="${user.add3}" placeholder="address line 3" />
                            
                        </div>

                       <div class="form-group col-md-12">
                            <form:label path="city">City: </form:label>
                            <form:input type="text" class="form-control" path="city" value="${user.city}" placeholder="city" />
                            
                        </div><div class="form-group col-md-12">
                            <form:label path="state">State: </form:label>
                            <form:input type="text" class="form-control" path="state" value="${user.state}" placeholder="state" />
                            
                        </div><div class="form-group col-md-12">
                            <form:label path="pincode">pincode: </form:label>
                            <form:input type="text" class="form-control" path="pincode" value="${user.pincode}" placeholder="Pin code" />
                            
                        </div>
						
                           
                        </div>
                        </fieldset>
                        <div class="form-group">
	                        <div class="col-md-12">
	                            <button type="submit" class="btn btn-primary">
	                                Update
	                            </button>
	                            
	                        </div>
                    	</div>
                    	</form:form>
                    	</div>
						</div>							

		</div>