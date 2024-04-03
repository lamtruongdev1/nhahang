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
        <h1 style="text-align: center;">Đơn Đặt Hàng</h1>
        <br>
        <table class="table table-striped">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Đặt Ngày</th>
              <th scope="col">Trạng Thái</th>
              <th scope="col">Giờ Vào</th>
              <th scope="col">Giờ Ra</th>
              <th scope="col">Mã Bàn</th>
              <th scope="col"></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>
                <div style="display: flex; ">
                    <button class="btn btn-danger">Edit</button>
                    <button class="btn btn-success">Delete</button>
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>
                <div style="display: flex; ">
                    <button class="btn btn-danger">Edit</button>
                    <button class="btn btn-success">Delete</button>
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>Otto</td>
              <td>@mdo</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>Otto</td>
              <td>
                <div style="display: flex; ">
                    <button class="btn btn-danger">Edit</button>
                    <button class="btn btn-success">Delete</button>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>

