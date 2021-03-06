<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	session = request.getSession(true);
	if (session.getAttribute("user") == null) {
		response.sendRedirect("/OM");
	}
%>
<div>
	<header class="main-header">

		<!-- Logo -->
		<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>Assiduous</b></span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Assiduous Technologies</b></span>
		</a>

		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="push-menu"
				role="button"> <span class="sr-only">Toggle navigation</span>
			</a>
			<!-- Navbar Right Menu -->
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<li class="dropdown messages-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 4 messages</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">

									<li><a href="#">
											<div class="pull-left">
												<img src="static/dist/img/profile.png" class="img-circle"
													alt="User Image">
											</div>
											<h4>
												Sales Department <small><i class="fa fa-clock-o"></i>
													Yesterday</small>
											</h4>
											<p>Why not buy a new awesome theme?</p>
									</a></li>
									<li><a href="#">
											<div class="pull-left">
												<img src="static/dist/img/profile.png" class="img-circle"
													alt="User Image">
											</div>
											<h4>
												Reviewers <small><i class="fa fa-clock-o"></i> 2
													days</small>
											</h4>
											<p>Why not buy a new awesome theme?</p>
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="#">See All Messages</a></li>
						</ul></li>
					<!-- Notifications: style can be found in dropdown.less -->
					<li class="dropdown notifications-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 10 notifications</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">

									<li><a href="#"> <i
											class="fa fa-shopping-cart text-green"></i> 25 sales made
									</a></li>
									<li><a href="#"> <i class="fa fa-user text-red"></i>
											You changed your username
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="#">View all</a></li>
						</ul></li>
					<!-- Tasks: style can be found in dropdown.less -->
					<li class="dropdown tasks-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 9 tasks</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">

									<!-- end task item -->
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Make beautiful transitions <small class="pull-right">80%</small>
											</h3>
											<div class="progress xs">
												<div class="progress-bar progress-bar-yellow"
													style="width: 80%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
								</ul>
							</li>
							<li class="footer"><a href="#">View all tasks</a></li>
						</ul></li>
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="${pageContext.request.contextPath}/static/dist/img/profile.png"
							class="user-image" alt="User Image"> <span
							class="hidden-xs">${user.name} </span>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header"><img
								src="static/dist/img/profile.png" class="img-circle"
								alt="User Image">

								<p>
									${user.name} <small>Member since Nov. 2019</small>
								</p></li>

							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="${pageContext.request.contextPath}/profile"
										class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="${pageContext.request.contextPath}/invalidate"
										class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul></li>
					<!-- Control Sidebar Toggle Button -->
					<li><a href="#" data-toggle="control-sidebar"><i
							class="fa fa-gears"></i></a></li>
				</ul>
			</div>

		</nav>
	</header>
</div>