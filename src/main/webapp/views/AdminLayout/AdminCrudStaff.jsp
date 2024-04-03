<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<main>
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
										<h2>New Staff</h2>
										<form:form action="save" modelAttribute="staff" method="post"
											enctype="multipart/form-data">
											<div class="form-group">
											
												<form:input type="hidden" class="form-control" path="id" value="${idStaff}"
													placeholder="ID Staff" />
												<form:errors path="id" cssClass="error">
												</form:errors>
											</div>
											
											
												<div class="form-group">
												<label>ID</label>
												<form:input type="text" class="form-control disabled"
													path="id" value="${idStaff}" id="idStaff" />
												<form:errors path="firstname" cssClass="error">
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
												<form:input type="text" class="form-control" path="Id_Identity_Card"
													placeholder="citizen identification card" />
												<form:errors path="Id_Identity_Card" cssClass="error">
												</form:errors>

											</div>



											<div class="form-group">
											   <div class="form-group">
                            <label>Gender</label>
                            <div class="radio"><!--value = 1 => Nam| 0 =>Nu -->
                                <label class="checkbox-inline">
                                	<form:radiobutton path="gender" value="1"/>Male</label>
                                <label class="checkbox-inline">
									<form:radiobutton path="gender" value="0" />Female</label>
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
											<a href="http://localhost:8080/admin/staff" class="btn btn-success">Display
												Account</a>
												
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

		<script>
document.getElementById('idStaff').disabled = true;
</script>
	
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