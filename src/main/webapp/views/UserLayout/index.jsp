<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
  <link href="/views/UserLayout/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/views/UserLayout/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/views/UserLayout/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/views/UserLayout/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/views/UserLayout/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/views/UserLayout/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/views/UserLayout/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
 
  <!-- Template Main CSS File -->
  <link href="/views/UserLayout/assets/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center fixed-top topbar-transparent">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-center justify-content-lg-start">
      <i class="bi bi-phone d-flex align-items-center"><span>+84966980532/+84385555702</span></i>
      <i class="bi bi-clock ms-4 d-none d-lg-flex align-items-center"><span>Mon-Sat: 11:00 AM - 23:00 PM</span></i>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <div class="logo me-auto">
        <h1 style="font-size: 25px"><a href="#">Yummy Great</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="/user/dashboard">Trang Chủ</a></li>
          <li><a class="nav-link scrollto" href="#about">Thông Tin</a></li>
          <li><a class="nav-link scrollto" href="#menu">Thực Đơn</a></li>
          <li><a class="nav-link scrollto" href="#specials">Đặc biệt</a></li>
          <li><a class="nav-link scrollto" href="#events">Sự Kiện</a></li>
          <li><a class="nav-link scrollto" href="#chefs">Đầu Bếp</a></li>
          <li><a class="nav-link scrollto" href="#gallery">Bộ sưu tập</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          <li><a class="nav-link scrollto" href="/user/takebooking/${user.customer.id}">Đặt Bàn</a></li>
         	<c:set var="user" value="${user}" />

				<c:if test="${not empty user}">
				   <li class="dropdown"><a href="#"><i class="bi bi-person-circle"></i><span> ${user.username}</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/user/account/info/${user.customer.id}">Thông Tin Tài Khoản</a></li>
              <li><a href="/user/account/changepass/${user.username}">Đổi Mật Khẩu</a></li>
              <li><a href="/user/account/order/${user.customer.id}">Đơn Đặt Bàn</a></li>
              <li><a href="/user/logout">Đăng Xuất</a></li>
            </ul>
          </li>
				</c:if>
				
				<c:if test="${empty user}">
				    <li><a class="nav-link scrollto" href="/user/login">Đăng nhập</a></li>
				</c:if>
          </ul>
        </nav>
        <i class="bi bi-list mobile-nav-toggle"></i>
	<!--<a href="" class="book-a-table-btn scrollto">Book a table</a>  -->
    </div>
  </header>
  <!-- End Header -->
<section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image: url(../views/UserLayout/assets/img/slide/slide-1.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown"><span>Yummy Great</span> Restaurant</h2>
                <p class="animate__animated animate__fadeInUp">Nhà hàng Yummi Great là điểm đến lý tưởng cho những thực khách đang tìm kiếm một trải nghiệm ẩm thực độc đáo và đẳng cấp. Với không gian sang trọng và ấm cúng, Yummi Great không chỉ là nơi để thưởng thức các món ăn ngon mắt mà còn là không gian lý tưởng để tận hưởng những khoảnh khắc đặc biệt với gia đình và bạn bè.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Xem Thực Đơn</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Đặt Bàn</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background-image: url(../views/UserLayout/assets/img/slide/slide-2.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Đặc trưng ẩm thực</h2>
                <p class="animate__animated animate__fadeInUp">Yummi Great tự hào là địa điểm có thực đơn đa dạng, từ các món ăn truyền thống đến những sáng tạo mới lạ. Đội ngũ đầu bếp tài năng của chúng tôi luôn sáng tạo để mang đến cho thực khách những trải nghiệm ẩm thực độc đáo và thú vị.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Xem Thực Đơn</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Đặt Bàn</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item" style="background-image: url(../views/UserLayout/assets/img/slide/slide-3.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Chất lượng nguyên liệu</h2>
                <p class="animate__animated animate__fadeInUp">Chúng tôi cam kết sử dụng nguyên liệu tươi ngon và chất lượng cao, từ các đầu bếp đến bàn ăn của bạn. Mỗi món ăn tại Yummi Great được chế biến cẩn thận để đảm bảo hương vị tối ưu và đáp ứng mọi mong đợi của thực khách khó tính nhất.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Xem Thực Đơn</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Đặt Bàn</a>
                </div>
              </div>
            </div>
          </div>
          <!-- slide 4 -->
		<div class="carousel-item" style="background-image: url(../views/UserLayout/assets/img/slide/slide-3.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Phục vụ chuyên nghiệp</h2>
                <p class="animate__animated animate__fadeInUp">Đội ngũ nhân viên tận tâm và chuyên nghiệp tại Yummi Great luôn sẵn sàng phục vụ bạn với sự nhiệt tình và chu đáo. Chúng tôi hiểu rằng một dịch vụ xuất sắc cũng là một phần quan trọng của trải nghiệm ẩm thực.
                  <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Xem Thực Đơn</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Đặt Bàn</a>
                </div>
                </div>
              </div>
            </div>
          </div>
        </div>
	<!-- slide 5 -->
		<div class="carousel-item" style="background-image: url(../views/UserLayout/assets/img/slide/slide-3.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Không gian thoải mái</h2>
                <p class="animate__animated animate__fadeInUp">Với thiết kế sang trọng nhưng vẫn giữ được không khí ấm cúng, không gian tại Yummi Great là nơi lý tưởng cho các buổi họp mặt, kỷ niệm, hoặc thậm chí là những cuộc gặp gỡ công việc quan trọng.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Xem Thực Đơn</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Đặt Bàn</a>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item" style="background-image: url(../views/UserLayout/assets/img/slide/slide-3.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Sự kiện đặc biệt</h2>
                <p class="animate__animated animate__fadeInUp">Yummi Great cũng tổ chức các sự kiện đặc biệt như tiệc cưới, tiệc kỷ niệm, hay các buổi biểu diễn âm nhạc, tạo ra những kỷ niệm khó quên cho khách hàng.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Xem Thực Đơn</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Đặt Bàn</a>
                </div>
              </div>
            </div>
          </div>
        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
  </section><!-- End Hero -->
	  <main id="main">
	 	 <jsp:include page="${pageall}"/>
	  </main><!-- End #main -->	
  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>Yummy Great</h3>
      <p>Et aut eum quis fuga eos sunt ipsa nihil. Labore corporis magni eligendi fuga maxime saepe commodi placeat.</p>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
      <div class="copyright">
        &copy; Copyright <strong><span>Yummy Great</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/ -->
        Designed by <a href="">Phạm Minh Đức</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/views/UserLayout/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/views/UserLayout/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/views/UserLayout/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/views/UserLayout/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/views/UserLayout/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
 
  <script src="/views/UserLayout/assets/js/main.js"></script>

</body>
</html>