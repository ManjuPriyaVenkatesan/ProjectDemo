<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Products</title>
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Admin Delete Products</title>
        

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
  background-color : #ffffff; 
}

.asas > input
{
    display: none;
}

.asas img
{

    height:320px; 
    width: 290px;
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
                    <h1>Product Deleted<br><em>Siyaton Software Solutions Pvt Ltd</em></h1>
                    <p>First Online E-Commerce Portal, For 
                    <br>Selling Total Stations, Auto Levels,.....</p>
                </div>
                <div class="section-content">
                    <div class="tabs-content">
                        <div class="wrapper">
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                              <li><a href="" class="active">Product Deleted</a></li>
                              <li><a href="#tab2"></a></li>
                              <li><a href="#tab3"></a></li>
                              <li><a href="#tab4"></a></li>
                            </ul>
                            
                              <section id="first-tab-group" class="tabgroup">
                              
                              <img src="img/delete.jpg" alt="" height="358px" width="1030px"/>
                              </section>             
                        	
                        	
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
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/product_ratings", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM `product_ratings`.`adminaddproducts` WHERE productid="+id);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


</body>
</html>