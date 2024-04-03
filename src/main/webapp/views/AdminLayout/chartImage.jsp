<%@ page import="com.poly.entity.ChartGenerator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.OutputStream,java.io.IOException" %>

<%@ page contentType="image/png" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
    byte[] chartImage = ChartGenerator.generateChartImage((List<Double>) request.getAttribute("chartData"));
    response.setContentLength(chartImage.length);
    OutputStream outputStream = response.getOutputStream();
    outputStream.write(chartImage);
    outputStream.close();
%>


</body>
</html>