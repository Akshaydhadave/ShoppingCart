<div class="container" style="background-color: aquamarine">
  <h2>Product Table</h2>
         
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Image</th>
        <th>Price</th>
        <th>Delete/Edit</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="product">
      <tr>
        <td class="col-md-2">${product.name}</td>
          <td class="col-md-3">${product.description}</td>
          <td class="col-md-3"><img src="${product.pimage}" width="100px"></td>
            <td class="col-md-1">${product.price}</td>
          <td class="col-md-3"><a class="btn btn-danger" href="${contextRoot}/admin/productDelete/${product.id}">Delete</a><a class=btn btn-danger" href="${contextRoot}/admin/productEdit/${product.id}">Edit</a></td>
      </tr>
     </c:forEach>
    </tbody>
  </table>
</div>