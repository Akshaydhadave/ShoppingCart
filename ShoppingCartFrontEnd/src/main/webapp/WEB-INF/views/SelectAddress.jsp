<div class="panel panel-default" style="background-color :aliceblue;">

							  	<div class="panel-heading">

									<center><h3 class="panel-title">Select Address </h3></center>

								</div>

								<div class="panel-body">

										<div class="row">

										<c:forEach items="${addresses}" var="addresses">

										<form:form role="form">

										  <div class="col-sm-6 col-md-4">

										    <div class="thumbnail">

										     

											        <h4><p>${addresses.add1},</p></h4>

											       <h4><p>${addresses.add2},</p></h4>

											        <h4> <p>${addresses.add3},</p></h4>
											      <h4>  <p>${addresses.city},</p></h4>

											        <h4><p>${addresses.state},</p></h4>
											        <h4><p>${addresses.pincode}</p></h4>

											        

														

		                        <%--  <form:radiobutton path="address.addid" value="${addresses.addid}"/>

								<input type="submit" class="btn btn-default" value="Deliver here">

								 --%>

								 <a href="${contextRoot}/user/addressSelected/${addresses.addid}" class="btn btn-primary">Deliver here</a>

										

										    </div>

										  </div>

										  </form:form>

										</c:forEach>

										  

										</div>

										







								</div>




						</div>