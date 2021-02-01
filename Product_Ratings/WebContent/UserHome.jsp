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
        <title>User Home</title>
        

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       

        <link rel="stylesheet" href="css/bootstrap.min.css">
        
       
        
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-style.css">


        
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
        <!--             <li>
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
                     -->
                    <li>
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
            <section id="featured" class="content-section">
                <div class="section-heading">
                    <h1>View Products<br><em>Siyaton Software Solutions Pvt Ltd</em></h1>
                    <p>First Online E-Commerce Portal, For 
                    <br>Selling Total Stations, Auto Levels,.....</p>
                </div>
                <div class="section-content">
                    <div class="owl-carousel owl-theme">
                        
       <%			
			String productid_view = "";
			String productname_view ="";
			String productbrand_view ="";
			String productprice_view ="";
			String productdescription_view = "";
			String photoname_view = "";
			String photopath_view = "";
			
			Connection con = DatabaseConnections.createConnection();
			Statement ps=con.createStatement();
			String sql = "SELECT * FROM `product_ratings`.`adminaddproducts`";
			ResultSet rs=ps.executeQuery(sql);
			
			while(rs.next())
			{
				productid_view = rs.getString(1);
				productname_view = rs.getString(2);
				productbrand_view = rs.getString(3);
				productprice_view = rs.getString(4);
				productdescription_view = rs.getString(5);
				photoname_view = rs.getString(6);
				photopath_view = rs.getString(7);
				
       %>		
                        
                        
                        <div class="item">
                            <div class="image">
                                <img src="img/<%=photoname_view%>" alt="" height="328px" width="190px">
                                <div class="featured-button button">
                                    <a href="UserBuy1.jsp?id=<%=productid_view %>&&emailid=<%=emailid%>">Buy</a>
                                    
                                </div>
                            </div>
                            <div class="text-content">
                                <h4><%=productname_view%> (<%=productbrand_view%>)</h4>
                                <span>Rs.<%=productprice_view%>/-</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                               &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                               
                                <%			
			                    String productrating_view = "";
                                Connection con_productrating_view = DatabaseConnections.createConnection();
                                
                                PreparedStatement psproductrating_view = con_productrating_view.prepareStatement("SELECT productid,ROUND(productrating, 1) FROM `product_ratings`.`product_rating` WHERE productid = ?");
                                
                                psproductrating_view.setString(1, productid_view);
                    			//Statement psproductrating_view = con_productrating_view.createStatement();
                    			//String sqlproductrating_view = "SELECT * FROM `product_ratings`.`product_rating` ";
                    			
                    			ResultSet rsproductrating_view = psproductrating_view.executeQuery();
                    			
                    			
                    			//ResultSet rsproductrating_view=psproductrating_view.executeQuery(sqlproductrating_view);
                    			
                    			while(rsproductrating_view.next())
                    			{
                    				productrating_view = rsproductrating_view.getString(2);
                                
                                
                                %>
                                <span style="color:#45489a;font-weight:bold"><%=productrating_view%> * </span>
                              <% } %> 
                               
                               
                                <p><%=productdescription_view%></p>
                            </div>
                            
                           
                        </div>
                     <%}%> 
                       
                    </div>
                </div>
                 
            </section>
            
            
            
            
        </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   

   
    
    <script src="js/plugins.js"></script>
    <script src="js/main2.js"></script>

    

   

</body>
</html>