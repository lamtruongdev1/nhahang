<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<title>Admin - Manage Food Items</title>

</head>
<body>

	<div class="container mt-5">
		<div class="row">
			<!-- Form for adding/editing food item -->
			<div class="col-md-4 mb-3">
				<h4>Add/Edit Food Item</h4>
				<form action="/menu" method="post">
					<div  class="mb-3" style="display: none">
						<label for="id" class="form-label">ID</label>
						<%-- Sử dụng JSTL để tính toán số lượng sản phẩm và tăng giá trị ID --%>
						<c:set var="nextId" value="${items.size() + 1}"/>
						<input type="text" class="form-control" id="id" name="id"
							value="${nextId}" readonly>
					</div>
					<div class="mb-3">
						<label for="name" class="form-label">Name</label> <input
							type="text" class="form-control" id="name" name="name"
							value="${item.name}" required>
					</div>
					<div class="mb-3">
						<label for="type" class="form-label">Type</label> <select
							class="form-select" id="type" name="type" required>
							<c:forEach var="type" items="${types}">
								<option value="${type}" ${item.type == type ? 'selected' : ''}>
									${type}</option>
							</c:forEach>
						</select>
					</div>
					<div class="mb-3">
						<label for="price" class="form-label">Price</label> <input
							type="text" class="form-control" id="price" name="price"
							value="${item.price}" required>
					</div>
					<div class="mb-3">
						<label for="description" class="form-label">Description</label>
						<textarea class="form-control" id="description" name="description"
							rows="3" required>${item.description}</textarea>
					</div>
					<!-- Thêm trường nhập cho đường dẫn ảnh -->
					<div class="mb-3">
						<label for="image" class="form-label">Image URL</label> <input
							type="text" class="form-control" id="image" name="image"
							value="${item.image}" required>
					</div>

					<!-- Hiển thị hình ảnh -->
					<div class="mb-3">
						<label for="previewImage" class="form-label">Preview Image</label>
						<img src="${item.image }" alt="Preview Image"
							id="previewImage" class="img-thumbnail"
							style="width: 100px; height: auto;">
					</div>

					<!-- Add more input fields as needed -->

					<!-- Add buttons for submit and reset -->
					<button formaction="/menu/update" type="submit"
						class="btn btn-primary">Update</button>
					<button formaction="/menu/create" type="submit"
						class="btn btn-primary">Save</button>
					<button type="reset" class="btn btn-secondary">Reset</button>
				</form>
			</div>
			<div class="col-md-8">
				<h2 class="mb-4">Admin - Manage Food Items</h2>

				<!-- Button trigger modal to add new food item -->
				<button type="button" class="btn btn-success mb-3"
					data-bs-toggle="modal" data-bs-target="#addFoodItemModal">Add
					New Food Item</button>

				<table class="table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Type</th>
							<th>Price</th>
							<th>Description</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${items}" varStatus="loop">
							<tr>
								<td>${loop.index + 1}</td>
								<td>${item.name}</td>
								<td>${item.type}</td>
								<td>
									<%-- Sử dụng fmt:formatNumber để định dạng giá tiền --%> <fmt:formatNumber
										value="${item.price}" type="currency" currencyCode="VND"
										var="formattedPrice" /> ${formattedPrice}
								</td>
						<%-- 	<td><img src="/img/${item.image }" alt="Product Image"
									class="img-thumbnail " style="width: 100px; height: auto;"></td>  --%>
							
								<td>${item.description}</td>
								<td><img src="${item.image }" alt="Product Image"
									class="img-thumbnail " style="width: 100px; height: auto;"></td>
								<td><a href="/menu/edit/${item.id}">Edit</a> <a
									href="/menu/index">Reset</a> <a href="/menu/delete/${item.id}">Delete</a>
									<a href="/menu/deleteByName/${item.name}">Delete by Name</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- JavaScript libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
