<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql. *" %>
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<%@page import="java.util.Random" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>User Page</title>
        
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        

        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        
        <link rel="stylesheet" href="css/light-box.css">
        
        <link rel="stylesheet" href="css/templatemo-style.css">

        

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

<body>

 <%	    String emailid=request.getParameter("emailid");
 		System.out.println("UH"+emailid);
 
 %>


        <div class="sidebar-navigation hidde-sm hidden-xs">
            <div class="logo">
                <a href="#">Siyaton<em> Software Solutions</em></a>
            </div>
            <nav>
                <ul>
                    <li>
                        <a href="index.html">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="UH.jsp?emailid=<%=emailid%>">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Recent Products
                        </a>
                    </li>
                    <li>
                        <a href="UserHome.jsp?emailid=<%=emailid%>">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            View Products
                        </a>
                    </li>
                 <!--     <li>
                        <a href="AddComment.jsp?emailid=<%=emailid%>">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Add Comment
                        </a>
                    </li>
                    <li>
                        <a href="ViewComment.jsp?emailid=<%=emailid%>">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            View Comment
                        </a>
                    </li>
                    <li> -->
                        <a href="index.html">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Logout
                        </a>
                    </li>
                </ul>
            </nav>
            <ul class="social-icons">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                <li><a href="#"><i class="fa fa-behance"></i></a></li>
            </ul>
        </div>

       

        <div class="page-content">
            
            <section id="projects" class="content-section">
                <div class="section-heading">
                    <h1>Recent<br><em>Products</em></h1>
                    <p>First Online E-Commerce Portal, For 
                    <br>Selling Total Stations, Auto Levels,.....</p>
                </div>
                <div class="section-content">
                    <div class="masonry">
                        <div class="row">
                            <div class="item">
                                <div class="col-md-8">
                                    <a href="img/portfolio_big_1.jpg" data-lightbox="image"><img src="img/portfolio_1.jpg" alt="image 1" height="510px"></a>
                                </div>
                            </div>
                            <div class="item second-item">
                                <div class="col-md-4">
                                    <a href="img/portfolio_big_2.jpg" data-lightbox="image"><img src="img/portfolio_2.jpg" alt="image 2" height="240px"></a>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-md-4">
                                    <a href="img/portfolio_big_3.jpg" data-lightbox="image"><img src="img/portfolio_3.jpg" alt="image 3" height="240px"></a>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>            
            </section>
           
           
            <section class="footer">
                <p>Copyright &copy; 2019 Siyaton Software Solutions Pvt Ltd</p>
            </section>
        </div>

   
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>
    
    <script src="js/plugins.js"></script>
   

   
   
</body>
</html>