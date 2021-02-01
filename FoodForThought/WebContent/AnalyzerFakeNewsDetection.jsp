<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>

<%@page import="java.sql.*" %>    
    
    
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Food For Thought</title>
	<link rel="icon" href="img/favicon.png">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- animate CSS -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- owl carousel CSS -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<!-- themify CSS -->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- font awesome CSS -->
	<link rel="stylesheet" href="css/all.css">
	<!-- flaticon CSS -->
	<link rel="stylesheet" href="css/flaticon.css">
	<!-- magnific popup CSS -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- nice select CSS -->
	<link rel="stylesheet" href="css/nice-select.css">
	<!-- swiper CSS -->
	<link rel="stylesheet" href="css/slick.css">
	<!-- style CSS -->
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="index.html"> <img src="img/favicon.png" alt="logo"> </a>
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu"></span>
						</button>

					<div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item">
                                    <a class="nav-link" href="AnalyzerHome.jsp">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">Logout</a>
                                </li>
                               
                            </ul>
                        </div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header part end-->

	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>Food For Thought</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	

	<!-- Start Button -->
	

	<!-- Start Align Area -->
	<div class="whole-wrap">
		<div class="container box_1170">
			
		<%
		
		String Author="";
		String URL="";
		String Description="";
		%>
		
			
		
		
			
			
			<div class="section-top-border">
				<h3 class="mb-30">Fake News Detection</h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
						&nbsp &nbsp &nbsp	<div class="serial">Author</div> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							
							<div class="country">URL</div>
							<div class="visit">Description</div>
							
						</div>
						<%
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM `foodforthought`.`writingstyle` where fake_count > 0 UNION SELECT * FROM `foodforthought`.`content` where fake_count > 0 UNION SELECT * FROM `foodforthought`.`originalsource` where fake_count > 0");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				Author = rs.getString(2);
				Description = rs.getString(3);
				URL = rs.getString(4);
			%>		
						<div class="table-row">
							<div class="serial" align="justify"><%=Author%></div> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							
							<div class="country" align="justify"><%=URL%></div>
							<div class="visit" align="justify"><%=Description%></div>
							
						</div>
						
			 <%}%>			
						
					</div>
				</div>
			</div>
			
			
			
		</div>
	</div>
	<!-- End Align Area -->

	

	<!-- jquery plugins here-->

	<script src="js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- easing js -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="js/swiper.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.smooth-scroll.min.js"></script>
	<!-- swiper js -->
	<script src="js/masonry.pkgd.js"></script>
	<!-- particles js -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<!-- swiper js -->
	<script src="js/slick.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/countdown.jquery.min.js"></script>
	<!-- contact js -->
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/contact.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
</body>

</html>