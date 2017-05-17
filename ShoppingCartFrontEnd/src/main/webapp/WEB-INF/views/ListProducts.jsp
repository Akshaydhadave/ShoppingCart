<%-- <div class="container">

	<div class="row">

		<!-- Would be to display sidebar -->
		<div class="col-md-3">


			<%@include file="./shared/Side.jsp"%>



		</div>

		<!-- Would be to display products -->
		<div class="col-md-9">

			<!-- added breadcrumb component -->
			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">
					
						<script>
							window.categoryID = '';
						</script>
					
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">HOME</a></li>
							<li class="active">All Products</li>

						</ol>
					</c:if>

					<c:if test="${userClickCategoryProducts == true}">
					
						<script>
							window.categoryID = '${category.id}';
						</script>
					
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">HOME</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>

						</ol>
					</c:if>

				</div>

			</div>

  <div class="row">
				
				<div class="col-xs-12">
				
					<table id="productListTable" class="table table-striped table-bordered">
					
						<thead>
						
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Qty-Available</th>
							<th></th>
							
						</thead>
						<tfoot>
						
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Qty-Available</th>
							<th></th>
						</tfoot>
					
					</table>
				
				</div>
			
			</div>

		</div>


	</div> --%>
	
	  <div class="container">
		
    	
    	
    	<!-- Added breadcrumb -->
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickAllProducts==true}">
					<ol class="breadcrumb">
						<li><a href="${contextRoot}/home">Home</a></li>
						<li class="active">All Products</li>
					</ol>
					</c:if>
					
					<c:if test="${userClickCategoryProducts==true}">
					<ol class="breadcrumb">
						<li><a href="${contextRoot}/home">Home</a></li>
						<li class="active">Category</li>
						<li class="active">${category.name}</li>
					</ol>
					</c:if>
				</div>
			</div>
		<!-- Ended breadcrumb -->
			
			
			<!-- To display sidebar -->
			<div class="col-md-3">
				<div class="panel panel-default">
					<!-- <div class="panel-heading">
						<h3 class="panel-title">
						Brands
						</h3>
					</div> -->
					<div class="panel-body">
						
							
					 <%@include file="./shared/Side.jsp"%> 
					</div>
				</div>
			</div>
			
			<!-- to display products -->
			<div class="col-md-9">
				<div class="panel panel-default">
					<!-- <div class="panel-heading">
						<h3 class="panel-title">Category Query</h3>
					</div> -->
					<div class="panel-body">
						<div class="row">
						  
						  <c:forEach items="${products}" var="product">
						  
						  <div class="col-sm-6 col-md-4">
						    <div class="thumbnail">
						      <a href="${contextRoot}/productdetails/${product.id}"><img src="${product.pimage}" alt="${product.name}"></a>
						      <div class="caption">
						        <p class="thumbp">
						        <a href="${contextRoot}/productdetails/${product.id}" > ${product.name}</a></p>
						       
						        <p class="productprice"><span class="rupeesymbol">&#8377;</span>${product.price}</p>
						        </div>
						        
						    </div>
						  </div>
						  
						  </c:forEach>
						  <c:forEach items="${catProducts}" var="product">
						 
						  <div class="col-sm-6 col-md-4">
						    <div class="thumbnail">
						      <a href="${contextRoot}/productdetails/${product.id}"><img src="${product.pimage}" alt="${product.name}"></a>
						      <div class="caption">
						        <p class="thumbp">
						        <a href="${contextRoot}/productdetails/${product.id}" > ${product.name}</a></p>
						       
						        <p class="productprice"><span class="rupeesymbol">&#8377;</span>${product.price}</p>
						        </div>
						    </div>
						  </div>
						 
						  </c:forEach>
						  
						</div>
					</div>	
				</div>
			</div>

		</div>