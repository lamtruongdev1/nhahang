<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
    <section class="breadcrumbs">
      <div class="container">
        <div class="d-flex justify-content-between align-items-center" >
          <h2>Inner Page</h2>
          <ol>
            <li><a href="">Home</a></li>
            <li>Inner Page</li>
          </ol>
        </div>
 	</div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <h1 style="text-align: center;">Thông Tin Tài Khoản</h1>
        <br>
        <form class="row g-3">
          <div class="col-md-6">
            <label for="inputEmail4" class="form-label">Họ</label>
            <input type="text" class="form-control" id="inputEmail4" value="${customer.firstname}"/>
          </div>
          <div class="col-md-6">
            <label for="inputPassword4" class="form-label">Tên</label>
            <input type="text" class="form-control" id="inputPassword4" ${customer.lastname}/>
          </div>
          <div class="col-12">
            <label for="inputAddress" class="form-label">email</label>
            <input
              type="email"
              class="form-control"
              id="inputAddress"
              value="${customer.email}"
            />
          </div>
          <div class="col-12">
            <label for="inputAddress2" class="form-label">Số điện thoại</label>
            <input
              type="text"
              class="form-control"
              id="inputAddress2"
              value="${customer.phonenumber}"
            />
          </div>
          <div class="col-md-12">
            <label for="inputCity" class="form-label">Ngày Sinh</label>
            <input
              type="text"
              class="form-control"
              id="inputCity"
              value="${customer.birthday}"
              disabled="true"
            />
          </div>
          <div class="col-12" style="margin-left: 40%;">
            <button type="submit" class="btn btn-primary">
              Cập Nhật Thông Tin
            </button>
          </div>
        </form>    
      </div>
    </section>
