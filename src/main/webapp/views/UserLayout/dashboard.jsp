<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    /* Đặt kích thước cho thẻ card */
    .card {
        width: 100%;
        border: 1px solid #ccc;
        border-radius: 10px;
        overflow: hidden;
        margin-top: 5%
    }

    /* Đặt kích thước cho ảnh trong card */
    .card-img-top {
        width: 100%;
        height: 200px; /* Điều chỉnh chiều cao của ảnh tại đây */
        object-fit: cover; /* Đảm bảo ảnh vừa với kích thước của thẻ */
        border-bottom: 1px solid #ddd; /* Đường viền dưới cho ảnh */
    }

    /* Đặt kích thước cho tiêu đề và mô tả trong card */
    .card-title {
        font-size: 20px;
        margin-top: 10px;
    }

    .card-text {
        font-size: 16px;
        color: #666;
    }
</style>
<body>


  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container-fluid">

        <div class="row">

          <div class="col-lg-5 align-items-stretch video-box" style='background-image: url("../views/UserLayout/assets/img/about.jpg");'>
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

            <div class="content">
              <h3>Lịch Sử <strong> Thành Lập</strong></h3>
              <p>
                Lịch sử thành lập của nhà hàng Yummi Great chứa đựng những cố gắng, tâm huyết và sự đổi mới từ những người sáng lập, tạo ra một thương hiệu ẩm thực độc đáo và nổi tiếng.
              </p>
              <ul>
                <li><i class="bx bx-check-double"></i> 
                	 Ý tưởng và Sáng tạo (Năm 20XX)
Mọi khởi đầu đều bắt đầu từ một ý tưởng. Yummi Great ra đời từ tâm huyết của một nhóm người sáng lập đam mê ẩm thực và mong muốn mang lại cho khách hàng trải nghiệm độc đáo thông qua ẩm thực. Họ bắt tay vào việc nghiên cứu thị trường, tìm kiếm ý kiến phản hồi từ cộng đồng, và xây dựng nên một wision (tầm nhìn) và mission (sứ mệnh) mà họ tin tưởng.
                </li>
                <li><i class="bx bx-check-double"></i> 
                	Xây dựng Nhóm Đầu Bếp và Dịch vụ (Năm 20XX-20XX)
Việc lựa chọn đội ngũ đầu bếp là quan trọng, và Yummi Great không là ngoại lệ. Các đầu bếp tài năng được tuyển chọn kỹ lưỡng, mang đến cho nhà hàng sự chất lượng và đa dạng trong thực đơn. Đồng thời, đội ngũ nhân viên phục vụ cũng được đào tạo chuyên nghiệp, hướng dẫn bởi triết lý "khách hàng là trên hết."
                </li>
                <li><i class="bx bx-check-double"></i> 
                	Khai trương Yummi Great (Năm 20XX)
Yummi Great mở cửa chính thức với sự kiện lớn, thu hút sự chú ý của cộng đồng ẩm thực và bắt đầu một hành trình đầy thách thức nhưng cũng đầy hứa hẹn. Khách hàng đầu tiên bước vào Yummi Great đã được chìm đắm trong không gian sang trọng và hương vị đặc trưng.
                </li>
                <li><i class="bx bx-check-double"></i> 
                	Phát triển Thực Đơn và Thương Hiệu (Năm 20XX-20XX)
Yummi Great không ngừng cải tiến thực đơn của mình, thêm vào đó những món ăn mới lạ và sáng tạo. Thương hiệu không chỉ được xây dựng trên chất lượng ẩm thực mà còn trên không gian thoải mái và dịch vụ tận tâm.
                </li>
                <li><i class="bx bx-check-double"></i> 
                	Mở rộng và Đổi mới (Năm 20XX-hiện tại)
Thành công của Yummi Great đã mở ra cơ hội để mở rộng thương hiệu và khai trương các chi nhánh mới. Sự đổi mới về thực đơn, phong cách thiết kế và các sự kiện đặc biệt liên tục giữ cho Yummi Great là điểm đến yêu thích của thực khách.
                </li>
              </ul>
              <p>
               Từ những bước đi chặng đường này, Yummi Great không chỉ là một nhà hàng, mà là một điểm đến ẩm thực đẳng cấp và đầy ấn tượng, góp phần làm phong phú thêm bức tranh ẩm thực đa dạng trên thị trường.
              </p>
            </div>

          </div>

        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Whu Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="section-title">
          <h2>Tại Sao Nên Chọn <span>Yummy Great</span></h2>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row">

          <div class="col-lg-4">
            <div class="box">
              <span>01</span>
              <h4>Đa dạng và Chất lượng Thực Đơn</h4>
              <p>Yummi Great nổi bật với thực đơn đa dạng, từ các món ăn truyền thống đến những sáng tạo mới lạ. Sự chăm chút trong việc lựa chọn nguyên liệu chất lượng cao và sự tài năng của đầu bếp chính làm cho mỗi món ăn tại Yummi Great trở nên đặc biệt. Khách hàng sẽ được trải nghiệm hương vị tinh tế và độc đáo mà không gặp sự nhàm chán.</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box">
              <span>02</span>
              <h4>Không Gian Sang Trọng và Ấm Cúng</h4>
              <p>Không chỉ là nơi để thưởng thức ẩm thực, Yummi Great còn tạo ra một không gian sang trọng và ấm cúng. Thiết kế nội thất tinh tế, ánh sáng dễ chịu và không khí ấm áp làm cho bữa ăn trở nên thêm phần đặc biệt. Cho dù bạn đang tổ chức một cuộc họp mặt hay đi dùng trưa với đối tác, không gian tại Yummi Great là lựa chọn lý tưởng.</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box">
              <span>03</span>
              <h4>Dịch vụ Chuyên Nghiệp và Tận Tâm</h4>
              <p>Đội ngũ nhân viên tại Yummi Great được đào tạo chuyên nghiệp, luôn sẵn sàng phục vụ khách hàng với sự tận tâm và chu đáo. Sự quan tâm đến chi tiết và khả năng đáp ứng nhanh chóng đem lại cho khách hàng một trải nghiệm ẩm thực không chỉ ngon miệng mà còn thoải mái và dễ chịu.</p>
            </div>
          </div>
		 <div class="section-title">
          <p>Kết hợp giữa thực đơn phong phú, không gian lịch sự, và dịch vụ chuyên nghiệp, Yummi Great không chỉ là một nhà hàng, mà là một điểm đến hoàn hảo cho những người đang tìm kiếm trải nghiệm ẩm thực đẳng cấp và độc đáo.</p>
        </div>
        </div>

      </div>
    </section><!-- End Whu Us Section -->

    <!-- ======= Menu Section ======= -->
     <section id="menu" class="menu">
    <div class="container">

        <div class="section-title">
            <h2>
                <span>Thực Đơn Nhà Hàng</span>
            </h2>
        </div>

<div class="row">
    <div class="col-lg-12 d-flex justify-content-center">
        <ul id="menu-flters">
            <li><a href="/user/menu/APPETIZER">Khai Vị</a></li>
            <li><a href="/user/menu/MAIN_COURSE">Món Chính</a></li>
            <li><a href="/user/menu/DESSERT">Tráng Miệng</a></li>
            <!-- Thêm các loại thực phẩm khác vào đây -->
        </ul>
    </div>
</div>


        <div class="row">
            <!-- Sử dụng forEach để lặp qua danh sách món ăn -->
            <c:forEach var="foodItem" items="${food}">
                <div class="col-lg-4 col-md-6 menu-item filter-starters">
                    <div class="card">
                        <img src="${foodItem.image}" class="card-img-top" alt="${foodItem.name}">
                        <div class="card-body">
                            <h5 class="card-title">${foodItem.name}</h5>
                            <p class="card-text">${foodItem.description}</p>
                            <p class="card-text">Giá: ${foodItem.price}</p>
                            <p class="card-text">Loại: ${foodItem.type}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
  </section>
    
     
    <!-- ======= Specials Section ======= -->
    <section id="specials" class="specials">
      <div class="container">

        <div class="section-title">
          <h2>Check our <span>Specials</span></h2>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Modi sit est</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">Unde praesentium sed</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Pariatur explicabo vel</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-4">Nostrum qui quasi</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-5">Iusto ut expedita aut</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Architecto ut aperiam autem id</h3>
                    <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                    <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="/views/UserLayout/assets/img/specials-1.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Et blanditiis nemo veritatis excepturi</h3>
                    <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                    <p>Ea ipsum voluptatem consequatur quis est. Illum error ullam omnis quia et reiciendis sunt sunt est. Non aliquid repellendus itaque accusamus eius et velit ipsa voluptates. Optio nesciunt eaque beatae accusamus lerode pakto madirna desera vafle de nideran pal</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="/views/UserLayout/assets/img/specials-2.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Impedit facilis occaecati odio neque aperiam sit</h3>
                    <p class="fst-italic">Eos voluptatibus quo. Odio similique illum id quidem non enim fuga. Qui natus non sunt dicta dolor et. In asperiores velit quaerat perferendis aut</p>
                    <p>Iure officiis odit rerum. Harum sequi eum illum corrupti culpa veritatis quisquam. Neque necessitatibus illo rerum eum ut. Commodi ipsam minima molestiae sed laboriosam a iste odio. Earum odit nesciunt fugiat sit ullam. Soluta et harum voluptatem optio quae</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="/views/UserLayout/assets/img/specials-3.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Fuga dolores inventore laboriosam ut est accusamus laboriosam dolore</h3>
                    <p class="fst-italic">Totam aperiam accusamus. Repellat consequuntur iure voluptas iure porro quis delectus</p>
                    <p>Eaque consequuntur consequuntur libero expedita in voluptas. Nostrum ipsam necessitatibus aliquam fugiat debitis quis velit. Eum ex maxime error in consequatur corporis atque. Eligendi asperiores sed qui veritatis aperiam quia a laborum inventore</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="/views/UserLayout/assets/img/specials-4.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-5">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Est eveniet ipsam sindera pad rone matrelat sando reda</h3>
                    <p class="fst-italic">Omnis blanditiis saepe eos autem qui sunt debitis porro quia.</p>
                    <p>Exercitationem nostrum omnis. Ut reiciendis repudiandae minus. Omnis recusandae ut non quam ut quod eius qui. Ipsum quia odit vero atque qui quibusdam amet. Occaecati sed est sint aut vitae molestiae voluptate vel</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="/views/UserLayout/assets/img/specials-5.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Specials Section -->

    <!-- ======= Events Section ======= -->
    <section id="events" class="events">
      <div class="container">

        <div class="section-title">
       
          <h2 style="color: white;">Tổ chức các <span>sự kiện của bạn</span> bạn tại nhà hàng của chúng tôi</h2>
        </div>

        <div class="events-slider swiper">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="/views/UserLayout/assets/img/event-birthday.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Tiệc Sinh Nhật</h3>
                  <div class="price">
                    <p><span>$189</span></p>
                  </div>
                  <p class="fst-italic">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                    magna aliqua.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                    <li><i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                  </ul>
                  <p>
                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                    velit esse cillum dolore eu fugiat nulla pariatur
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="/views/UserLayout/assets/img/event-private.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Tiệc Riêng Tư/Gia Đình</h3>
                  <div class="price">
                    <p><span>$290</span></p>
                  </div>
                  <p class="fst-italic">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                    magna aliqua.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                    <li><i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                  </ul>
                  <p>
                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                    velit esse cillum dolore eu fugiat nulla pariatur
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="/views/UserLayout/assets/img/event-custom.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Tùy Biến</h3>
                  <div class="price">
                    <p><span>$99</span></p>
                  </div>
                  <p class="fst-italic">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                    magna aliqua.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                    <li><i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                    <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                  </ul>
                  <p>
                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                    velit esse cillum dolore eu fugiat nulla pariatur
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Events Section -->
    
    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container-fluid">

        <div class="section-title">
          <h2>Một Số Hình Ảnh Của <span>Yummy Great Restaurant</span></h2>
          <p>Dưới Đây Là Một Số Hình Ảnh Nhà Hàng Chúng Tôi</p>
        </div>

        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-1.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-1.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-2.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-2.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-3.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-4.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-4.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-5.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-5.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-6.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-6.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-7.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-7.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="/views/UserLayout/assets/img/gallery/gallery-8.jpg" class="gallery-lightbox">
                <img src="/views/UserLayout/assets/img/gallery/gallery-8.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->

    <!-- ======= Chefs Section ======= -->
    <section id="chefs" class="chefs">
      <div class="container">

        <div class="section-title">
          <h2>Đầu Bếp Của <span>Nhà Hàng</span></h2>
          <p>Với Nhu Cầu Cao Về Vị Giác Của Khách Hàng Thì Nhà Hàng Của Chúng Tôi Luôn Mời Các Đầu Bếp Nổi Tiếng Khác Nhau Về Làm Việc</p>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="/views/UserLayout/assets/img/chefs/chefs-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Walter White</h4>
                <span>Master Chef</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="/views/UserLayout/assets/img/chefs/chefs-2.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Sarah Jhonson</h4>
                <span>Patissier</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="/views/UserLayout/assets/img/chefs/chefs-3.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>William Anderson</h4>
                <span>Cook</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Chefs Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container position-relative">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <h4>Ceo &amp; Founder</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <h4>Designer</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                <h3>Jena Karlis</h3>
                <h4>Store Owner</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="/views/UserLayout/assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                <h3>Matt Brandon</h3>
                <h4>Freelancer</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="/views/UserLayout/assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                <h3>John Larson</h3>
                <h4>Entrepreneur</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span>Phản Hồi Với</span> Chúng Tôi</h2>
          <p>Nếu Có Bất Kì Điều Gì Bạn Có Thể Phản Hồi Tại Đây</p>
        </div>
      </div>

      <div class="map">
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe>
      </div>

      <div class="container mt-5">

        <div class="info-wrap">
          <div class="row">
            <div class="col-lg-3 col-md-6 info">
              <i class="bi bi-geo-alt"></i>
              <h4>Location:</h4>
              <p>A108 Adam Street<br>New York, NY 535022</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-clock"></i>
              <h4>Open Hours:</h4>
              <p>Monday-Saturday:<br>11:00 AM - 2300 PM</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>info@example.com<br>contact@example.com</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-phone"></i>
              <h4>Call:</h4>
              <p>+1 5589 55488 51<br>+1 5589 22475 14</p>
            </div>
          </div>
        </div>

        <form action="forms/contact.php" method="post" role="form" class="php-email-form">
          <div class="row">
            <div class="col-md-6 form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
            </div>
            <div class="col-md-6 form-group mt-3 mt-md-0">
              <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
            </div>
          </div>
          <div class="form-group mt-3">
            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
          </div>
          <div class="form-group mt-3">
            <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
          </div>
          <div class="my-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your message has been sent. Thank you!</div>
          </div>
          <div class="text-center"><button type="submit">Send Message</button></div>
        </form>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
</body>
</html>