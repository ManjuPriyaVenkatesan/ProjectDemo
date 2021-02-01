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
<link rel="stylesheet" type="text/css" href="styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="styles/offers_responsive.css">


 <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
 <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
</head>

<body>
<%	    String emailid=request.getParameter("emailid");
 		System.out.println("TAPE HH"+emailid);
 
%>

<div class="super_container">
	
	<!-- Header -->

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

		<div class="search">
			<div class="search_inner">

				<!-- Search Contents -->
				
				<div class="container fill_height no-padding">
					<div class="row fill_height no-margin">
						<div class="col fill_height no-padding">

<!-- Search Panel -->
<br>
<br>
<br>

<div class="search_panel active">
								
	<form action="HosterHostHouseServlet" method="post" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
																		
		<div class="container">
			<div class="row">
				<div class="col-lg-1 temp_col"></div>
				
				<div class="col-lg-11">
					
					
				</div>

				<div class="col-lg-12">
					<!-- Offers Grid -->

					<div class="offers_grid">

						<!-- Offers Item -->

						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										
										
										
										<label for="file-input">
       									
    									<img src="images/offer_1.jpg" class="offers_image_background" id="file-input-tag"/>
    									</label>
    									
    									<input type="file" name="hosterhouseimage" id="file-input">
										
										
										
										
										
									</div>
								</div>
								<div class="col-lg-8">
									<div class="offers_content">
										
									
										
										<div class="offers_icons">
											<ul class="offers_icons_list">
												
											</ul>
										</div>
										<br>
										<p class="offers_text"></p>
										
										
										<div class="offer_reviews">
											<div class="offer_reviews_content">
												<div class="offer_reviews_title">Host House</div>
												<div class="offer_reviews_subtitle">Id</div>
											</div>
											<%Random rand = new Random();%>
											
											 <input class="offer_reviews_rating text-center" type="text" name="hosterhouseid" placeholder="Product Id..." required="required" value="<%=rand.nextInt(1000)%>">
										</div>
										
										<br>
										
										<div class="search_item">
										<div>Email Id</div>
										<input type="text" class="destination search_input" name="hosterhouseemailid" required="required" value="<%=emailid%>">
									    </div>
										<br>
										
										<div class="search_item">
										<div>Title For Hosting House</div>
										<input type="text" class="destination search_input" name="hosterhousetitle" required="required" placeholder = "Title For Hosting House...">
									    </div>
										
										<br>
										<div class="search_item">
										<div>House Address</div>
										<textarea rows="" class="destination search_input" name="hosterhouseaddress" required="required" placeholder = "House Address..."> </textarea>
									    </div>
										

									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>						
		
		
		
									<div class="search_item">
									<br>
										<div>House City</div>
										<input type="text" class="destination search_input" name="hosterhousecity" required="required" placeholder = "House City">
									</div>
		
									<div class="search_item">
									<br>
										<div>House State</div>
										<input type="text" class="destination search_input" name="hosterhousestate" required="required" placeholder = "House State">
									</div>
									<div class="search_item">
									<br>
										<div>Pincode</div>
										<input type="text" class="destination search_input" name="hosterhousepincode" required="required" placeholder = "Pincode">
									</div>
									<div class="search_item">
									<br>
										<div>Country</div>
										<input type="text" class="destination search_input" name="hosterhousecountry" required="required" placeholder = "Country">
									
									</div>

									<div class="search_item">
									<br>
										<div>Available From</div>
										<input type="text" class="check_in search_input" name="hosterhouseavailablefrom" required="required" placeholder="YYYY-MM-DD">
									</div>
									<div class="search_item">
									<br>
										<div>Available To</div>
										<input type="text" class="check_out search_input" name="hosterhouseavailableto" required="required" placeholder="YYYY-MM-DD">
									</div>
									<div class="search_item">
									<br>
										<div>Adults&nbsp</div>
										<select name="hosterhouseadults" class="dropdown_item_select search_input">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>3+</option>
										</select>
									</div>
									<div class="search_item">
									<br>
										<div>children</div>
										<select name="hosterhousechildren" class="dropdown_item_select search_input">
											<option>0</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>3+</option>
										</select>
									</div>
									
									<!--  -->
									
									
									<div class="search_item">
									<br>
										<div>Distance From Center</div>
										<select name="hosterhousedistancefromcenter" class="dropdown_item_select search_input">
											<option>0 KM</option>
											<option>1 KM</option>
											<option>2 KM</option>
											<option>3 KM </option>
											<option>3+ KM</option>
										</select>
									</div>

									<div class="search_item">
									<br>
										<div>Min No of Days to Stay</div>
										<select name="hosterhouseminnoofdaystostay" class="dropdown_item_select search_input">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>3+</option>
										</select>
									</div>
									<div class="search_item">
									<br>
										<div>No of Bath Rooms</div>
										<select name="hosterhousenoofbathrooms" class="dropdown_item_select search_input">
											
											<option>1</option>
											<option>2</option>
											<option>3+</option>
										</select>
									</div>
									<div class="search_item">
									<br>
										<div>No of Bed Rooms</div>
										<select name="hosterhousenoofbedrooms" class="dropdown_item_select search_input">
											<option>1</option>
											<option>2</option>
											<option>3+</option>
										</select>
									</div>
									<div class="search_item">
									<br>
										<div>No of Beds</div>
										<select name="hosterhousenoofbeds" class="dropdown_item_select search_input">
											<option>0</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
									</div>
									<!--  -->
									<div class="extras">
										<ul class="search_extras clearfix">
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousepetfriendly" id="search_extras_1" class="search_extras_cb">
													<label for="search_extras_1">Pet Friendly</label>
												</div>	
											</li>
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousecarparking" id="search_extras_2" class="search_extras_cb">
													<label for="search_extras_2">Car Parking</label>
												</div>
											</li>
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousewirelessinternet" id="search_extras_3" class="search_extras_cb">
													<label for="search_extras_3">Wireless Internet</label>
												</div>
											</li>
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousereservations" id="search_extras_4" class="search_extras_cb">
													<label for="search_extras_4">Reservations</label>
												</div>
											</li>
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhouseprivateparking" id="search_extras_5" class="search_extras_cb">
													<label for="search_extras_5">Private Parking</label>
												</div>
											</li>
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousesmokingarea" id="search_extras_6" class="search_extras_cb">
													<label for="search_extras_6">Smoking Area</label>
												</div>
											</li>
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousewheelchairaccessible" id="search_extras_7" class="search_extras_cb">
													<label for="search_extras_7">Wheelchair Accessible</label>
												</div>
											</li>
											<li class="search_extras_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousepool" id="search_extras_8" class="search_extras_cb">
													<label for="search_extras_8">Pool</label>
												</div>
											</li>
										</ul>
									</div>
									<div class="more_options">
										<div class="more_options_trigger">
											<a href="#">load more options</a>
										</div>
										<ul class="more_options_list clearfix">
											<li class="more_options_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousewashingmachine" id="more_options_1" class="search_extras_cb">
													<label for="more_options_1">Washing Machine</label>
												</div>	
											</li>
											<li class="more_options_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousedryer" id="more_options_2" class="search_extras_cb">
													<label for="more_options_2">Dryer</label>
												</div>
											</li>
											<li class="more_options_item">
												<div class="clearfix">
													<input type="checkbox" name="hosterhousekitchenarea" id="more_options_3" class="search_extras_cb">
													<label for="more_options_3">Kitchen Area</label>
												</div>	
											</li>
											
										</ul>
										
									</div>
									
								<button type="submit" class="button book_button" ><b> &nbsp &nbsp Host Now &nbsp &nbsp</b><span></span><span></span><span></span></button>
								
								
								
								</form>
								
							</div>
							
						</div>
						
						       
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



<script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#file-input-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#file-input").change(function(){
        readURL(this);
    });
</script>






</body>

</html>