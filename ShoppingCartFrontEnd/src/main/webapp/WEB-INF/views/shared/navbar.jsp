<!-- Custom CSS -->
<link href="${css}/jumbotron.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${css}/navbar.css" rel="stylesheet">

<div class="jumbotron text-center myJumbo">
	<h1>
		<font color="black"><a href="${contextRoot}/home">The IT Depot</a></font><span
			class="glyphicon glyphicon-shopping-cart"></span>
	</h1>




	<p>India's First IT Online Shopping Store</p>
	<!-- <form class="myform">
		<div class="col-md-6 col-md-offset-3">
			<div class="input-group input-group-lg">
				<input type="text" class="form-control" placeholder="Username">
				<span class="input-group-addon">Search</span>
			</div>
		</div>
	</form> -->
</div>

<!-- End of Search Form -->

<nav class="navbar navbar-inverse myNav">

	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${contextRoot}/home">IT Depot <span class="glyphicon glyphicon-shopping-cart"></span>
			</a>
		</div>
		<ul class="nav navbar-nav">

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">IT Depot<span class="caret"></span></a>
				<ul class="dropdown-menu">
				
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Laptops<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${contextRoot}/laptops">Laptops</a></li>
					<li><a href="${contextRoot}/laptopaccessories">Laptops
							Accessories</a></li>
					<li><a href="${contextRoot}/batteriesandcharger">Batteries
							And Chargers</a></li>



				</ul></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Hardwares<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${contextRoot}/keyboards">Keyboards</a></li>
					<li><a href="${contextRoot}/motherboards">Motherboards</a></li>
					<li><a href="${contextRoot}/mouse">Mouse</a></li>
					<li><a href="${contextRoot}/monitor">Monitor</a></li>
					<li><a href="${contextRoot}/ram">RAM(Memory)</a></li>
					<li><a href="${contextRoot}/graphiccards">Graphic Cards</a></li>

					<li><a href="${contextRoot}/fancontroller">Fan Controller</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Softwares<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${contextRoot}/antivirus">Anti Virus</a></li>
					<li><a href="${contextRoot}/operatingsystem">OpratingSystems</a></li>
				</ul></li> 
					<%-- <li><a href="${contextRoot}/about">About Us</a></li>
					<li><a href="${contextRoot}/contact">Contact Us</a></li> --%>
				</ul></li>


				
				<li><a href="${contextRoot}/about">About Us</a></li>
			   <li><a href="${contextRoot}/contact">Contact Us</a></li>
				
		</ul> 
		
		<c:if test="${pageContext.request.userPrincipal.name != null }">
				<security:authorize access="hasRole('ROLE_ADMIN')">
		<ul class="nav navbar-nav">		
				
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${contextRoot}/admin/addcategory">Add Category</a></li>
					<li><a href="${contextRoot}/admin/addsupplier"}>Add Supplier</a></li>
					<li><a href="${contextRoot}/admin/addproduct"}>Add Product</a></li>
					<li><a href="${contextRoot}/admin/viewcategory"}>View Category</a></li>
					<li><a href="${contextRoot}/admin/viewsupplier"}>View Supplier</a></li>
					<li><a href="${contextRoot}/admin/viewproduct"}>View Product</a></li>


				</ul></li>
		</ul>
		</security:authorize>
			</c:if>
		<c:if test="${pageContext.request.userPrincipal.name != null }">
		<ul class="nav navbar-right navbar-nav">
					<li><a href="${contextRoot}/logout">Log Out</a></li>
				</ul>
				</c:if>
			
			
			
			<c:if test="${pageContext.request.userPrincipal.name == null }">


				<ul class="nav navbar-right navbar-nav">
					<li><a href="${contextRoot}/login">Log In</a></li>
				</ul>
				<ul class="nav navbar-right navbar-nav">
					<li><a href="${contextRoot}/signup">Sign Up</a></li>
				</ul>

			</c:if>
		
		<c:if test="${pageContext.request.userPrincipal.name != null }">
				<security:authorize access="hasRole('ROLE_USER')">

					<ul class="nav navbar-right navbar-nav">
					
					
				

						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">${pageContext.request.userPrincipal.name }
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${contextRoot}/Account/${userid}">Profile</a></li>
									<li><a href="${contextRoot}/mycart/${userid}">My Cart</a></li>

								<li><a href="${contextRoot}/user/changeAddress">Addresses</a></li>
								<li><a href="${contextRoot}/user/personaldetails">Personal Details</a></li>
								
								<li><a href="${contextRoot}/user/orderDetails">Orders</a></li>
							
							</ul></li>
					</ul>
				</security:authorize>
			</c:if>
		
	</div>
</nav>
