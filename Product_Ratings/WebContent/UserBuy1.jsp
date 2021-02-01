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
        <title>User Buy</title>
        
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        

        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        
        <link rel="stylesheet" href="css/light-box.css">
        
        <link rel="stylesheet" href="css/templatemo-style.css">

        

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
<style>
.imagediv {
	float:left;
    margin-top:50px;
}
.imagediv .showonhover {
	background:red;
	padding:20px;
	opacity:0.9;
	color:white;
	width: 100%;
	display:block;	
	text-align:center;
	cursor:pointer;
}

.example_e {
border: none;
background: #45489a;
color: #ffffff !important;
font-weight: 100;
padding: 12px;

border-radius: 2px;
display: inline-block;

}


.example_e:hover {
color: #45489a !important;
font-weight: 700 !important;
letter-spacing: 3px;
background: none;



}

.aaa {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #45489a;
  border-bottom: 2px solid #45489a;
  background-color : #f4f4f4; 
}

.asas > input
{
    display: none;
}

.asas img
{

    height:285px; 
    width: 300px;
    cursor: pointer;
}
</style>        
        
    </head>

<body>




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
                        <a href="UH.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Recent Products
                        </a>
                    </li>
                    <li>
                        <a href="UserHome.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            View Products
                        </a>
                    </li>
          <!--           <li>
                        <a href="AddComment.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Add Comment
                        </a>
                    </li>
                    
                     <li>
                        <a href="ViewComment.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            View Comment
                        </a>
                    </li> -->
                    
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
            
            <section id="projects" class="content-section">
                <div class="section-heading">
                    <h1>Buy Products<br><em>Siyaton Software Solutions Pvt Ltd</em></h1>
                    <p>First Online E-Commerce Portal, For 
                    <br>Selling Total Stations, Auto Levels,.....</p>
                </div>
                <div class="section-content">
   <%	    String id=request.getParameter("id");	
            System.out.println(id); 
            String emailid=request.getParameter("emailid");	
            System.out.println(emailid); 
			String productid_view = "";
			String productname_view ="";
			String productbrand_view ="";
			String productprice_view ="";
			String productdescription_view = "";
			String photoname_view = "";
			String photopath_view = "";
			
			Connection con = DatabaseConnections.createConnection();
			Statement ps=con.createStatement();
			String sql = "SELECT * FROM `product_ratings`.`adminaddproducts` WHERE productid="+id;
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
                
                
                    <div class="masonry">
                        <div class="row">
                        
                            <div class="item">
                            <br>
                             <br>
                            
                                <div class="col-md-8">
                                  
                              <form action="UserDetails" method="post">
                      
                      			
                      			<div class="col-md-6">
                                  <fieldset>
                                  <br>
                                     <input class = "aaa" name="productid" type="text" placeholder="Product Id is <%=productid_view%>" value="<%=productid_view%>">
                                     
                                  </fieldset>
                                </div>
                                
                                 <div class="col-md-6">
                                  <fieldset>
                                  <br>
                                     <input class = "aaa" name="username" type="text" placeholder="User Name..." required="">
                                     
                                  </fieldset>
                                </div>
                                 <div class="col-md-6">
                                  <fieldset>
                                   <br>
                                     <input class = "aaa" name="contactnumber" type="text" placeholder="Email Id is <%=emailid%>" value="<%=emailid%>">
                                     
                                  </fieldset>
                                </div>
                                
                                <div class="col-md-6">
                                  <fieldset>
                                   <br>
                                     <select name="paymentmode" class = "aaa">
    									<option value="COD">Cash on Delivery</option>
    									<option value="CC">Credit Card</option>
    									<option value="DC">Debit Card</option>
    									<option value="NB">Net Banking</option>
  									</select>
                                  </fieldset>
                                </div>
                                

                                <div class="col-md-12">
                                  <fieldset>
                                  <br>
                          			<textarea name="deliveryaddress" rows="6" class="aaa" id="message" placeholder="Delivery Address..." required=""></textarea>
                                  </fieldset>
                                </div>
                                
                                  <div class="col-md-12">
                                  <fieldset>
                                  <br>
                          			<textarea name="writecomment" rows="6" class="aaa" id="message" placeholder="Comment About The Product..." required=""></textarea>
                                  </fieldset>
                                </div>
                                
                                 <div class="col-md-12">
                                  <fieldset>
                                  <center> <button type="submit" class="example_e"><b>&nbsp Proceed... &nbsp</b></button> </center> 
                                  
                                  </fieldset>
                                </div>
							
                        </form>
                                     
                                </div>
                            </div>
                            <div class="item second-item">
                                <div class="col-md-4">
                                    <a href="img/<%=photoname_view%>" data-lightbox="image"><img src="img/<%=photoname_view%>" alt="image 2" height="280px"></a>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-md-4">
                                    <p> Product Id : <b> <%=productid_view%> </b> </p>
                                    <p><b> <%=productname_view%> (<%=productbrand_view%>) </b> </p>  
                                    <p> <b>Rs. <%=productprice_view%> /-</b> </p>  
                                    
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
                                <p style="color:#45489a;font-weight:bold"><%=productrating_view%> * </p>
                              <% } %> 
                                    
                                    
                       
                                    
                                </div>
                            </div>
                            
                        </div>
                        
                        
      <%}%>            
      
      
      					     
                    </div>
                </div>            
            </section>		             
   
   <!-- ----------------------------------------------------------------------------------- -->
 <section id="video" class="content-section">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h1><em>Product</em> Reviews</h1>
                            
 <%

			
			try
			{
			Connection con_sort = DatabaseConnections.createConnection();
			PreparedStatement ps_sort=con_sort.prepareStatement("SELECT username,comments FROM `product_ratings`.`userbuyproducts` WHERE productid = ?");
			ps_sort.setString(1, id);
			ResultSet rs_sort=ps_sort.executeQuery();
			
			while(rs_sort.next())
			{
				
				   
				   String username = rs_sort.getString(1);
				   String comments = rs_sort.getString(2);

			 %>
			
			 
                            
                            <p><em><%=username%></em> @ <%=comments%> </p> <br>
                       
		
		 <%}%>
		 
	
		 <% }
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		 
		 %>	
		 
		 
		 
		 
		 
		 
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