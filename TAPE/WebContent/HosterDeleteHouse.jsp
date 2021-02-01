<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql. *" %>
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<%@page import="java.util.Random" %>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import = "javax.servlet.annotation.WebServlet"%>
<%@page import = "javax.servlet.http.HttpServlet"%>
<%@page import = "javax.servlet.http.HttpServletRequest"%>
<%@page import = "javax.servlet.http.HttpServletResponse"%>
    
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
<link rel="stylesheet" type="text/css" href="styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="styles/offers_responsive.css">
</head>

<body>
<%	    String emailid=request.getParameter("emailid");
 		System.out.println("TAPE HH"+emailid);
 		
 		
 
%>

<div class="super_container">
	
	<header class="header">

		
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
						
						<div class="hamburger">
							<i class="fa fa-bars trans_200"></i>
						</div>
					</div>
				</div>
			</div>	
		</nav>

	</header>


	<div class="offers">

		<!-- Search -->


		<div class="container">
			<div class="row">
				<div class="col-lg-1 temp_col"></div>
				<div class="col-lg-11">
					
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				
				</div>

				<div class="col-lg-12">
					<!-- Offers Grid -->

					<div class="offers_grid">

<%			
String hosterhouseimage = "";
String hosterhouseimagename = "";
String hosterhouseimagepath = "";
String hosterhouseid = "";
String hosterhouseemailid = "";
String hosterhousetitle = "";
String hosterhouseaddress = "";
String hosterhousecity = "";
String hosterhousestate = "";
String hosterhousepincode = "";
String hosterhousecountry = "";
String hosterhouseavailablefrom = "";
String hosterhouseavailableto = "";
String hosterhouseadults = "";
String hosterhousechildren = "";
String hosterhousedistancefromcenter = "";
String hosterhouseminnoofdaystostay = "";
String hosterhousenoofbathrooms = "";
String hosterhousenoofbedrooms = "";
String hosterhousenoofbeds = "";
String hosterhousepetfriendly = "";
String hosterhousecarparking = "";
String hosterhousewirelessinternet = "";
String hosterhousereservations = "";
String hosterhouseprivateparking = "";
String hosterhousesmokingarea = "";
String hosterhousewheelchairaccessible = "";
String hosterhousepool = "";
String hosterhousewashingmachine = "";
String hosterhousedryer = "";
String hosterhousekitchenarea = "";

String hosterhousekitchenarea_nullvalued = "NA";
String hosterhousekitchenarea_onvalued = "A";

String hosterhousepetfriendly_nullvalued = "NA";
String hosterhousepetfriendly_onvalued = "A";

String hosterhousecarparking_nullvalued = "NA";
String hosterhousecarparking_onvalued = "A";

String hosterhousewirelessinternet_nullvalued = "NA";
String hosterhousewirelessinternet_onvalued = "A";

String hosterhousereservations_nullvalued = "NA";
String hosterhousereservations_onvalued = "A";

String hosterhouseprivateparking_nullvalued = "NA";
String hosterhouseprivateparking_onvalued = "A";

String hosterhousesmokingarea_nullvalued = "NA";
String hosterhousesmokingarea_onvalued = "A";

String hosterhousewheelchairaccessible_nullvalued = "NA";
String hosterhousewheelchairaccessible_onvalued = "A";

String hosterhousepool_nullvalued = "NA";
String hosterhousepool_onvalued = "A";


String hosterhousewashingmachine_nullvalued = "NA";
String hosterhousewashingmachine_onvalued = "A";


String hosterhousedryer_nullvalued = "NA";
String hosterhousedryer_onvalued = "A";


int price = 0;

			Connection con = DatabaseConnections.createConnection();
			Statement ps=con.createStatement();
			String sql = "SELECT * FROM `tape`.`hosterhosthouse`";
			ResultSet rs=ps.executeQuery(sql);
			
			

			
			while(rs.next())
			{
				hosterhouseemailid = rs.getString(5);
				
				if(hosterhouseemailid.equals(emailid))
				
				{	
				
				hosterhouseimagename = rs.getString(2);
				hosterhouseimagepath = rs.getString(3);
				hosterhouseid = rs.getString(4);
				hosterhouseemailid = rs.getString(5);
				hosterhousetitle = rs.getString(6);
				hosterhouseaddress = rs.getString(7);
				
				
				hosterhousecity = rs.getString(8);
				hosterhousestate = rs.getString(9);
				hosterhousepincode = rs.getString(10);
				hosterhousecountry = rs.getString(11);
				hosterhouseavailablefrom = rs.getString(12);
				hosterhouseavailableto = rs.getString(13);
				
				hosterhouseadults = rs.getString(14);
				hosterhousechildren = rs.getString(15);
				hosterhousedistancefromcenter = rs.getString(16);
				hosterhouseminnoofdaystostay = rs.getString(17);
				hosterhousenoofbathrooms = rs.getString(18);
				hosterhousenoofbedrooms = rs.getString(19);
				
				hosterhousenoofbeds = rs.getString(20);
				
				hosterhousepetfriendly = rs.getString(21);
				hosterhousecarparking = rs.getString(22);
				hosterhousewirelessinternet = rs.getString(23);
				hosterhousereservations = rs.getString(24);
				hosterhouseprivateparking = rs.getString(25);
				
				hosterhousesmokingarea = rs.getString(26);
				hosterhousewheelchairaccessible = rs.getString(27);
				hosterhousepool = rs.getString(28);
				hosterhousewashingmachine = rs.getString(29);
				hosterhousedryer = rs.getString(30);
				hosterhousekitchenarea = rs.getString(31);
				
				if(hosterhousekitchenarea == null)
				{
					hosterhousekitchenarea = hosterhousekitchenarea_nullvalued;
				}
				else
				{
					hosterhousekitchenarea = hosterhousekitchenarea_onvalued;
				}
				
				
				if(hosterhousecarparking == null)
				{
					hosterhousecarparking = hosterhousecarparking_nullvalued;
				}
				else
				{
					hosterhousecarparking = hosterhousecarparking_onvalued;
				}
				
				if(hosterhousepetfriendly == null)
				{
					hosterhousepetfriendly = hosterhousepetfriendly_nullvalued;
				}
				else
				{
					hosterhousepetfriendly = hosterhousepetfriendly_onvalued;
				}
				
				
				if(hosterhousewirelessinternet == null)
				{
					hosterhousewirelessinternet = hosterhousewirelessinternet_nullvalued;
				}
				else
				{
					hosterhousewirelessinternet = hosterhousewirelessinternet_onvalued;
				}
				
				
				if(hosterhousereservations == null)
				{
					hosterhousereservations = hosterhousereservations_nullvalued;
				}
				else
				{
					hosterhousereservations = hosterhousereservations_onvalued;
				}

				
				if(hosterhouseprivateparking == null)
				{
					hosterhouseprivateparking = hosterhouseprivateparking_nullvalued;
				}
				else
				{
					hosterhouseprivateparking = hosterhouseprivateparking_onvalued;
				}

				
				if(hosterhousesmokingarea == null)
				{
					hosterhousesmokingarea = hosterhousesmokingarea_nullvalued;
				}
				else
				{
					hosterhousesmokingarea = hosterhousesmokingarea_onvalued;
				}
				
				
				if(hosterhousewheelchairaccessible == null)
				{
					hosterhousewheelchairaccessible = hosterhousewheelchairaccessible_nullvalued;
				}
				else
				{
					hosterhousewheelchairaccessible = hosterhousewheelchairaccessible_onvalued;
				}
				
				if(hosterhousepool == null)
				{
					hosterhousepool = hosterhousepool_nullvalued;
				}
				else
				{
					hosterhousepool = hosterhousepool_onvalued;
				}
				
				if(hosterhousewashingmachine == null)
				{
					hosterhousewashingmachine = hosterhousewashingmachine_nullvalued;
				}
				else
				{
					hosterhousewashingmachine = hosterhousewashingmachine_onvalued;
				}
				
				
				if(hosterhousedryer == null)
				{
					hosterhousedryer = hosterhousedryer_nullvalued;
				}
				else
				{
					hosterhousedryer = hosterhousedryer_onvalued;
				}
				
				
				if(hosterhousedryer.equals("A") && hosterhousewashingmachine.equals("A") && hosterhousepool.equals("A") && hosterhousewheelchairaccessible.equals("A") && hosterhousesmokingarea.equals("A") && hosterhousewirelessinternet.equals("A") && hosterhousepetfriendly.equals("A") && hosterhousekitchenarea.equals("A") && hosterhousecarparking.equals("A") && hosterhouseprivateparking.equals("A") && hosterhouseadults.equals("3+") && hosterhousechildren.equals("3+") && hosterhousenoofbathrooms.equals("3+") && hosterhousenoofbedrooms.equals("3+") && hosterhousenoofbeds.equals("3") && hosterhousedistancefromcenter.equals("0 KM"))
				{
					price = 5000;
				}
				
				else if(hosterhousedryer.equals("A") && hosterhousewashingmachine.equals("A") && hosterhousepool.equals("A") && hosterhousesmokingarea.equals("A") && hosterhousewirelessinternet.equals("A") && hosterhousepetfriendly.equals("A") && hosterhousekitchenarea.equals("A") && (hosterhousecarparking.equals("A") || hosterhouseprivateparking.equals("A")) && (hosterhouseadults.equals("2") || hosterhouseadults.equals("3")) && (hosterhousechildren.equals("2") || hosterhousechildren.equals("3")) && hosterhousenoofbathrooms.equals("2") && hosterhousenoofbedrooms.equals("2") && hosterhousenoofbeds.equals("2") && hosterhousedistancefromcenter.equals("1 KM"))
				{
					
					price = 4000;
				}
				else if(hosterhousewashingmachine.equals("A") && hosterhousewirelessinternet.equals("A") && hosterhousepetfriendly.equals("A") && hosterhousekitchenarea.equals("A") && (hosterhousecarparking.equals("A") || hosterhouseprivateparking.equals("A")) && (hosterhouseadults.equals("2") || hosterhouseadults.equals("3")) && (hosterhousechildren.equals("2") || hosterhousechildren.equals("3")) && hosterhousenoofbathrooms.equals("2") && hosterhousenoofbedrooms.equals("2") && hosterhousenoofbeds.equals("2") && hosterhousedistancefromcenter.equals("2 KM"))
				{
					
					price = 3000;
				}
				else if(hosterhousewirelessinternet.equals("A") && (hosterhousecarparking.equals("A") || hosterhouseprivateparking.equals("A")) && (hosterhouseadults.equals("1") || hosterhouseadults.equals("2")) && (hosterhousechildren.equals("1") || hosterhousechildren.equals("2")) && hosterhousenoofbathrooms.equals("1") && hosterhousenoofbedrooms.equals("1") && hosterhousenoofbeds.equals("2") && hosterhousedistancefromcenter.equals("3 KM"))
				{
					
					price = 2000;
				}
				else if(hosterhousewirelessinternet.equals("A") && (hosterhouseadults.equals("1") || hosterhouseadults.equals("2")) && (hosterhousechildren.equals("1")) && hosterhousenoofbathrooms.equals("1") && hosterhousenoofbedrooms.equals("1") && hosterhousenoofbeds.equals("1") && hosterhousedistancefromcenter.equals("3+ KM"))
				{
					
					price = 1500;
				}
				else
				{
					price =1000;
				}
				
				
				
				
       %>						
				
				<!-- Offers Item -->

						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										
										<div class="offers_image_background" style="background-image:url(images/<%=hosterhouseimagename%>)"></div>
										<div class="offer_name"><a href="single_listing.html"><%=hosterhousetitle%></a></div>
									</div>
								</div>
								<div class="col-lg-8">
									<div class="offers_content">
										<div class="offers_price">Rs.<%=price%>/-<span>per night</span></div>
										<div class="rating_r rating_r_4 offers_rating" data-rating="4">
										<b>	<%=hosterhouseemailid%> </b>
										</div>
										<p class="offers_text">
										
										<%=hosterhouseaddress%> <%=hosterhousedistancefromcenter%> from Center <%=hosterhousecity%> <%=hosterhousestate%> <%=hosterhousecountry%> - <%=hosterhousepincode%>. 
										
										
										<br> 
										
										Adults - <%=hosterhouseadults%>; Children - <%=hosterhousechildren%>; Min.Days to Stay - <%=hosterhouseminnoofdaystostay%>;
										
										Bedrooms - <%=hosterhousenoofbedrooms%>; Beds - <%=hosterhousenoofbeds%>; Bathrooms - <%=hosterhousenoofbedrooms%>; Kitchen - <%=hosterhousekitchenarea%>;
										
										<br>
										
										<b> Amenities Provided : </b> Parking - Private : <%=hosterhouseprivateparking%> &  Car : <%=hosterhousecarparking%>; 
										
										Wheel Chair : <%=hosterhousewheelchairaccessible%>; Pets : <%=hosterhousepetfriendly%>; Internet : <%=hosterhousewirelessinternet%>; 
										<br>
										Reservations : <%=hosterhousereservations%>; Smoking Area : <%=hosterhousesmokingarea%>;
										
										Pool : <%=hosterhousepool%>; Washing Machine - <%=hosterhousewashingmachine%>; Dryer - <%=hosterhousedryer%>.
										
										</p>
										<div class="offers_icons">
											<ul class="offers_icons_list">
												<li class="offers_icons_item"><img src="images/post.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
											</ul>
										</div>
								<a href="Delete.jsp?id=<%=hosterhouseid%>"><button type="submit" class="button book_button">&nbsp &nbsp &nbsp <b> Delete </b> &nbsp &nbsp &nbsp </button><span></span><span></span><span></span></a>
										<div class="offer_reviews">
											<div class="offer_reviews_content">
												<div class="offer_reviews_title"><%=hosterhousecity%></div>
												<div class="offer_reviews_subtitle"><b> <%=hosterhouseavailablefrom%> </b> to <b><%=hosterhouseavailableto%></b></div>
											</div>
											<div class="offer_reviews_rating text-center"><%=hosterhouseid%></div>
										</div>
									</div>
								</div>
							</div>
						</div>
<%}}%>
			
			
			
						
					</div>
				</div>

			</div>
		</div>		
	</div>

	

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/offers_custom.js"></script>

</body>

</html>