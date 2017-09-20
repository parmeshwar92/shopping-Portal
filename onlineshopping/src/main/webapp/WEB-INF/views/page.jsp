<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="popper" value="/resources/popper" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage -${title}</title>

  <script>
         window.menu='${title}'; 
  </script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->

	<%@include file="./shared/navbar.jsp"%>

	<!--  loading Page Content -->
	<c:if test="${userClickHome == true}">
		<%@include file="home.jsp"%>
	</c:if>

	<!--  loading about Content -->
	<c:if test="${userClickAbout == true}">
		<%@include file="about.jsp"%>
	</c:if>

	<!--  loading view product Content -->
	<c:if test="${userClickViewProduct == true}">
		<%@include file="viewproduct.jsp"%>
	</c:if>


	<!--  loading contact Content -->
	<c:if test="${userClickContact == true}">
		<%@include file="contact.jsp"%>
	</c:if>

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.js"></script>
	<script src="${popper}/popper.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	<!-- hard coded java script file -->
	<script src="${js}/myapp.js"></script>
</body>

</html>