<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript"
	src="<c:url value='/static/bower_components/jquery/dist/jquery.min.js'/>"></script>

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="row">
			<!-- ============================================== SIDEBAR ============================================== -->
			<div class="col-xs-12 col-sm-12 col-md-3 sidebar">

				<!-- ================================== TOP NAVIGATION ================================== -->
				<div class="side-menu animate-dropdown outer-bottom-xs">
					<div class="head">
						<i class="icon fa fa-align-justify fa-fw"></i> Categories
					</div>
					<nav class="yamm megamenu-horizontal" role="navigation">
						<ul class="nav">
							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-heartbeat" aria-hidden="true"></i>Fruits &
									Vegetables</a></li>
							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-shopping-bag" aria-hidden="true"></i>Clothing</a>
								<ul class="dropdown-menu mega-menu">
									<li class="yamm-content">
										<div class="row">
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Dresses</a></li>
													<li><a href="#">Shoes </a></li>
													<li><a href="#">Jackets</a></li>
													<li><a href="#">Sunglasses</a></li>
													<li><a href="#">Sport Wear</a></li>
													<li><a href="#">Blazers</a></li>
													<li><a href="#">Shirts</a></li>
													<li><a href="#">Shorts</a></li>
												</ul>
											</div>
											<!-- /.col -->
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Handbags</a></li>
													<li><a href="#">Jwellery</a></li>
													<li><a href="#">Swimwear </a></li>
													<li><a href="#">Tops</a></li>
													<li><a href="#">Flats</a></li>
													<li><a href="#">Shoes</a></li>
													<li><a href="#">Winter Wear</a></li>
													<li><a href="#">Night Suits</a></li>
												</ul>
											</div>
											<!-- /.col -->
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Toys &amp; Games</a></li>
													<li><a href="#">Jeans</a></li>
													<li><a href="#">Shirts</a></li>
													<li><a href="#">Shoes</a></li>
													<li><a href="#">School Bags</a></li>
													<li><a href="#">Lunch Box</a></li>
													<li><a href="#">Footwear</a></li>
													<li><a href="#">Wipes</a></li>
												</ul>
											</div>
											<!-- /.col -->
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Sandals </a></li>
													<li><a href="#">Shorts</a></li>
													<li><a href="#">Dresses</a></li>
													<li><a href="#">Jwellery</a></li>
													<li><a href="#">Bags</a></li>
													<li><a href="#">Night Dress</a></li>
													<li><a href="#">Swim Wear</a></li>
													<li><a href="#">Toys</a></li>

												</ul>
											</div>
											<!-- /.col -->
										</div> <!-- /.row -->
									</li>
									<!-- /.yamm-content -->
								</ul> <!-- /.dropdown-menu --></li>
							<!-- /.menu-item -->

							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-laptop" aria-hidden="true"></i>Electronics</a> <!-- ================================== MEGAMENU VERTICAL ================================== -->
								<ul class="dropdown-menu mega-menu">
									<li class="yamm-content">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-lg-4">
												<ul>
													<li><a href="#">Gaming</a></li>
													<li><a href="#">Laptop Skins</a></li>
													<li><a href="#">Apple</a></li>
													<li><a href="#">Dell</a></li>
													<li><a href="#">Lenovo</a></li>
													<li><a href="#">Microsoft</a></li>
													<li><a href="#">Asus</a></li>
													<li><a href="#">Adapters</a></li>
													<li><a href="#">Batteries</a></li>
													<li><a href="#">Cooling Pads</a></li>
												</ul>
											</div>

											<div class="col-xs-12 col-sm-12 col-lg-4">
												<ul>
													<li><a href="#">Routers &amp; Modems</a></li>
													<li><a href="#">CPUs, Processors</a></li>
													<li><a href="#">PC Gaming Store</a></li>
													<li><a href="#">Graphics Cards</a></li>
													<li><a href="#">Components</a></li>
													<li><a href="#">Webcam</a></li>
													<li><a href="#">Memory (RAM)</a></li>
													<li><a href="#">Motherboards</a></li>
													<li><a href="#">Keyboards</a></li>
													<li><a href="#">Headphones</a></li>
												</ul>
											</div>

											<div class="dropdown-banner-holder">
												<a href="#"><img alt=""
													src="${pageContext.request.contextPath}/static/website/assets/images/banners/banner-side.png" /></a>
											</div>
										</div> <!-- /.row -->
									</li>
									<!-- /.yamm-content -->
								</ul> <!-- /.dropdown-menu --> <!-- ================================== MEGAMENU VERTICAL ================================== -->
							</li>
							<!-- /.menu-item -->

							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-paw" aria-hidden="true"></i>Shoes</a>
								<ul class="dropdown-menu mega-menu">
									<li class="yamm-content">
										<div class="row">
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Dresses</a></li>
													<li><a href="#">Shoes </a></li>
													<li><a href="#">Jackets</a></li>
													<li><a href="#">Sunglasses</a></li>
													<li><a href="#">Sport Wear</a></li>
													<li><a href="#">Blazers</a></li>
													<li><a href="#">Shirts</a></li>
													<li><a href="#">Shorts</a></li>
												</ul>
											</div>
											<!-- /.col -->
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Handbags</a></li>
													<li><a href="#">Jwellery</a></li>
													<li><a href="#">Swimwear </a></li>
													<li><a href="#">Tops</a></li>
													<li><a href="#">Flats</a></li>
													<li><a href="#">Shoes</a></li>
													<li><a href="#">Winter Wear</a></li>
													<li><a href="#">Night Suits</a></li>
												</ul>
											</div>
											<!-- /.col -->
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Toys &amp; Games</a></li>
													<li><a href="#">Jeans</a></li>
													<li><a href="#">Shirts</a></li>
													<li><a href="#">Shoes</a></li>
													<li><a href="#">School Bags</a></li>
													<li><a href="#">Lunch Box</a></li>
													<li><a href="#">Footwear</a></li>
													<li><a href="#">Wipes</a></li>
												</ul>
											</div>
											<!-- /.col -->
											<div class="col-sm-12 col-md-3">
												<ul class="links list-unstyled">
													<li><a href="#">Sandals </a></li>
													<li><a href="#">Shorts</a></li>
													<li><a href="#">Dresses</a></li>
													<li><a href="#">Jwellery</a></li>
													<li><a href="#">Bags</a></li>
													<li><a href="#">Night Dress</a></li>
													<li><a href="#">Swim Wear</a></li>
													<li><a href="#">Toys</a></li>

												</ul>
											</div>
											<!-- /.col -->
										</div> <!-- /.row -->
									</li>
									<!-- /.yamm-content -->
								</ul> <!-- /.dropdown-menu --></li>
							<!-- /.menu-item -->

							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-clock-o"></i>Watches</a>
								<ul class="dropdown-menu mega-menu">
									<li class="yamm-content">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-lg-4">
												<ul>
													<li><a href="#">Gaming</a></li>
													<li><a href="#">Laptop Skins</a></li>
													<li><a href="#">Apple</a></li>
													<li><a href="#">Dell</a></li>
													<li><a href="#">Lenovo</a></li>
													<li><a href="#">Microsoft</a></li>
													<li><a href="#">Asus</a></li>
													<li><a href="#">Adapters</a></li>
													<li><a href="#">Batteries</a></li>
													<li><a href="#">Cooling Pads</a></li>
												</ul>
											</div>

											<div class="col-xs-12 col-sm-12 col-lg-4">
												<ul>
													<li><a href="#">Routers &amp; Modems</a></li>
													<li><a href="#">CPUs, Processors</a></li>
													<li><a href="#">PC Gaming Store</a></li>
													<li><a href="#">Graphics Cards</a></li>
													<li><a href="#">Components</a></li>
													<li><a href="#">Webcam</a></li>
													<li><a href="#">Memory (RAM)</a></li>
													<li><a href="#">Motherboards</a></li>
													<li><a href="#">Keyboards</a></li>
													<li><a href="#">Headphones</a></li>
												</ul>
											</div>

											<div class="dropdown-banner-holder">
												<a href="#"><img alt=""
													src="${pageContext.request.contextPath}/static/website/assets/images/banners/banner-side.png" /></a>
											</div>
										</div> <!-- /.row -->
									</li>
									<!-- /.yamm-content -->
								</ul> <!-- /.dropdown-menu --></li>
							<!-- /.menu-item -->


							<!-- /.menu-item -->

							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-heartbeat"></i>Health and Beauty</a>
								<ul class="dropdown-menu mega-menu">
									<li class="yamm-content">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-lg-4">
												<ul>
													<li><a href="#">Gaming</a></li>
													<li><a href="#">Laptop Skins</a></li>
													<li><a href="#">Apple</a></li>
													<li><a href="#">Dell</a></li>
													<li><a href="#">Lenovo</a></li>
													<li><a href="#">Microsoft</a></li>
													<li><a href="#">Asus</a></li>
													<li><a href="#">Adapters</a></li>
													<li><a href="#">Batteries</a></li>
													<li><a href="#">Cooling Pads</a></li>
												</ul>
											</div>

											<div class="col-xs-12 col-sm-12 col-lg-4">
												<ul>
													<li><a href="#">Routers &amp; Modems</a></li>
													<li><a href="#">CPUs, Processors</a></li>
													<li><a href="#">PC Gaming Store</a></li>
													<li><a href="#">Graphics Cards</a></li>
													<li><a href="#">Components</a></li>
													<li><a href="#">Webcam</a></li>
													<li><a href="#">Memory (RAM)</a></li>
													<li><a href="#">Motherboards</a></li>
													<li><a href="#">Keyboards</a></li>
													<li><a href="#">Headphones</a></li>
												</ul>
											</div>

											<div class="dropdown-banner-holder">
												<a href="#"><img alt=""
													src="${pageContext.request.contextPath}/static/website/assets/images/banners/banner-side.png" /></a>
											</div>
										</div> <!-- /.row -->
									</li>
									<!-- /.yamm-content -->
								</ul> <!-- /.dropdown-menu --></li>
							<!-- /.menu-item -->

							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-paper-plane"></i>Kids and Babies</a> <!-- /.dropdown-menu -->
							</li>
							<!-- /.menu-item -->

							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-futbol-o"></i>Sports</a> <!-- ================================== MEGAMENU VERTICAL ================================== -->
								<!-- /.dropdown-menu --> <!-- ================================== MEGAMENU VERTICAL ================================== -->
							</li>
							<!-- /.menu-item -->

							<li class="dropdown menu-item"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="icon fa fa-envira"></i>Home and Garden</a> <!-- /.dropdown-menu -->
							</li>
							<!-- /.menu-item -->

						</ul>
						<!-- /.nav -->
					</nav>
					<!-- /.megamenu-horizontal -->
				</div>
				<!-- /.side-menu -->
				<!-- ================================== TOP NAVIGATION : END ================================== -->

				<!-- ============================================== HOT DEALS ============================================== -->
				<%-- <div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
					<h3 class="section-title">hot deals</h3>
					<div
						class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">

						<div class="item">
							<div class="products">
								<div class="hot-deal-wrapper">
									<div class="image">
										<img
											src="${pageContext.request.contextPath}/static/website/assets/images/hot-deals/p25.jpg"
											alt="">
									</div>
									<div class="sale-offer-tag">
										<span>49%<br>off
										</span>
									</div>

								</div>
								<!-- /.hot-deal-wrapper -->

								<div class="product-info text-left m-t-20">
									<h3 class="name">
										<a href="${pageContext.request.contextPath}/detail">Floral
											Print Buttoned</a>
									</h3>
									<div class="rating rateit-small"></div>

									<div class="product-price">
										<span class="price"> &#x20b9; 600.00 </span> <span
											class="price-before-discount">$800.00</span>

									</div>
									<!-- /.product-price -->

								</div>
								<!-- /.product-info -->

								<div class="cart clearfix animate-effect">
									<div class="action">

										<div class="add-cart-button btn-group">
											<button class="btn btn-primary icon" data-toggle="dropdown"
												type="button">
												<i class="fa fa-shopping-cart"></i>
											</button>
											<button class="btn btn-primary cart-btn" type="button">Add
												to cart</button>

										</div>

									</div>
									<!-- /.action -->
								</div>
								<!-- /.cart -->
							</div>
						</div>
						<div class="item">
							<div class="products">
								<div class="hot-deal-wrapper">
									<div class="image">
										<img
											src="${pageContext.request.contextPath}/static/website/assets/images/hot-deals/p5.jpg"
											alt="">
									</div>
									<div class="sale-offer-tag">
										<span>35%<br>off
										</span>
									</div>
									<div class="timing-wrapper">
										<div class="box-wrapper">
											<div class="date box">
												<span class="key">120</span> <span class="value">Days</span>
											</div>
										</div>

										<div class="box-wrapper">
											<div class="hour box">
												<span class="key">20</span> <span class="value">HRS</span>
											</div>
										</div>

										<div class="box-wrapper">
											<div class="minutes box">
												<span class="key">36</span> <span class="value">MINS</span>
											</div>
										</div>

										<div class="box-wrapper hidden-md">
											<div class="seconds box">
												<span class="key">60</span> <span class="value">SEC</span>
											</div>
										</div>
									</div>
								</div>
								<!-- /.hot-deal-wrapper -->

								<div class="product-info text-left m-t-20">
									<h3 class="name">
										<a href="detail.html">Floral Print Buttoned</a>
									</h3>
									<div class="rating rateit-small"></div>

									<div class="product-price">
										<span class="price"> &#x20b9; 600.00 </span> <span
											class="price-before-discount">&#x20b9; 800.00</span>

									</div>
									<!-- /.product-price -->

								</div>
								<!-- /.product-info -->

								<div class="cart clearfix animate-effect">
									<div class="action">

										<div class="add-cart-button btn-group">
											<button class="btn btn-primary icon" data-toggle="dropdown"
												type="button">
												<i class="fa fa-shopping-cart"></i>
											</button>
											<button class="btn btn-primary cart-btn" type="button">Add
												to cart</button>

										</div>

									</div>
									<!-- /.action -->
								</div>
								<!-- /.cart -->
							</div>
						</div>
						<div class="item">
							<div class="products">
								<div class="hot-deal-wrapper">
									<div class="image">
										<img
											src="${pageContext.request.contextPath}/static/website/assets/images/hot-deals/p10.jpg"
											alt="">
									</div>
									<div class="sale-offer-tag">
										<span>35%<br>off
										</span>
									</div>
									<div class="timing-wrapper">
										<div class="box-wrapper">
											<div class="date box">
												<span class="key">120</span> <span class="value">Days</span>
											</div>
										</div>

										<div class="box-wrapper">
											<div class="hour box">
												<span class="key">20</span> <span class="value">HRS</span>
											</div>
										</div>

										<div class="box-wrapper">
											<div class="minutes box">
												<span class="key">36</span> <span class="value">MINS</span>
											</div>
										</div>

										<div class="box-wrapper hidden-md">
											<div class="seconds box">
												<span class="key">60</span> <span class="value">SEC</span>
											</div>
										</div>
									</div>
								</div>
								<!-- /.hot-deal-wrapper -->

								<div class="product-info text-left m-t-20">
									<h3 class="name">
										<a href="detail.html">Floral Print Buttoned</a>
									</h3>
									<div class="rating rateit-small"></div>

									<div class="product-price">
										<span class="price"> &#x20b9; 600.00 </span> <span
											class="price-before-discount">&#x20b9; 800.00</span>

									</div>
									<!-- /.product-price -->

								</div>
								<!-- /.product-info -->

								<div class="cart clearfix animate-effect">
									<div class="action">

										<div class="add-cart-button btn-group">
											<button class="btn btn-primary icon" data-toggle="dropdown"
												type="button">
												<i class="fa fa-shopping-cart"></i>
											</button>
											<button class="btn btn-primary cart-btn" type="button">Add
												to cart</button>

										</div>

									</div>
									<!-- /.action -->
								</div>
								<!-- /.cart -->
							</div>
						</div>


					</div>
					<!-- /.sidebar-widget -->
				</div> --%>
				<!-- ============================================== HOT DEALS: END ============================================== -->


				<!-- ============================================== SPECIAL OFFER ============================================== -->

				<%-- <div class="sidebar-widget outer-bottom-small wow fadeInUp">
					<h3 class="section-title">Special Offer</h3>
					<div class="sidebar-widget-body outer-top-xs">
						<div
							class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
							<div class="item">
								<div class="products special-product">
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p27.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->


													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Shirt</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p26.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->

													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Shirt</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p25.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->


													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Shirt</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
								</div>
							</div>
							
						</div>
					</div>
					<!-- /.sidebar-widget-body -->
				</div> --%>
				<!-- /.sidebar-widget -->

				<!-- ============================================== PRODUCT TAGS : END ============================================== -->
				<!-- ============================================== SPECIAL DEALS ============================================== -->


				<!-- /.sidebar-widget -->
				<!-- ============================================== Testimonials============================================== -->
				<div class="sidebar-widget  wow fadeInUp outer-top-vs ">
				<h3 class="section-title" style="text-align: center">Board Members</h3>
					<div id="advertisement" class="advertisement">
						<div class="item">
							<div class="avatar">
								<img
									src="${pageContext.request.contextPath}/static/website/assets/images/maheshwar.jpg"
									alt="Image">
							</div>
							<div class="testimonials">
								<em>"</em> Maheshwar Prasad is the CEO of Onlinemarts.
								Previously, Maheshwar served as the Sr.Software Engineer for
								various companies including Optiontown,FSS and MPS. He holds an
								MCA degree from Dehradun Institute of Technology.<em>"</em> <span>Dehradun
									(UK)</span>
							</div>
							<div class="clients_author">
								Maheshwar Prasad<span>Online Marts</span><span>www.onlinemarts.in</span>
							</div>
							<!-- /.container-fluid -->
						</div>
						<!-- /.item -->

						<div class="item">
							<div class="avatar">
								<img
									src="${pageContext.request.contextPath}/static/website/assets/images/Deepak.jpg"
									alt="Image">
							</div>
							<div class="testimonials">
								<em>"</em> Deepak Kumar Dubey is the Director of Onlinemarts.
								Previously, Deepak served as the Sr.Software Engineer for
								various companies. <em>"</em> <span>
							</div>
							<div class="clients_author">
								Deepak Kumar Dubey <span>Online Marts</span>
								<span>www.onlinemarts.in</span>
							</div>
						</div> 
						<!-- /.item -->

						<div class="item">
							<div class="avatar">
								<img
									src="${pageContext.request.contextPath}/static/website/assets/images/Sanjoyee.jpg"
									alt="Image">
							</div>
							<div class="testimonials">
							<em>"</em> Sanjoy Dhaneswar Nath  is the Managing Director of Onlinemarts.
								Previously, Sanjoy served as the Marketing Analyst for
								various companies. <em>"</em> <span>
							</div>
							<div class="clients_author">
								Sanjoy Dhaneswar Nath <span>Online Marts</span>
								<span>www.onlinemarts.in</span>
							</div>
							<!-- /.container-fluid -->
						</div> 
						<div class="item">
							<div class="avatar">
								<img
									src="${pageContext.request.contextPath}/static/website/assets/images/shashnath.jpg"
									alt="Image">
							</div>
							<div class="testimonials">
							<em>"</em> Sheshnath Morya is the Co-Founder of Onlinemarts.
								Previously, Sheshnath served as the Marketing Analyst for
								various companies. <em>"</em> <span>
							</div>
							<div class="clients_author">
								Sheshnath Morya <span>Online Marts</span>
								<span>www.onlinemarts.in</span>
							</div>
							<!-- /.container-fluid -->
						</div>
						<!-- /.item -->

					</div>
					<!-- /.owl-carousel -->
				</div>

				<!-- ============================================== Testimonials: END ============================================== -->

				<div class="home-banner">
					<a href="https://play.google.com/store/apps/details?id=com.onlinemart" target="_blank"><img
						src="${pageContext.request.contextPath}/static/website/assets/images/banners/LHS-banner.png"
						alt="Image"></a>
				</div>




			</div>
			<!-- /.sidemenu-holder -->
			<!-- ============================================== SIDEBAR : END ============================================== -->

			<!-- ============================================== CONTENT ============================================== -->
			<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
				<!-- ========================================== SECTION â HERO ========================================= -->

				<div id="hero">
					<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">

						<div class="item"
							style="background-image: url(${pageContext.request.contextPath}/static/website/assets/images/sliders/01.jpg);">
							<div class="container-fluid">
								<div class="caption bg-color vertical-center text-left">
									<div class="slider-header fadeInDown-1">Top Vegetables</div>
									<div class="big-text fadeInDown-1">100% Organic</div>

									<div class="excerpt fadeInDown-2 hidden-xs">

										<span>Farm Fresh Produce Right to Your Door.</span>

									</div>
									<div class="button-holder fadeInDown-3">
										<a href="javascript:(0);"
											class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
											Now</a>
									</div>
								</div>
								<!-- /.caption -->
							</div>
							<!-- /.container-fluid -->
						</div>
						<!-- /.item -->

						<div class="item"
							style="background-image: url(${pageContext.request.contextPath}/static/website/assets/images/sliders/02.jpg);">
							<div class="container-fluid">
								<div class="caption bg-color vertical-center text-left">
									<div class="slider-header fadeInDown-1">Spring 2016</div>
									<div class="big-text fadeInDown-1">
										Simply <span class="highlight">delicious</span>
									</div>

									<div class="excerpt fadeInDown-2 hidden-xs">

										<span>We supply highly quality organic products</span>

									</div>
									<div class="button-holder fadeInDown-3">
										<a href="javascript:(0);"
											class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
											Now</a>
									</div>
								</div>
								<!-- /.caption -->
							</div>
							<!-- /.container-fluid -->
						</div>
						<!-- /.item -->



					</div>
					<!-- /.owl-carousel -->
				</div>

				<!-- ========================================= SECTION â HERO : END ========================================= -->

				<!-- ============================================== INFO BOXES ============================================== -->
				<div class="info-boxes wow fadeInUp">
					<div class="info-boxes-inner">
						<div class="row">
							<div class="col-md-6 col-sm-4 col-lg-4">
								<div class="info-box">
									<div class="row">

										<div class="col-xs-12">
											<img
												src="${pageContext.request.contextPath}/static/website/assets/images/big_saving.png?v=1531811934">
											<span class="info-box-heading green">big saving money</span></img>
										</div>
									</div>
									<h6 class="text">On Order Over &#x20b9; 1000</h6>
								</div>
							</div>
							<!-- .col -->

							<div class="hidden-md col-sm-4 col-lg-4">
								<div class="info-box">
									<div class="row">

										<div class="col-xs-12">
											<img
												src="${pageContext.request.contextPath}/static/website/assets/images/freeShipping.png?v=1531811934">
											<span class="info-box-heading green">free shipping</span></img>
										</div>
									</div>
									<h6 class="text">Shipping on orders over &#x20b9; 400</h6>
								</div>
							</div>
							<!-- .col -->

							<div class="col-md-6 col-sm-4 col-lg-4">
								<div class="info-box">
									<div class="row">

										<div class="col-xs-12">
											<img
												src="${pageContext.request.contextPath}/static/website/assets/images/shipping.png?v=1531811934">
											<span class="info-box-heading green">Special Sale</span></img>
										</div>
									</div>
									<h6 class="text">Extra &#x20b9; 80 off on all items</h6>
								</div>
							</div>
							<!-- .col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.info-boxes-inner -->

				</div>
				<!-- /.info-boxes -->
				<!-- ============================================== INFO BOXES : END ============================================== -->
				<!-- ============================================== SCROLL TABS ============================================== -->
				<div id="product-tabs-slider"
					class="scroll-tabs outer-top-vs wow fadeInUp">
					<div class="more-info-tab clearfix ">
						<h3 class="new-product-title pull-left">New Products</h3>
						<ul class="nav nav-tabs nav-tab-line pull-right"
							id="new-products-1">
							<li class="active"><a
								href="${pageContext.request.contextPath}/">All</a></li>
							<c:forEach items="${item_categories}" var="cat"
								varStatus="status">
								<li><a
									href="${pageContext.request.contextPath}/filter?id=${cat.id}"
									onclick="0">${cat.categoryName}</a></li>
							</c:forEach>
						</ul>
						<!-- /.nav-tabs -->
					</div>

					<div class="tab-content outer-top-xs">
						<div class="tab-pane in active" id="all">
							<div class="product-slider">
								<c:forEach items="${stock_list}" var="stocks" varStatus="status">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme"
										data-item="4">
										<c:forEach items="${stocks}" var="stock" varStatus="status">
											<div class="item item-carousel">
												<div class="products">
													<div class="product">
														<div class="product-image">
															<div class="image">
																	<a href="detail.html?id=${stock.dto.id}"><img
																	src="${stock.dto.imageUri}"
																	alt=""></a>
															</div>
															<!-- /.image -->
															<div class="tag new">
																<span>new</span>
															</div>
														</div>
														<!-- /.product-image -->

														<div class="product-info text-left">
															<h3 class="name">
																<a href="detail.html">${stock.dto.itemName}</a>
															</h3>
															<div class="rating rateit-small">${stock.dto.description}</div>
															<div class="description"></div>

															<div class="product-price">
																<span class="price">&#x20b9;
																	${stock.dto.unitPrice}</span> <span
																	class="price-before-discount">&#x20b9;
																	${stock.dto.mrp}</span> <input name="itemName"
																	class="itemName" value="${stock.dto.itemName}"
																	type="hidden"> <input name="itemDesc"
																	class="itemDesc" value="${stock.dto.description}"
																	type="hidden"> <input name="product_price"
																	class="product_price" value="${stock.dto.unitPrice}"
																	type="hidden"> <input name="product_id"
																	class="product_id" value="${stock.dto.id}"
																	type="hidden">
															</div>
															<!-- /.product-price -->

														</div>
														<!-- /.product-info -->
														<div class="cart clearfix animate-effect">
															<div class="action">
																<ul class="list-unstyled">
																	<li class="add-cart-button btn-group">
																		<button data-toggle="tooltip"
																			class="btn btn-primary icon" type="button"
																			title="Add Cart">
																			<i class="fa fa-shopping-cart add-cartM"
																				onclick="AddToCard(this)"></i>
																		</button>
																		<button class="btn btn-primary cart-btn" type="button">Add
																			to cart</button>

																	</li>

																	<li class="lnk wishlist"><a data-toggle="tooltip"
																		class="add-to-cart" href="detail.html"
																		title="Wishlist"> <i class="icon fa fa-heart"></i>
																	</a></li>

																	<li class="lnk"><a data-toggle="tooltip"
																		class="add-to-cart" href="detail.html" title="Compare">
																			<i class="fa fa-signal" aria-hidden="true"></i>
																	</a></li>
																</ul>
															</div>
															<!-- /.action -->
														</div>
														<!-- /.cart -->
													</div>
													<!-- /.product -->

												</div>
												<!-- /.products -->
											</div>
											<!-- /.item -->

										</c:forEach>
									</div>
									<!-- /.home-owl-carousel -->
								</c:forEach>




							</div>
							<!-- /.product-slider -->
						</div>
						<!-- /.tab-pane -->
					</div>
					<!-- /.tab-content -->
				</div>
				<!-- /.scroll-tabs -->
				<!-- ============================================== SCROLL TABS : END ============================================== -->
				<!-- ============================================== FEATURED PRODUCTS ============================================== -->
				<%-- <section class="section featured-product wow fadeInUp">
					<h3 class="section-title">Featured products</h3>
					<div
						class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p5.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag hot">
											<span>hot</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p6.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag new">
											<span>new</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
												data-echo="${pageContext.request.contextPath}/static/website/assets/images/products/p7.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag sale">
											<span>sale</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p8.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag hot">
											<span>hot</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p9.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag new">
											<span>new</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p10.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag sale">
											<span>sale</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->
					</div>
					<!-- /.home-owl-carousel -->
				</section> --%>
				<!-- /.section -->
				<!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
				<!-- ============================================== BEST SELLER ============================================== -->

				<%-- <div class="best-deal wow fadeInUp outer-bottom-xs">
					<h3 class="section-title">Best seller</h3>
					<div class="sidebar-widget-body outer-top-xs">
						<div
							class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
							<div class="item">
								<div class="products best-product">
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p20.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->



													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p21.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->


													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
								</div>
							</div>
							<div class="item">
								<div class="products best-product">
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p22.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->


													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p23.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->



													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
								</div>
							</div>
							<div class="item">
								<div class="products best-product">
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p24.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->



													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p25.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->


													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
								</div>
							</div>
							<div class="item">
								<div class="products best-product">
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p26.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->



													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
									<div class="product">
										<div class="product-micro">
											<div class="row product-micro-row">
												<div class="col col-xs-5">
													<div class="product-image">
														<div class="image">
															<a href="#"> <img
																src="${pageContext.request.contextPath}/static/website/assets/images/products/p27.jpg"
																alt="">
															</a>
														</div>
														<!-- /.image -->


													</div>
													<!-- /.product-image -->
												</div>
												<!-- /.col -->
												<div class="col2 col-xs-7">
													<div class="product-info">
														<h3 class="name">
															<a href="#">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="product-price">
															<span class="price"> &#x20b9; 40.99 </span>

														</div>
														<!-- /.product-price -->

													</div>
												</div>
												<!-- /.col -->
											</div>
											<!-- /.product-micro-row -->
										</div>
										<!-- /.product-micro -->

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.sidebar-widget-body -->
				</div> --%>
				<!-- /.sidebar-widget -->
				<!-- ============================================== BEST SELLER : END ============================================== -->

				
				<!-- /.section -->
				<!-- ============================================== BLOG SLIDER : END ============================================== -->

				<!-- ============================================== FEATURED PRODUCTS ============================================== -->
				<%-- <section class="section wow fadeInUp new-arriavls">
					<h3 class="section-title">New Arrivals</h3>
					<div
						class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p19.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag new">
											<span>new</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p28.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag new">
											<span>new</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p30.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag hot">
											<span>hot</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p1.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag hot">
											<span>hot</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p2.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag sale">
											<span>sale</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9; 40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->

						<div class="item item-carousel">
							<div class="products">

								<div class="product">
									<div class="product-image">
										<div class="image">
											<a href="detail.html"><img
												src="${pageContext.request.contextPath}/static/website/assets/images/products/p3.jpg"
												alt=""></a>
										</div>
										<!-- /.image -->

										<div class="tag sale">
											<span>sale</span>
										</div>
									</div>
									<!-- /.product-image -->


									<div class="product-info text-left">
										<h3 class="name">
											<a href="detail.html">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="description"></div>

										<div class="product-price">
											<span class="price"> &#x20b9;40.99 </span> <span
												class="price-before-discount">&#x20b9; 800</span>

										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->
									<div class="cart clearfix animate-effect">
										<div class="action">
											<ul class="list-unstyled">
												<li class="add-cart-button btn-group">
													<button class="btn btn-primary icon" data-toggle="dropdown"
														type="button">
														<i class="fa fa-shopping-cart"></i>
													</button>
													<button class="btn btn-primary cart-btn" type="button">Add
														to cart</button>

												</li>

												<li class="lnk wishlist"><a class="add-to-cart"
													href="detail.html" title="Wishlist"> <i
														class="icon fa fa-heart"></i>
												</a></li>

												<li class="lnk"><a class="add-to-cart"
													href="detail.html" title="Compare"> <i
														class="fa fa-signal" aria-hidden="true"></i>
												</a></li>
											</ul>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
								<!-- /.product -->

							</div>
							<!-- /.products -->
						</div>
						<!-- /.item -->
					</div>
					<!-- /.home-owl-carousel -->
				</section> --%>
				<!-- /.section -->
				<!-- ============================================== FEATURED PRODUCTS : END ============================================== -->

			</div>
			<!-- /.homebanner-holder -->
			<!-- ============================================== CONTENT : END ============================================== -->
		</div>
		<!-- /.row -->
		<!-- ============================================== BRANDS CAROUSEL ============================================== -->
		<div id="brands-carousel" class="logo-slider wow fadeInUp">

			<div class="logo-slider-inner">
				<div id="brand-slider"
					class="owl-carousel brand-slider custom-carousel owl-theme">
					<div class="item m-t-15">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand1.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item m-t-10">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand2.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand3.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand4.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand5.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand6.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand2.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand4.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand1.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->

					<div class="item">
						<a href="#" class="image"> <img
							data-echo="${pageContext.request.contextPath}/static/website/assets/images/brands/brand5.png"
							src="${pageContext.request.contextPath}/static/website/assets/images/blank.gif"
							alt="">
						</a>
					</div>
					<!--/.item-->
				</div>
				<!-- /.owl-carousel #logo-slider -->
			</div>
			<!-- /.logo-slider-inner -->

		</div>
		<!-- /.logo-slider -->
		<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
	</div>
	<!-- /.container -->
</div>
<!-- /#top-banner-and-menu -->
<script type="text/javascript">
	var cartItem = new Array();
	$(document).ready(function() {
		showCart();
		/* $(".add-cart").click(function(){
		    var id = $(".product_id").attr('value');
		    alert(id);
		});
		 */
	});
	function AddToCard(clicked_id) {
		$('#myModal').modal('show');  //alert("Comming Soon..");
	}
</script>
