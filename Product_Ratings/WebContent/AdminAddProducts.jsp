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
        <title>Admin Add Products</title>
        

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       

        <link rel="stylesheet" href="css/bootstrap.min.css">
    
        <link rel="stylesheet" href="css/templatemo-style.css">
        
        <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
		<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
        
       
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
  width: 90%;
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



        <header class="nav-down responsive-nav hidden-lg hidden-md">
            <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
        </header>

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
                        <a href="AdminAddProducts.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Add Products
                        </a>
                    </li>
                    <li>
                        <a href="AdminViewProducts.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            View Products
                        </a>
                    </li>
                    <li>
                        <a href="AdminDeleteProducts.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                           Delete Products
                        </a>
                    </li>
                    <li>
                        <a href="AdminViewOrder1.jsp">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            View Order
                        </a>
                    </li>
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
           
            
           
            <section id="blog" class="content-section">
                <div class="section-heading">
                    <h1>Add Products<br><em>Siyaton Software Solutions Pvt Ltd</em></h1>
                    <p>First Online E-Commerce Portal, For 
                    <br>Selling Total Stations, Auto Levels,.....</p>
                </div>
                <div class="section-content">
                    <div class="tabs-content">
                        <div class="wrapper">
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                              <li><a href="AdminAddProducts.jsp" class="active">Add Products</a></li>
                              <li><a href="#tab2"></a></li>
                              <li><a href="#tab3"></a></li>
                              <li><a href="#tab4"></a></li>
                            </ul>
                            <section id="first-tab-group" class="tabgroup">
                                <div id="tab1">
										<ul>
                                        <li>
                                           
                        <div class="text-content">

                        <form action="AdminHome" method="post">
                        
                        		<div class="col-md-4">
                               
                                  <div class="asas">
    									<label for="file-input">
       									
    									<img src="img/VisitingCard.png" id="file-input-tag"/>
    									</label>
    									
    									<input type="file" name="productimage" id="file-input">
						 		 </div>
                                  
                                </div>
                        
                               <div class="col-md-6">
                                  <fieldset>
                                  <br>
                                  <%Random rand = new Random();%>
                                    <input class = "aaa" type="text" name="productid" placeholder="Product Id..." required="" value="<%=rand.nextInt(1000)%>">
                                  </fieldset>
                                </div>
                                 <div class="col-md-6">
                                  <fieldset>
                                     <input class = "aaa" name="productname" type="text" placeholder="Product Name..." required="">
                                     
                                  </fieldset>
                                </div>
                                 <div class="col-md-6">
                                  <fieldset>
                                     <input class = "aaa" name="productbrand" type="text" placeholder="Product Brand..." required="">
                                     
                                  </fieldset>
                                </div>
                                
                                 <div class="col-md-6">
                                  <fieldset>
                                  	 
                                     <input class = "aaa" name="productprice" type="text" placeholder="Product Price..." required="">
                                     
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                          			<textarea name="productdescription" rows="6" class="aaa" id="message" placeholder="Product Description..." required=""></textarea>
                                  </fieldset>
                                </div>
                                 <div class="col-md-12">
                                  <fieldset>
                                  <center> <button type="submit" class="example_e"><b>&nbsp Add Products... &nbsp</b></button> </center> 
                                  </fieldset>
                                </div>
                              
							
                        </form>
                        </div>
                        </li>
						</ul>		
                                              
                                </div>
                            </section> 
                        </div>
                    </div>
                </div>
            </section>
        </div>

    
  
  
    
    <script src="js/plugins.js"></script>
    
    
   
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