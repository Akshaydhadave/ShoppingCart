<div class="container" style="background-color: aquamarine">
  <h2>Supplier Table</h2>
         
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${suppliers}" var="supplier">
      <tr>
        <td>${supplier.name}</td>
        <td>${supplier.description}</td>
        <td><a class="btn btn-danger" href="${contextRoot}/admin/supplierDelete/${supplier.id}">Delete</a><a class=btn btn-danger" href="${contextRoot}/admin/supplierEdit/${supplier.id}">Edit</a></td>
      </tr>
     </c:forEach>
    </tbody>
  </table>
</div>