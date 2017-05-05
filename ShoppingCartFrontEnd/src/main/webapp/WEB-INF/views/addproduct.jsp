<link href="${css}/addcategory.css" rel="stylesheet">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Add Product</title>
 </head>
 <body>
  <h2><center>Add Product Data</center></h2>
  <form:form method="POST" action="${contextRoot}/admin/saveproduct" commandName="product" enctype="multipart/form-data" style="background-color: paleturquoise">
      <div >
          <center> <form:label path="cid">Category Id:</form:label></center>
           <center><form:input type="text" path="cid" class="form-control"/></center>
       </div>
     
      <div >
          <center> <form:label path="name">Product Name:</form:label></center>
           <center><form:input type="text" path="name" class="form-control"/></center>
       </div>
       <div>
          <center> <form:label path="description">Description:</form:label></center>
           <center><form:textarea rows="4" cols="50" path="description"  class="form-control"/></center>
       </div>
        <div>
          <center> <form:label path="price">Price:</form:label></center>
           <center><form:input type="text"  path="price"  class="form-control"/></center>
       </div>
         
      <!-- File Button -->
            <div>
          <center> <form:label path="image">Upload Image:</form:label></center>
          <center> <form:input type="file" path="image"  class="form-control"/></center>
           
       </div>  
         <center><div colspan="2"><input type="submit" value="Submit" class="btn btn-primary"/></div></center>
         
        
    
  </form:form>
  
  
 </body>
</html>



