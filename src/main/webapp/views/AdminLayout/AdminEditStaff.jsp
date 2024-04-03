<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.poly.Enum.Status_Staff"%>
<!DOCTYPE html>
<html>
<head>
<link href="/views/AdminLayout/assets/img/favicon.png" rel="icon">
<link href="/views/AdminLayout/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="/views/AdminLayout/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/views/AdminLayout/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="/views/AdminLayout/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="/views/AdminLayout/assets/vendor/quill/quill.snow.css"
	rel="stylesheet">
<link href="/views/AdminLayout/assets/vendor/quill/quill.bubble.css"
	rel="stylesheet">
<link href="/views/AdminLayout/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link
	href="/views/AdminLayout/assets/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/views/AdminLayout/assets/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Crud Staff</title>
<style>
.error {
	color: red;
	font-size: 15px;
}
</style>
</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">

		<div class="d-flex align-items-center justify-content-between">
			<a href="index.html" class="logo d-flex align-items-center"> <img
				src="assets/img/logo.png" alt=""> <span
				class="d-none d-lg-block">NiceAdmin</span>
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		<!-- End Logo -->

		<div class="search-bar">
			<form class="search-form d-flex align-items-center" method="POST"
				action="#">
				<input type="text" name="query" placeholder="Search"
					title="Enter search keyword">
				<button type="submit" title="Search">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>
		<!-- End Search Bar -->

		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">

				<li class="nav-item d-block d-lg-none"><a
					class="nav-link nav-icon search-bar-toggle " href="#"> <i
						class="bi bi-search"></i>
				</a></li>
				<!-- End Search Icon-->

				<li class="nav-item dropdown"><a class="nav-link nav-icon"
					href="#" data-bs-toggle="dropdown"> <i class="bi bi-bell"></i>
						<span class="badge bg-primary badge-number">4</span>
				</a> <!-- End Notification Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
						<li class="dropdown-header">You have 4 new notifications <a
							href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View
									all</span></a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-exclamation-circle text-warning"></i>
							<div>
								<h4>Lorem Ipsum</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>30 min. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-x-circle text-danger"></i>
							<div>
								<h4>Atque rerum nesciunt</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>1 hr. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-check-circle text-success"></i>
							<div>
								<h4>Sit rerum fuga</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>2 hrs. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-info-circle text-primary"></i>
							<div>
								<h4>Dicta reprehenderit</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>4 hrs. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>
						<li class="dropdown-footer"><a href="#">Show all
								notifications</a></li>

					</ul> <!-- End Notification Dropdown Items --></li>
				<!-- End Notification Nav -->

				<li class="nav-item dropdown"><a class="nav-link nav-icon"
					href="#" data-bs-toggle="dropdown"> <i
						class="bi bi-chat-left-text"></i> <span
						class="badge bg-success badge-number">3</span>
				</a> <!-- End Messages Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
						<li class="dropdown-header">You have 3 new messages <a
							href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View
									all</span></a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img
								src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
								<div>
									<h4>Maria Hudson</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore
										officia est ut...</p>
									<p>4 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img
								src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
								<div>
									<h4>Anna Nelson</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore
										officia est ut...</p>
									<p>6 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img
								src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
								<div>
									<h4>David Muldon</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore
										officia est ut...</p>
									<p>8 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="dropdown-footer"><a href="#">Show all messages</a>
						</li>

					</ul> <!-- End Messages Dropdown Items --></li>
				<!-- End Messages Nav -->

				<li class="nav-item dropdown pe-3"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown"> <img
						src="assets/img/profile-img.jpg" alt="Profile"
						class="rounded-circle"> <span
						class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
				</a> <!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6>Kevin Anderson</h6> <span>Web Designer</span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="users-profile.html"> <i class="bi bi-person"></i> <span>My
									Profile</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="users-profile.html"> <i class="bi bi-gear"></i> <span>Account
									Settings</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="pages-faq.html"> <i class="bi bi-question-circle"></i>
								<span>Need Help?</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="#"> <i class="bi bi-box-arrow-right"></i> <span>Sign
									Out</span>
						</a></li>

					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</nav>
		<!-- End Icons Navigation -->

	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link collapsed"
				href="index.html"> <i class="bi bi-grid"></i> <span>Dashboard</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-menu-button-wide"></i><span>Components</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="components-alerts.html"> <i
							class="bi bi-circle"></i><span>Alerts</span>
					</a></li>
					<li><a href="components-accordion.html"> <i
							class="bi bi-circle"></i><span>Accordion</span>
					</a></li>
					<li><a href="components-badges.html"> <i
							class="bi bi-circle"></i><span>Badges</span>
					</a></li>
					<li><a href="components-breadcrumbs.html"> <i
							class="bi bi-circle"></i><span>Breadcrumbs</span>
					</a></li>
					<li><a href="components-buttons.html"> <i
							class="bi bi-circle"></i><span>Buttons</span>
					</a></li>
					<li><a href="components-cards.html"> <i
							class="bi bi-circle"></i><span>Cards</span>
					</a></li>
					<li><a href="components-carousel.html"> <i
							class="bi bi-circle"></i><span>Carousel</span>
					</a></li>
					<li><a href="components-list-group.html"> <i
							class="bi bi-circle"></i><span>List group</span>
					</a></li>
					<li><a href="components-modal.html"> <i
							class="bi bi-circle"></i><span>Modal</span>
					</a></li>
					<li><a href="components-tabs.html"> <i
							class="bi bi-circle"></i><span>Tabs</span>
					</a></li>
					<li><a href="components-pagination.html"> <i
							class="bi bi-circle"></i><span>Pagination</span>
					</a></li>
					<li><a href="components-progress.html"> <i
							class="bi bi-circle"></i><span>Progress</span>
					</a></li>
					<li><a href="components-spinners.html"> <i
							class="bi bi-circle"></i><span>Spinners</span>
					</a></li>
					<li><a href="components-tooltips.html"> <i
							class="bi bi-circle"></i><span>Tooltips</span>
					</a></li>
				</ul></li>
			<!-- End Components Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>Forms</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="forms-elements.html"> <i class="bi bi-circle"></i><span>Form
								Elements</span>
					</a></li>
					<li><a href="forms-layouts.html"> <i class="bi bi-circle"></i><span>Form
								Layouts</span>
					</a></li>
					<li><a href="forms-editors.html"> <i class="bi bi-circle"></i><span>Form
								Editors</span>
					</a></li>
					<li><a href="forms-validation.html"> <i
							class="bi bi-circle"></i><span>Form Validation</span>
					</a></li>
				</ul></li>
			<!-- End Forms Nav -->

			<li class="nav-item"><a class="nav-link "
				data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="tables-nav" class="nav-content collapse show"
					data-bs-parent="#sidebar-nav">
					<li><a href="tables-general.html"> <i class="bi bi-circle"></i><span>General
								Tables</span>
					</a></li>
					<li><a href="tables-data.html" class="active"> <i
							class="bi bi-circle"></i><span>Data Tables</span>
					</a></li>
				</ul></li>
			<!-- End Tables Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-bar-chart"></i><span>Charts</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="charts-chartjs.html"> <i class="bi bi-circle"></i><span>Chart.js</span>
					</a></li>
					<li><a href="charts-apexcharts.html"> <i
							class="bi bi-circle"></i><span>ApexCharts</span>
					</a></li>
					<li><a href="charts-echarts.html"> <i class="bi bi-circle"></i><span>ECharts</span>
					</a></li>
				</ul></li>
			<!-- End Charts Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-gem"></i><span>Icons</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="icons-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="icons-bootstrap.html"> <i
							class="bi bi-circle"></i><span>Bootstrap Icons</span>
					</a></li>
					<li><a href="icons-remix.html"> <i class="bi bi-circle"></i><span>Remix
								Icons</span>
					</a></li>
					<li><a href="icons-boxicons.html"> <i class="bi bi-circle"></i><span>Boxicons</span>
					</a></li>
				</ul></li>
			<!-- End Icons Nav -->

			<li class="nav-heading">Pages</li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="users-profile.html"> <i class="bi bi-person"></i> <span>Profile</span>
			</a></li>
			<!-- End Profile Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>F.A.Q</span>
			</a></li>
			<!-- End F.A.Q Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-contact.html"> <i class="bi bi-envelope"></i> <span>Contact</span>
			</a></li>
			<!-- End Contact Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-register.html"> <i class="bi bi-card-list"></i> <span>Register</span>
			</a></li>
			<!-- End Register Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-login.html"> <i class="bi bi-box-arrow-in-right"></i>
					<span>Login</span>
			</a></li>
			<!-- End Login Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-error-404.html"> <i class="bi bi-dash-circle"></i> <span>Error
						404</span>
			</a></li>
			<!-- End Error 404 Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-blank.html"> <i class="bi bi-file-earmark"></i> <span>Blank</span>
			</a></li>
			<!-- End Blank Page Nav -->

		</ul>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Data Tables</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Tables</li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Datatables</h5>
							<p>
								Quản lý nhân viên nhà hàng <a
									href="https://github.com/fiduswriter/Simple-DataTables"
									target="_blank">Yum Great</a>

								<!-- Table with stripped rows -->
							<div class="container" style="margin-top: 10px;"></div>


							<div class="container" style="margin-top: 10px;">
								<div class="row"
									style="border: 1px darkgrey solid; border-radius: 10px; width: 75%; margin-left: 20px; padding: 10px;">
									<div class="col-sm-12">
										<h2>Edit Staff</h2>
										<form:form action="save" modelAttribute="staff" method="post"
											enctype="multipart/form-data">
											<div class="form-group">
												<label>ID</label>
												<form:input type="text" class="form-control" path="id"
													disabled="true"/>
												<form:errors path="id" cssClass="error">
												</form:errors>
											</div>


											<div class="form-group">
												<label>FirstName</label>
												<form:input type="text" class="form-control"
													path="firstname" placeholder="FirstName" />
												<form:errors path="firstname" cssClass="error">
												</form:errors>

											</div>
											<div class="form-group">
												<label>LastName</label>
												<form:input type="text" class="form-control" path="lastname"
													placeholder="Lastname" />
												<form:errors path="lastname" cssClass="error">
												</form:errors>

											</div>
											<div class="form-group">
												<label>Email</label>
												<form:input type="text" class="form-control" path="email"
													placeholder="Email" />
												<form:errors path="email" cssClass="error">
												</form:errors>

											</div>

											<div class="form-group">
												<label>Citizen Identification Card</label>
												<form:input type="text" class="form-control"
													path="Id_Identity_Card"
													placeholder="citizen identification card" />
												<form:errors path="Id_Identity_Card" cssClass="error">
												</form:errors>

											</div>



											<div class="form-group">
											<h2>STATUS</h2>
												<label for="active">Active</label> <input type="radio"
													id="active" name="status" value="ACTIVE"
													${staff.status == 'ACTIVE' ? 'checked' : ''}> <br>
												<label for="inactive">Inactive</label> <input type="radio"
													id="inactive" name="status" value="INACTIVE"
													${staff.status == 'INACTIVE' ? 'checked' : ''}> <br>
												<label for="onLeave">On Leave</label> <input type="radio"
													id="onLeave" name="status" value="ON_LEAVE"
													${staff.status == 'ON_LEAVE' ? 'checked' : ''}> <br>
												<label for="block">Block</label> <input type="radio"
													id="block" name="status" value="BLOCK"
													${staff.status == 'BLOCK' ? 'checked' : ''}> <br>
												<label for="deleted">Deleted</label> <input type="radio"
													id="deleted" name="status" value="DELETED"
													${staff.status == 'DELETED' ? 'checked' : ''}> <br>
											</div>  







											<div class="form-group">
												<div class="form-group">
													<label>Gender</label>
													<div class="radio">
														<!--value = 1 => Nam| 0 =>Nu -->
														<label class="checkbox-inline"> <form:radiobutton
																path="gender" value="1" />Male
														</label> <label class="checkbox-inline"> <form:radiobutton
																path="gender" value="0" />Female
														</label>
													</div>
												</div>

											</div>

											<div class="form-group">
												<label>Salary</label>
												<form:input type="text" class="form-control" path="salary"
													placeholder="Salary" />


											</div>

											<form:button type="submit" class="btn btn-primary">Save</form:button>
											<form:button type="reset" class="btn btn-primary">Cancel</form:button>
											<a href="http://localhost:8080/admin/staff"
												class="btn btn-success">Display Account</a>
										</form:form>
									</div>
								</div>
							
							</div>























							<!-- End Table with stripped rows -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by <a href="https://bootstrapmade.com/">PS26443</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="/views/AdminLayout/assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script
		src="/views/AdminLayout/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/views/AdminLayout/assets/vendor/chart.js/chart.umd.js"></script>
	<script src="/views/AdminLayout/assets/vendor/echarts/echarts.min.js"></script>
	<script src="/views/AdminLayout/assets/vendor/quill/quill.min.js"></script>
	<script
		src="/views/AdminLayout/assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="/views/AdminLayout/assets/vendor/tinymce/tinymce.min.js"></script>
	<script
		src="/views/AdminLayout/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/views/AdminLayout/assets/js/main.js"></script>

</body>
</html>