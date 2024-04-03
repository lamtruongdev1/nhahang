<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>



    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Inner Page</h2>
          <ol>
            <li><a href="index.html">Trang Chủ</a></li>
            <li>Đổi mật khẩu</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <h1 style="text-align: center;">Đổi Mật Khẩu</h1>
        <br>
        <form action="" method="post">
          <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label"
              >Mật Khẩu Mới</label
            >
            <input
              type="text"
              class="form-control"
              id="formGroupExampleInput"
              placeholder="Example input placeholder"
              name="password"
            />
          </div>
          <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label"
              >Nhập Lại Mật Khẩu</label
            >
            <input
              type="text"
              class="form-control"
              id="formGroupExampleInput2"
              placeholder="Another input placeholder"
              name="repass"
            />
          </div>
          <button class="btn btn-primary" formaction="/user/account/repass/${user.username}" style="margin-left: 45%;">Đổi Mật Khẩu</button>
        </form>
      </div>
    </section>

  