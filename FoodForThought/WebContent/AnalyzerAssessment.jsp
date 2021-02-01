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
                            <h2>Assessment</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!--::event_part start::-->
    <section class="event_part">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-md-8">
                    <div class="section_tittle">
                        <h2>Reputation Assessment</h2>
                      
                    </div>
                </div>
            </div>
        <%
		
		String URL = "";
        String URL1 = "";
		
		%>
            <div class="row">
                <div class="col-sm-6">
                    <div class="single_event media">
                        
                        <div class="tricker">Available Sources</div>
                        <div class="media-body align-self-center"><br>
                            <h5 class="mt-0">Available Sources</h5>
            <%
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT DISTINCT(URL) FROM `foodforthought`.`datacollected`");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				URL = rs.getString(1);
			%>		
                            <p><%=URL%></p>
                         <%}%>  
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="single_event media">
                     
                        <div class="tricker">Fake Sources</div>
                        <div class="media-body align-self-center"><br>
                            <h5 class="mt-0">Food For Thought : Fighting Fake News and Online Disinformation</h5>
            <%
			Connection con1 = DatabaseConnections.createConnection();
			PreparedStatement ps1=con1.prepareStatement("SELECT DISTINCT(URL) FROM `foodforthought`.`content` WHERE fake_count > 0");
			ResultSet rs1=ps1.executeQuery();
			
			while(rs1.next())
			{
				
				URL1 = rs1.getString(1);
			%>	  
                            
                            
                            <p><%=URL1%></p>
                           
  <%}%>
                        </div>
                    </div>
                </div>
             
              
            </div>
        </div>
    </section>
    <!--::event_part end::-->

    <!-- intro_video_bg start-->
    <section class="intro_video_bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-8">
                    <div class="intro_video_iner text-center">
                        <h2>Fighting Fake News and Online Disinformation</h2>
                        <p>Disinformation and misinformation of news
can have an effect in several areas of people
everyday life. Although several sectors, such as
agrifood, might not be an obvious target for disinformation campaigns, that does not make them
immune to those threats. For agriculture and food
companies, fake news can be damaging to their
reputation, even though they are not directly at
the center of it.</p>
                        <a href="#" class="btn_2">Food For Thought</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- intro_video_bg part start-->

    
    

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
    <script src="js/timer.js"></script>
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