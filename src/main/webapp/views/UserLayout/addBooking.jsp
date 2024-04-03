<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<section id="book-a-table" class="book-a-table">
    <div class="container">
        <div class="section-title">
            <h2>Đặt<span> Bàn</span></h2>
            <p>Để Trải Nghiệm Cảm Giác Không Gian Sang Trọng Cùng Với Món Ăn Cực Ngon Mà Không Phải Tới Xếp Hàng Để Đặt Bàn Thì Ta Có Thể Đặt Bàn Tại Đây</p>
        </div>

        <form action="<c:url value='/payment/addFoodToTable'/>" method="post" class="php-email-form">
            <!-- Các trường thông tin như ID, ngày tạo, giờ check in, giờ check out, ... -->
            <div class="row">
            <input type="hidden" value="${idOrder}">
                <div class="col-lg-6 col-md-6 form-group mt-3 mt-md-0">
                    <label>Giờ Check in</label>
                    <input type="datetime-local" class="form-control" name="timein" id="timein">
                    <div class="validate"></div>
                </div>
                <div class="col-lg-6 col-md-6 form-group mt-3 mt-md-0">
                    <label>Giờ Check out</label>
                    <input type="datetime-local" class="form-control" name="timeout" id="timeout">
                    <div class="validate"></div>
                </div>
                <select class="form-select" aria-label="Default select example">
                 <option selected>Bàn</option>
                	<c:forEach var="ban" value="">
					 
					  <option value="1">Bàn 1</option>
					  <option value="2">Bàn 2</option>
					  <option value="3">Bàn 3</option>
				  </c:forEach>
				</select>
            </div>
            <div class="form-group mt-3">
                <label>Ghi Chú</label>
                <textarea class="form-control" name="description" rows="5" placeholder="Message"></textarea>
                <div class="validate"></div>
            </div>
            <div class="row">
                <!-- Button Thêm Món Ăn Vào Bàn -->
                <div class="col-6">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Tên Món Ăn</th>
                                <th>Chọn</th>
                            </tr>
                        </thead>
                        <tbody>
<c:forEach var="myObject" items="${myObjectList}">
                                <tr>
                                    <td>${myObject.name}</td>
                                    <td>
                                        <input type="checkbox" id="checkbox_${myObject.id}" name="selectedItems" value="${myObject.id}" />
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <button type="button" formaction="" onclick="processPayment()" style="background-color: green;">Thêm Món Ăn Vào Bàn</button>
                </div>
                <!-- Button Thanh Toán -->
                <div class="col-6">
                    <table class="table table-bordered">
                        <!-- Hiển thị thông tin đơn hàng -->
                        <thead>
                            <tr>
                                <th>Thông Tin Đơn Hàng</th>
                            </tr>
                        </thead>
                        <tbody id="orderDetailsTableBody">
                            <!-- Dữ liệu đơn hàng sẽ được hiển thị ở đây -->
                        </tbody>
                    </table>
                    <section id="book-a-table" class="book-a-table">
    <div class="container">
        <div class="section-title">
            <h2>Thanh Toán</h2>
            <!-- Thêm thông tin đơn hàng vào phần tiêu đề -->
            <p>Bàn: ${customerOrder.table.name}</p>
            <p>Thời Gian Check In: ${customerOrder.timein}</p>
            <p>Thời Gian Check Out: ${customerOrder.timeout}</p>
            <p>Ghi Chú: ${customerOrder.description}</p>
            <!-- Thêm thông tin đơn hàng vào phần tiêu đề -->
        </div>

        <!-- Phần còn lại của form thanh toán -->
        <!-- ... -->
    </div>
</section>
                    <button type="button" formaction="/user/payedCheck/${customer.id}" onclick="processPayment()" style="background-color: green; " >Thanh Toán</button>
                </div>
            </div>
        </form>
    </div>
</section>

<script>
    function addFoodToOrder() {
        // Lấy thông tin từ form
        var selectedTable = document.getElementById("selectedTable").value;
        var timein = document.getElementById("timein").value;
        var timeout = document.getElementById("timeout").value;
        var description = document.getElementById("description").value;

        // Lấy danh sách món ăn được chọn
        var selectedItems = document.getElementsByName("selectedItems");
        var selectedFood = [];
        for (var i = 0; i < selectedItems.length; i++) {
            if (selectedItems[i].checked) {
                var foodName = document.getElementById("checkbox_" + selectedItems[i].value).parentElement.previousElementSibling.innerText;
selectedFood.push(foodName);
            }
        }

        // Hiển thị thông tin đã chọn trong bảng đơn hàng
        var orderDetailsTableBody = document.getElementById("orderDetailsTableBody");
        var newRow = orderDetailsTableBody.insertRow();
        var cell = newRow.insertCell(0);
        cell.innerHTML = "<p>Bàn: " + selectedTable + "</p>" +
            "<p>Thời Gian Check In: " + timein + "</p>" +
            "<p>Thời Gian Check Out: " + timeout + "</p>" +
            "<p>Ghi Chú: " + description + "</p>" +
            "<p>Món Ăn: " + selectedFood.join(", ") + "</p>";
    }

    function processPayment() {
        // Xử lý thanh toán ở đây (nếu cần)
        alert("Đã thêm thành công!");
    }
</script>