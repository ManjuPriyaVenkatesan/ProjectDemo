<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql. *" %>
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<%@page import="java.util.Random" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<title>TAPE</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>

<body>

<%	    String emailid=request.getParameter("emailid");
 		System.out.println("TAPE HH"+emailid);
 
 %>


<div class="super_container">
	
	<!-- Header -->

	<header class="header">

		<!-- Top Bar -->

		

		<!-- Main Navigation -->

		<nav class="main_nav">
			<div class="container">
				<div class="row">
					<div class="col main_nav_col d-flex flex-row align-items-center justify-content-start">
						<div class="logo_container">
							<div class="logo"><a href="#"><img src="images/logo.png" alt="">TAPE</a></div>
						</div>
						<div class="main_nav_container ml-auto">
							<ul class="main_nav_list">
								<li class="main_nav_item"><a href="index.html">Home</a></li>
								<li class="main_nav_item"><a href="HosterHostHouse.jsp?emailid=<%=emailid%>">Host House</a></li>
								<li class="main_nav_item"><a href="HosterViewHouse.jsp?emailid=<%=emailid%>">View House</a></li>
								<li class="main_nav_item"><a href="HosterDeleteHouse.jsp?emailid=<%=emailid%>">Delete House</a></li>
								<li class="main_nav_item"><a href="HosterBookedDetails.jsp?emailid=<%=emailid%>">Booked Details</a></li>
								<li class="main_nav_item"><a href="index.html">Logout</a></li>
							</ul>
						</div>
						
						
						
					</div>
				</div>
			</div>	
		</nav>

	</header>

	
	
	<div class="cta">
		<!-- Image by https://unsplash.com/@thanni -->
		<div class="cta_background" style="background-image:url(images/cta.jpg)"></div>
		
		<div class="container">
			<div class="row">
				<div class="col">
<br>
<br>
					<!-- CTA Slider -->
<br>
							<br>
							
							<br>
							<br>
							
							<br>
							<br>
							
							<br>
							<br>
							<br>
							<br>
							
							<br>
							<br>
							
							<br>
							<br>
							<br>
							<br>
							<br>
					<div class="cta_slider_container">
						<div class="owl-carousel owl-theme cta_slider">

					
							
						</div>

						<!-- CTA Slider Nav - Prev -->
						
						
						
					</div>

				</div>
			</div>
		</div>
					
	</div>

	
	
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>

</body>

</html>