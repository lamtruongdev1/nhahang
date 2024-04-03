<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
      rel="stylesheet"
    />
    <title>Start web when first time to use</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <body class="p-3 m-0 border-0 bd-example m-0 border-0">
    <h1>Thiết lập tài khoản quản trị ban đầu</h1>

    xin vui lòng điền thông tin cần thiết để khởi động ban đầu admin

    <form class="row g-3" action="/startwebadmin" method="post">
      <div class="col-md-12">
        <label for="inputEmail4" class="form-label">Root Username</label>
        <input type="email" class="form-control" id="inputEmail4" />
      </div>
      <div class="col-md-12">
        <label for="inputPassword4" class="form-label">Root Password</label>
        <input type="password" class="form-control" id="inputPassword4" />
      </div>
      <div class="col-12">
        <label for="inputAddress" class="form-label">Root Email</label>
        <input type="email" class="form-control" />
      </div>

      <div class="col-12">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" id="gridCheck" />
          <label class="form-check-label" for="gridCheck">
            Bằng việc nhấp vào đây có nghĩa là bạn đã đồng ý với các
            <a href="https://docs.google.com/document/d/13G4l9R76p8g1cKT01-0ASP52hhHR8CEMvTKgNzRZdgI/edit?usp=sharinghttps://docs.google.com/document/d/13G4l9R76p8g1cKT01-0ASP52hhHR8CEMvTKgNzRZdgI/edit?usp=sharing">điều khoản</a> bảo mật của web
          </label>
        </div>
      </div>
      <div class="col-12">
        <button type="submit" class="btn btn-primary">
          Tạo Tài Khoản Root
        </button>
      </div>
    </form>

    <!-- End Example Code -->
  </body>
</html>