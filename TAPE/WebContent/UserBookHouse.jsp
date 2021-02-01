<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
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
<link rel="stylesheet" type="text/css" href="styles/elements_styles.css">
<link rel="stylesheet" type="text/css" href="styles/elements_responsive.css">
</head>

<body>

<%

String id=request.getParameter("id");
String emailid=request.getParameter("emailid");
String hosterhouseemailid = request.getParameter("hosteremailid");
%>

<div class="super_container">
	
	

	<!-- Header -->

	<header class="header">

		<!-- Top Bar -->

		<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
						<div class="phone">+987 654 3210</div>
						<div class="social">
							<ul class="social_list">
								<li class="social_list_item"><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="user_box ml-auto">
							
							<div class="user_box_register user_box_link"><a href="UserSearchHouse.jsp?emailid=<%=emailid%>">Back</a></div>
						</div>
					</div>
				</div>
			</div>		
		</div>

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
								<li class="main_nav_item"><a href="UserHome.jsp?emailid=<%=emailid%>">Home</a></li>
								
								<li class="main_nav_item"><a href="AboutUs.jsp?emailid=<%=emailid%>">TAPE</a></li>
								
								<li class="main_nav_item"><a href="Clients.jsp?emailid=<%=emailid%>">Clients</a></li>
								
								<li class="main_nav_item"><a href="UserViewHouse.jsp?emailid=<%=emailid%>">Houses</a></li>
								
								<li class="main_nav_item"><a href="UserBookedDetails.jsp?emailid=<%=emailid%>">Booked Details</a></li>
								
								<li class="main_nav_item"><a href="ContactUs.jsp?emailid=<%=emailid%>">Contact Us</a></li>
								
								<li class="main_nav_item"><a href="index.html">Logout</a></li>
							</ul>
						</div>
						
						
						
					</div>
				</div>
			</div>	
		</nav>

	</header>


	
	<!-- Elements -->

	<div class="elements">
		<div class="container">
			<div class="row">
				<div class="col">
					
					
					
					<!-- Loaders -->

					<div class="elements_section loaders">
						<div class="elements_title">&nbsp&nbsp&nbsp&nbsp</div>
						<div class="row elements_loaders_container">
							
							<div class="col-lg-12 loader_col">
								<div class="circle loader" data-value="0.99">
									<strong><i></i></strong>
									<span>Booked</span>
								</div>
							</div>
							
							
						</div>
					</div>

				
				</div>
			</div>
		</div>	
	</div>

</div>

<%


System.out.println(id);
System.out.println(emailid);

System.out.println(hosterhouseemailid);

int k = 0;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tape", "root", "root");


PreparedStatement obj = conn.prepareStatement("INSERT INTO `tape`.`userbookeddetails` VALUES(?,?,?)");
obj.setString(1, id);
obj.setString(2, emailid);
obj.setString(3, hosterhouseemailid);



k = obj.executeUpdate();


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/jquery-circle-progress-1.2.2/circle-progress.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/elements_custom.js"></script>

</body>

</html>