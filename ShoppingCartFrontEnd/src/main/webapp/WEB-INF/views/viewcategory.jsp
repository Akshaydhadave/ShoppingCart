<div class="container" style="background-color: aquamarine">
  <h2>Category Table</h2>
         
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${categories}" var="category">
      <tr>
        <td>${category.name}</td>
        <td>${category.description}</td>
        <td><a class="btn btn-danger" href="${contextRoot}/admin/categoryDelete/${category.id}">Delete</a><a class=btn btn-danger" href="${contextRoot}/admin/categoryEdit/${category.id}">Edit</a></td>
      </tr>
     </c:forEach>
    </tbody>
  </table>
</div>