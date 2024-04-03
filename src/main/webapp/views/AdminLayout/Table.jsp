<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
       
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
      
<!DOCTYPE html>
<html>
<head>
<link href="/views/AdminLayout/assets/img/favicon.png" rel="icon">
  <link href="/views/AdminLayout/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/views/AdminLayout/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/views/AdminLayout/assets/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
              <p></p>Quản lý Bàn nhà hàng <a href="https://github.com/fiduswriter/Simple-DataTables" target="_blank">Yum Great</a>
              <!-- Table with stripped rows -->
	          <form action="/admin/tblayout/submit" method="post" >
					Tên Bàn
					<input name="name" type="text" class="form-control"/>
					Trạng Thái
					<select class="form-control" name="status" id="status">
	             	<c:forEach var="myObject" items="${status}">
	             	  <option class="form-control" value="${myObject}">${myObject}</option>
			        </c:forEach>
					</select>
	   				Kiểu Bàn
					<select class="form-control" name="type" id="type">
	             	<c:forEach var="myObject" items="${type}">
	             	  <option class="form-control" value="${myObject}">${myObject}</option>
			        </c:forEach>
					</select>
					<br>
					<button class="btn btn-success">Submit</button>
				</form>
			</div>
			<hr>
			<br>
			<div class="col-lg-12">
			<h3>Bảng Bàn Ăn</h3>
			<table class="table table-hover"  style="width:100%">
				<tr>
					
					<th scope="col">ID</th>
					<th scope="col">Tên Bàn</th>
					<th scope="col">Trạng Thái</th>
					<th scope="col">Kiểu</th>
					
					
				</tr>

			 	<c:forEach var="tbl" items="${filltb}" varStatus="loop">
	
					<tr>
										

								
						<td>${tbl.id}</td>
						<td>${tbl.name}</td>
						<td>${tbl.status}</td>
						<td>${tbl.type}</td>
						
						
					
					<td>
					<a class="btn btn-warning" href="/admin/deleted/${p.id}">Remove</a>
						
					<td><a class="btn btn-success" href="/admin/edit/${p.id}">Edit</a> 
					</td>
					</tr>
				</c:forEach>
				
			</table>
			<h3 style="margin-left:30%">Hiện đang có ${page.totalElements} đang hoạt động </h3>
			<a href="http://localhost:8080/admin/chart" class="btn btn-success">Xem biểu đồ 
												</a>
					<a href="http://localhost:8080/admin/staffwasblock" class="btn btn-success">Xem nhân viên bị khóa
												</a>
				<nav aria-label="Page navigation example" style="margin-left: 40%">
					<ul class="pagination">
						<li class="page-item"><a class="page-link"href="/admin/staff?p=0"  >First</a></li>
						<c:if test="${page.number>0}">
						<li class="page-item"><a class="page-link" href="/admin/staff?p=${page.number-1}">Prev</a></li>
						</c:if>
							<c:if test="${page.number+1<=page.totalPages-1}">
						<li class="page-item"><a class="page-link" href="/admin/staff?p=${page.number+1}">Next</a></li>
						</c:if>
						<li class="page-item"><a class="page-link" href="/admin/staff?p=${page.totalPages-1}">Last</a></li>
					<!-- 
						<ul>
							
							<li>	Số thực thể hiện tại trong 1 trang: ${page.numberOfElements} </li>
							<li>	Trang số: ${page.number} </li>
							<li>	Kích thước trang: ${page.size} </li>
							<li>	Tổng số thực thể: ${page.totalElements} </li>
							<li>	Tổng số trang: ${page.totalPages} </li>
							
						
						</ul>
 				-->	
					</ul>
				</nav>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
			</div>
    </section>

  
  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/views/AdminLayout/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/views/AdminLayout/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/quill/quill.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/views/AdminLayout/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/views/AdminLayout/assets/js/main.js"></script>

</body>
</html>