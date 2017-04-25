<link href="${css}/addcategory.css" rel="stylesheet">



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Add Supplier</title>
 </head>
 <body>
  <h2><center>Add Supplier Data</center></h2>
  <form:form method="POST" action="${contextRoot}/admin/savesupplier" commandName="supplier"  style="background-color: paleturquoise">
  
  <form:hidden path="id" class="form-control" value="${supplier.id}" />
      <div>
          <center> <form:label path="name">Supplier Name:</form:label></center>
           <center><form:input type="text" path="name" class="form-control" value="${supplier.name}"/></center>
       </div>
       <div>
           <center><form:label path="description">Description:</form:label></center>
           <center><form:textarea path="description"  class="form-control" value="${supplier.description}"/></center>
       </div>
        <center> <div colspan="2"><input type="submit" value="Submit"  class="btn btn-primary"  /></div></center>
        
    
  </form:form>
  
  
 </body>
</html>