<div class="panel panel-default" style="    background-color: aliceblue;">

	<h3>Confirm Purchase</h3>

	<hr />

	<div class="panel-body">

		<div class="col-md-4">

				<h3><b><p>${user.fname} ${user.lname}</p></b></h3>
				<p>Phone: ${user.pno}</p>

				</div>

				<div class="col-md-4">

				

				<h3><p>Billing Address</p></h3>

				<p>${user.add1}</p>

				<p>${user.add2}</p>

				<p>${user.add3}</p>

				<p>${user.city}</p>

				<p>${user.state}</p>

				<p>${user.pincode}</p>

				</div>

				

				<div class="col-md-4">

				

				<h3><p>Shipping Address</p></h3>

				<p>${orderstuff.address.add1}</p>

				<p>${orderstuff.address.add2}</p>

				<p>${orderstuff.address.add3}</p>

				<p>${orderstuff.address.city}</p>

				<p>${orderstuff.address.state}</p>

				<p>${orderstuff.address.pincode}</p>

				</div>

				

		

	

	</div>







</div>

<div class="panel panel-default" style="    background-color: lavenderblush;">

			<!-- <div class="panel-heading">

			    <h3 class="panel-title">

			    	Order summary

			    </h3>

			</div> -->

			  <table class="table">

				            <thead>

				              <tr>

				                

				                <th class="col-md-2 col-xs-2">Product Name</th>

				                <th class="col-md-6 col-xs-6">Description</th>

				                <th class="col-md-1 col-xs-1">Price</th>

				                <th class="col-md-1 col-xs-1">Quantity</th>

				                <th class="col-md-1 col-xs-1">Delivery charges</th>

				                <th class="col-md-1 col-xs-1">Subtotal</th>

				              </tr>

				              

				            </thead>

				            <tbody>

				            <c:forEach items="${clist}" var="cartitem">

				            <tr>

				            	<td class="col-md-2"><img src="${cartitem.product.pimage}" alt="image here"></td>

				            	<td class="col-md-6">${cartitem.product.name}<p>${cartitem.product.description}</p></td>

				            	<td class="col-md-1">${cartitem.product.price}</td>

				            	<td class="col-md-1">${cartitem.iquantity}</td>

				            	<td class="col-md-1">Free</td>

				            	<td class="col-md-1">${cartitem.itotal}</td>

				            </tr>

				            </c:forEach>

				            </tbody>

				            

				       </table>

				       

				       </div>

				       

				       <div class="panel panel-default">

				       		<%-- <div class="panel-body">

				       			<p>Subtotal: ${orderstuff.amount}</p>

				       			<p><a href="${contextRoot}/Payment">Proceed to pay</a></p>

				       		</div>
				       		 --%>
				       		<tfoot>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal<br>Estimated shipping</h5></td>
                        <td class="text-right"><h3>Total &#8377; ${orderstuff.amount}</h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                        
                        <td>
                       
                           <a class="btn btn-success" href="${contextRoot}/Payment">Proceed To Pay <span class="glyphicon glyphicon-play"></span></a>
                        </td>
                    </tr>
                </tfoot>

				       </div>