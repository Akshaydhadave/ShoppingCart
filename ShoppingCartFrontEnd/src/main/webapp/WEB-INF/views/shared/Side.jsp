<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <link href="${css}/asit4.css" rel="stylesheet"> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h4><p class="lead">Apple Inc</p></h4>
<div class="list-group" style="background-color: darkgrey;">

<c:forEach items="${categories}" var="category">
	<h4><i><b><a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}</a> 
	</b></i></h4>
	
</c:forEach>

</div>