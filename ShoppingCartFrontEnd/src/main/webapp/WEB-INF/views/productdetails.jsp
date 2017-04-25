<div class="container" style="background-color: aquamarine;">
	<div class="row">
   <div class="col-xs-6 item-photo">
                    <img style="max-width:100%;" width="500px" height="200px" src="${product.pimage}" />
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    <!-- Datos del vendedor y titulo del producto -->
                    <h3>${product.name}</h3>    
                  

                    <!-- Precious -->
                    <h2>Price</h2>
                    <h3 style="margin-top:0px;">${product.price}</h3>
                    <div class="row">
                    <h4>Description</h4>
						<div class="panel panel-default">
						  <div class="panel-body">
						    	
								<p>${product.description}</p>
						  </div>
						</div>
						

                    <!-- Detalles especificos del producto -->
                    <div class="section">
                        <h6 class="title-attr" style="margin-top:15px;" ><small>COLOR</small></h6>                    
                        <div>
                            <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                            <div class="attr" style="width:25px;background:white;"></div>
                        </div>
                    </div>
                  <!--   <div class="section" style="padding-bottom:5px;">
                        <h6 class="title-attr"><small>CAPACIDAD</small></h6>                    
                        <div>
                            <div class="attr2">16 GB</div>
                            <div class="attr2">32 GB</div>
                        </div>
                    </div>    -->
                  <!--   <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>CANTIDAD</small></h6>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>      -->           

                    <!-- Botones de compra -->
                   <!--  <div class="section" style="padding-bottom:20px;">
                        <button class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add To Cart</button>
                        <h6><a href="#"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Agregar a lista de deseos</a></h6>
                    </div>                                        
                </div>                              

                <div class="col-xs-9">
                    <ul class="menu-items">
                        <li class="active">Detalle del producto</li>
                        <li>Garantía</li>
                        <li>Vendedor</li>
                        <li>Envío</li>
                    </ul> -->
                    <div style="width:100%;border-top:1px solid silver">
                       <!--  <p style="padding:15px;">
                            <small>
                            Stay connected either on the phone or the Web with the Galaxy S4 I337 from Samsung. With 16 GB of memory and a 4G connection, this phone stores precious photos and video and lets you upload them to a cloud or social network at blinding-fast speed. With a 17-hour operating life from one charge, this phone allows you keep in touch even on the go. 

                            With its built-in photo editor, the Galaxy S4 allows you to edit photos with the touch of a finger, eliminating extraneous background items. Usable with most carriers, this smartphone is the perfect companion for work or entertainment.
                            </small>
                        </p> -->
                        
                      <!--   <ul>
                            <li>Super AMOLED capacitive touchscreen display with 16M colors</li>
                            <li>Available on GSM, AT&T, T-Mobile and other carriers</li>
                            <li>Compatible with GSM 850 / 900 / 1800; HSDPA 850 / 1900 / 2100 LTE; 700 MHz Class 17 / 1700 / 2100 networks</li>
                            <li>MicroUSB and USB connectivity</li>
                            <li>Interfaces with Wi-Fi 802.11 a/b/g/n/ac, dual band and Bluetooth</li>
                            <li>Wi-Fi hotspot to keep other devices online when a connection is not available</li>
                            <li>SMS, MMS, email, Push Mail, IM and RSS messaging</li>
                            <li>Front-facing camera features autofocus, an LED flash, dual video call capability and a sharp 4128 x 3096 pixel picture</li>
                            <li>Features 16 GB memory and 2 GB RAM</li>
                            <li>Upgradeable Jelly Bean v4.2.2 to Jelly Bean v4.3 Android OS</li>
                            <li>17 hours of talk time, 350 hours standby time on one charge</li>
                            <li>Available in white or black</li>
                            <li>Model I337</li>
                            <li>Package includes phone, charger, battery and user manual</li>
                            <li>Phone is 5.38 inches high x 2.75 inches wide x 0.13 inches deep and weighs a mere 4.59 oz </li>
                        </ul>  --> 
                        
                    </div>
                </div>		
	</div>
</div>


<%-- <div class="container">
			<div class="col-md-7">
				<div class="panel panel-default">
					<div class="panel-body">
						<img src="${product.pimage}" alt="${product.name}" width="600px">
					</div>
				</div>
			</div>
			<div class="col-md-5">
					<div class="row">
						<div class="panel panel-default">
							 	<div class="panel-body">
							    	<p class="prodetailsname"> ${product.name}</p>
									<hr />
									<p class="propricedetails"><span class="pricetagspan">Price:</span> &#8377; ${product.price} <hr /> 
								</div>
						</div>
						
					</div>
					<div class="row">
						<div class="panel panel-default">
						  <div class="panel-body">
						    	<h4>Description</h4>
								<p>${product.description}</p>
						  </div>
						</div>
						
					</div>

					<div class="row">
						<div class="panel panel-default">
							 	<div class="panel-body">
							    	<a href="${contextRoot}/admin/productUpdate/${product.id}" class="btn btn-primary btn-lg">Edit</a>
							    	<a href="${contextRoot}/admin/productDeletion/${product.id}" class="btn btn-danger btn-lg">Remove</a>
								</div>
						</div>
						
					</div>
			</div>
		</div>
 --%>




