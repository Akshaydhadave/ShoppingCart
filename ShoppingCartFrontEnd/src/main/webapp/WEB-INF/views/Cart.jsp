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

<%-- <div class="panel">
	<div class="panel-body">
		<h4><p>Total &#8377; ${cartdata.totalcost}</p></h4>
	</div>

</div> --%>
<tfoot>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal<br>Estimated shipping</h5></td>
                        <td class="text-right"><h3>Total &#8377; ${cartdata.totalcost}</h3></td>
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
                       
                           <a class="btn btn-success" href="${contextRoot}/selectAddress"> Place Order <span class="glyphicon glyphicon-play"></span></a>
                        </td>
                    </tr>
                </tfoot>

</c:if> 



