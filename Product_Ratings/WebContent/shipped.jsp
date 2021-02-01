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
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Shipped Products</title>
        

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
                   
            <!--         <li>
                        <a href="AddComment.jsp?emailid=<%=emailid%>">
                            <span class="rect"></span>
                            <span class="circle"></span>
                            Add Comment
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
           
            
           
            <section id="blog" class="content-section">
                <div class="section-heading">
                    <h1>Product Shipped<br><em>Siyaton Software Solutions Pvt Ltd</em></h1>
                    <p>First Online E-Commerce Portal, For 
                    <br>Selling Total Stations, Auto Levels,.....</p>
                </div>
                <div class="section-content">
                    <div class="tabs-content">
                        <div class="wrapper">
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                              <li><a href="" class="active">Product Shipped</a></li>
                              <li><a href="#tab2"></a></li>
                              <li><a href="#tab3"></a></li>
                              <li><a href="#tab4"></a></li>
                            </ul>
                            
                             <br>
                             <br>
                             <br>
                              <img src="img/shipping.gif" alt="" height="300px" width="900px"/>
                                 
                        	
                        	
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
            Connection con_truncate = DatabaseConnections.createConnection();
			PreparedStatement ps_truncate=con_truncate.prepareStatement("TRUNCATE TABLE `product_ratings`.`ratinggeneration`");
			ResultSet rs_truncate=ps_truncate.executeQuery();
			
			Connection con_truncate1 = DatabaseConnections.createConnection();
			PreparedStatement ps_truncate1=con_truncate1.prepareStatement("TRUNCATE TABLE `product_ratings`.`product_rating`");
			ResultSet rs_truncate1=ps_truncate1.executeQuery();

%>







<!-- Product Rating Generation -->      


     
            
 <%
		String comments="";
        String productid="";
        String username="";
		String negative_words="";
		String positive_words="";
		
		int positive_count = 0;

%>           
     
     


<!--  Negative Count -->

             <%

			
			try
			{
			Connection con_neg = DatabaseConnections.createConnection();
			PreparedStatement ps_neg=con_neg.prepareStatement("SELECT * FROM `product_ratings`.`userbuyproducts`");
			ResultSet rs_neg=ps_neg.executeQuery();
			
			while(rs_neg.next())
			{
				
				    productid = rs_neg.getString(1);
				    username = rs_neg.getString(2);
					comments = rs_neg.getString(6);
					String[] count_words= comments.split(" ");
					
					int negative_count = 0;
					for (String a : count_words) 
					{
				       // System.out.println(a); 
						PreparedStatement ps1=con_neg.prepareStatement("SELECT negative_words FROM `product_ratings`.`sentimentwords` WHERE negative_words = ?");
						ps1.setString(1,a);
						ResultSet rs1=ps1.executeQuery();
						while(rs1.next())
						{
						negative_count++;

			 %>
			
				
		 	
		 <%}%>
		 <%}%>
		 

			
			

			
			<%
			Connection con1 = DatabaseConnections.createConnection();
			try
			{
				PreparedStatement obj1 = con1.prepareStatement("INSERT INTO `product_ratings`.`ratinggeneration` VALUES(?,?,?,?)");
				
				obj1.setString(1, comments);
				obj1.setString(2, Integer.toString(negative_count));
				obj1.setString(3, Integer.toString(positive_count));
				obj1.setString(4, productid);
				
				int k1 = obj1.executeUpdate();
				
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			
			
			
			%> 
		  
		   <%}%>
					
		 <% }
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		 
		 %>	
		 
		 
		 
		<!--  Positive Count -->
		
		
		
		<%

			
			try
			{
			Connection con_pos = DatabaseConnections.createConnection();
			PreparedStatement ps_pos=con_pos.prepareStatement("SELECT * FROM `product_ratings`.`userbuyproducts`");
			ResultSet rs_pos=ps_pos.executeQuery();
			
			while(rs_pos.next())
			{
					comments = rs_pos.getString(6);
					String[] count_words= comments.split(" ");
					
					positive_count = 0;
					for (String a : count_words) 
					{
				        //System.out.println(a); 
						PreparedStatement ps1_pos=con_pos.prepareStatement("SELECT positive_words FROM `product_ratings`.`sentimentwords` WHERE positive_words = ?");
						ps1_pos.setString(1,a);
						ResultSet rs1_pos=ps1_pos.executeQuery();
						while(rs1_pos.next())
						{
						positive_count++;

			 %>
			
				
		 	
		 <%}%>
		 <%}%>
		 
		 <%
			Connection con1_pos = DatabaseConnections.createConnection();
			try
			{
				PreparedStatement obj1_pos = con1_pos.prepareStatement("UPDATE `product_ratings`.`ratinggeneration` SET positivecount = ? WHERE comments = ? ");
				
				obj1_pos.setString(1, Integer.toString(positive_count));
				obj1_pos.setString(2, comments);
				
				int k1 = obj1_pos.executeUpdate();
				
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			
			
			
			%> 
	
	
		   <%}%>
					
		 <% }
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		 
		 %>	
		 
		 <!-- PRODUCT RATING -->


		<%

			try
			{
			Connection con_PR_productid = DatabaseConnections.createConnection();
			
			PreparedStatement ps_PR_productid = con_PR_productid.prepareStatement("SELECT DISTINCT(productid) FROM `product_ratings`.`ratinggeneration`");
			ResultSet rs_PR_productid = ps_PR_productid.executeQuery();
			while(rs_PR_productid.next())
			{
				
			productid = rs_PR_productid.getString(1);	
			
			Connection con_PR = DatabaseConnections.createConnection();
			PreparedStatement ps_PR=con_PR.prepareStatement("SELECT * FROM `product_ratings`.`ratinggeneration` WHERE productid = ?");
			ps_PR.setString(1,productid);
			
			ResultSet rs_PR=ps_PR.executeQuery();
		    float TNR = 0;
			int one_star = 0;
		    int two_star = 0;
		    int three_star = 0;
		    int four_star = 0;
		    int five_star = 0;
			
			while(rs_PR.next())
			{
					int NEG_COUNT = Integer.parseInt(rs_PR.getString(2));
					int POS_COUNT = Integer.parseInt(rs_PR.getString(3));
					
					
					//System.out.println("NC.........PC" + NEG_COUNT +  POS_COUNT);
					
					if(NEG_COUNT > 0 && POS_COUNT == 0)
					{
						one_star++;
						//System.out.println("one_star" + one_star);
					}
					else if (POS_COUNT > 0 && NEG_COUNT == 0)
					{
						five_star++;
						//System.out.println("five_star" + five_star);

					}
					else if (NEG_COUNT > POS_COUNT)
					{
						two_star++;
						//System.out.println("two_star" + two_star);
					}
					else if(POS_COUNT > NEG_COUNT)
					{
						four_star++;
						//System.out.println("four_star" + four_star);
					}
					else if (NEG_COUNT == POS_COUNT)
					{
						three_star++;
						//System.out.println("three_star" + three_star);
					}
					
					TNR++;

			}
			
			float Product_Rating = ((one_star * 1) + (two_star * 2) + (three_star * 3) + (four_star * 4) + (five_star * 5))/TNR;
			System.out.println("PPPPPPPPRRRRRRRRRRRR"+ Product_Rating);
			
			try
			{
			
			Connection con1_Select = DatabaseConnections.createConnection();
				
			PreparedStatement obj1_Select = con1_Select.prepareStatement("SELECT COUNT(productid) FROM `product_ratings`.`product_rating` WHERE productid = ?");	
		    
			obj1_Select.setString(1, productid);
			
			ResultSet rs_obj1_Select = obj1_Select.executeQuery();
			
			
			while(rs_obj1_Select.next())
			{
				
				int SELECT_COUNT = Integer.parseInt(rs_obj1_Select.getString(1));
				
				if(SELECT_COUNT == 0)
				{
					Connection con1_VALUE = DatabaseConnections.createConnection();
					
					PreparedStatement obj1_VALUE = con1_VALUE.prepareStatement("INSERT INTO `product_ratings`.`product_rating` VALUES(?,?)");
					
					obj1_VALUE.setString(1, productid);
					
					obj1_VALUE.setString(2, Float.toString(Product_Rating));

					int k1_VALUE = obj1_VALUE.executeUpdate();
				}
				
				else
				{
					Connection con1_VALUE_UPDATE = DatabaseConnections.createConnection();
					
					PreparedStatement obj1_VALUE_UPDATE = con1_VALUE_UPDATE.prepareStatement("UPDATE `product_ratings`.`product_rating` SET productrating = ? WHERE productid = ? ");
					
					
					
					obj1_VALUE_UPDATE.setString(1, Float.toString(Product_Rating));
				    obj1_VALUE_UPDATE.setString(2, productid);
					
					
					int k1_VALUE_UPDATE = obj1_VALUE_UPDATE.executeUpdate();
				}
				
				
			}
			
			
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			
			
          %>
		 
		 <% }
			}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		 
		 %>	































</body>
</html>