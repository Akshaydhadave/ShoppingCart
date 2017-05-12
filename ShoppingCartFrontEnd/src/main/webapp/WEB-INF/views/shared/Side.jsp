<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <link href="${css}/asit4.css" rel="stylesheet"> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h4><p class="lead">Apple Inc</p></h4>
<div class="list-group">

<c:forEach items="${categories}" var="category">
	<h4><i><a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}</a> 
	</i></h4>
	
</c:forEach>

</div>