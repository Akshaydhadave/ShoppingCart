 <c:if test="${cartamt >0}">
<table class="table">
	<thead>
	<tr>
		<th>
			Items
		</th>
		<th>Description</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Subtotal</th>
		<th>Edit</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${cilist}" var="cartitem">
		<tr>
			<td><img src="${cartitem.product.pimage}" alt=""></td>
			<td><h4>${cartitem.product.name}</h4><p>${cartitem.product.description}</p></td>
			<td>${cartitem.product.price}</td>
			<td>${cartitem.iquantity}</td>
			<td>${cartitem.itotal}</td>
			<td><a href="${contextRoot}/user/removeCartItem/${cartitem.itemid}" class="btn btn-primary">Remove</a></td>
		</tr> 
	</c:forEach>
	</tbody>
</table>

<div class="panel">
	<div class="panel-body">
		<p>Total &#8377; ${cartdata.totalcost}</p>
	</div>

</div>

</c:if> 




<%-- <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
        <c:if test="${cartamt >0}">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Items</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cilist}" var="cartitem">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#">
                            <div class="media-body">
                                <h4 class="media-heading">${cartitem.product.name}</h4>
                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="3">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cartitem.product.price}</strong></td>
                        
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>
                   
                      
                    <!--  <tr>
                        <td class="col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Product name</a></h4>
                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                <span>Status: </span><span class="text-warning"><strong>Leaves warehouse in 2 - 3 weeks</strong></span>
                            </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="2">
                        </td>
                        <td class="col-md-1 text-center"><strong>$4.99</strong></td>
                        <td class="col-md-1 text-center"><strong>$9.98</strong></td>
                        <td class="col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>  -->
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>$24.59</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>$6.94</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>$31.53</strong></h3></td>
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
                        <button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></td>
                    </tr>
                  </c:forEach>
                </tbody>
            </table>
             </c:if>
        </div>
    </div>
</div> 
 --%>