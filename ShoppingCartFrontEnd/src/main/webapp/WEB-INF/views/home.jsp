 	
 	  <div class="container" style=" background-color: aliceblue;">
            <div class="col-md-3">
                <p class="lead"> </p>
                <div class="list-group">
                    <a href="${contextRoot}/laptops" class="list-group-item">Laptops</a>
                    <a href="${contextRoot}/Computers" class="list-group-item">Computers</a>
                    <a href="#" class="list-group-item">Hardwares</a>
                    
                    <a href="#" class="list-group-item">Softwares</a>
                </div>
            </div>
             
     
 

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="${images}\applec1.jpg" alt="">
                                </div>
                                <div class="item">
                                 <img class="slide-image" src="${images}\apple22.png"  alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="${images}\apple111.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                   </a>
                        </div>
                    </div>

                </div>
                                
               
                
                
 <h1>Latest Offers</h1>
                <div class="row">
				<c:forEach items="${products}" var="product">
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                             <a href="${contextRoot}/productdetails/${product.id}"><img src="${product.pimage}" alt="dsafsg" width="200px" height="150px" /></a>
                            <div class="caption">
                                <h4 class="pull-right">&#8377;${product.price}</h4>
                                <h4><a href="#">${product.name}</a>
                                </h4>
                                <div class="col-md-8 col-sm-8 col-xs-8">
								<a href="${contextRoot}/user/addToCart/${product.id}" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</a>
    						</div>
                                
                            </div>
                           <!--  <div class="ratings">
                             <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div> -->
                        </div>
                    </div>
				</c:forEach>
                                    
               </div>
               </div>
               </div>
               </div> 
 
 	 
 <%-- 	 
   <div class="container">
    <div class="col-md-12">

                <div class="row carousel-holder">


 <div class="col-md-3">
                <div>
                    <a href="#" class="list-group-item active">Laptops
                    </a>
                    <ul class="list-group">

                        <li class="list-group-item">Dell
      <span class="label label-primary pull-right">234</span>
                        </li>
                        <li class="list-group-item">Lenevo
                      <span class="label label-success pull-right">34</span>
                        </li>
                        <li class="list-group-item">Hp Pavillion
                         <span class="label label-danger pull-right">4</span>
                        </li>
                        <li class="list-group-item">Appliances
                             <span class="label label-info pull-right">434</span>
                        </li>
                        <li class="list-group-item">Games & Entertainment
                             <span class="label label-success pull-right">34</span>
                        </li>
                    </ul>
                    </div>
                    </div>
                      <div class="col-md-9">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                 <img class="slide-image" src="http://placehold.it/800x300" alt="">
                               
                                </div>
                                <div class="item">
                                 <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                   </a>
                        </div>
                    </div>
                    
                    </div>
                </div> 
                  
              
             
                    <div class="row">
				<c:forEach items="${products}" var="product">
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                              <img src="${product.pimage}" alt="dsafsg" width="200px" height="100px" />
                            <div class="caption">
                                <h4 class="pull-right">${product.price}</h4>
                                <h4><a href="#">${product.pname}</a>
                                </h4>
                                <p>${product.pdesc}</p>
                            </div>
                            <div class="ratings">
                             <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>
				</c:forEach>
				</div>
    

        
         

               
                    
               </div>
             
               --%>
              