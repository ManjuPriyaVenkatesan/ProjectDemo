<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql. *" %>
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Retweet</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/userstyle.css">
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
<%			
			HttpSession session1=request.getSession();
			String emailid = (String) session1.getAttribute("emailid");
			String username_view ="";
			String emailid_view  ="";
			String emailid_view1  ="";
			String phoneno_view = "";
			
			Connection con = DatabaseConnections.createConnection();
			Statement ps=con.createStatement();
			String sql = "SELECT * FROM `sentidiff`.`userregistration`";
			ResultSet rs=ps.executeQuery(sql);
			
			while(rs.next())
			{
				emailid_view = rs.getString(2);
				if(emailid_view.equals(emailid))
				{
				username_view = rs.getString(1);
				emailid_view1 = rs.getString(2);
				phoneno_view = rs.getString(3);
				}
			%>		
 <%}%>				
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">SentiDiff</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="UserHome.jsp" class="nav-link"><span>Home</span></a></li> 
	          <li class="nav-item"><a href="UserHome.jsp" class="nav-link"><span>About</span></a></li>
	          <li class="nav-item"><a href="Retweet.jsp" class="nav-link"><span>Retweet</span></a></li>
	          <li class="nav-item"><a href="https://twitter.com/" class="nav-link"><span>My Twitter</span></a></li>
	          <li class="nav-item"><a href="index.html" class="nav-link"><span>Logout</span></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	
  <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h1 class="big big-2">Retweet</h1>
            <h2 class="mb-4">Retweet Something</h2>
            <p></p>
          </div>
        </div>

        

        <div class="row no-gutters block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form action="TweetAnythingServlet" class="bg-light p-4 p-md-5 contact-form" method="post">
              <div class="form-group">
                <input type="text" name="emailid" id="emailid" class="form-control" placeholder="<%=emailid_view1%>" value ="<%=emailid_view1%>">
                <script type="text/javascript">
     			document.getElementById("emailid").value;
				</script>
              </div>
              <div class="form-group">
                <input type="text" name="subject" class="form-control" placeholder="Subject" required>
              </div>
              <div class="form-group">
                <textarea name="message" cols="30" rows="7" class="form-control" placeholder="Message" required></textarea>
              </div>
              <div class="form-group">
              <center>
                 <input type="submit" value="Retweet" class="btn btn-primary py-3 px-5">
                 <input type="reset" value="Reset" class="btn btn-primary py-3 px-5">
              </center>   
              </div>
            </form>
          
          </div>

          <div class="col-md-6 d-flex">
          	<div class="img" style="background-image: url(images/about.jpg);"></div>
          </div>
        </div>
      </div>
    </section>
    


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js1/jquery.min.js"></script>
  <script src="js1/jquery-migrate-3.0.1.min.js"></script>
  <script src="js1/popper.min.js"></script>
  <script src="js1/bootstrap.min.js"></script>
  <script src="js1/jquery.easing.1.3.js"></script>
  <script src="js1/jquery.waypoints.min.js"></script>
  <script src="js1/jquery.stellar.min.js"></script>
  <script src="js1/owl.carousel.min.js"></script>
  <script src="js1/jquery.magnific-popup.min.js"></script>
  <script src="js1/aos.js"></script>
  <script src="js1/jquery.animateNumber.min.js"></script>
  <script src="js1/scrollax.min.js"></script>
  
  <script src="js1/main.js"></script>
  
  
    
  </body>
</html>