<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/3.0.1/js.cookie.min.js"></script>

    <script>
        $(document).ready(function() {
            $("#file-input").change(function() {
                var file = $(this).prop("files")[0];
                var filePath = file.path;
                Cookies.set("selectedFile", filePath);
                window.location.href = "/your-action-url";
            });
        });
    </script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <h1>Chọn file JSP</h1>
    <input type="file" id="file-input" name="file" accept=".jsp" />
</body>
</html>