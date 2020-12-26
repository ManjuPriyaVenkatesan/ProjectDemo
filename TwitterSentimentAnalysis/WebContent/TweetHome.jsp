<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>

<%@page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Basic Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<title>Tweet Home</title>
</head>
<%			
			
			String photoname_view = "";
			
			Connection con1 = DatabaseConnections.createConnection();
			Statement ps1=con1.createStatement();
			String sql1 = "SELECT * FROM `sentidiff`.`userregistration`";
			ResultSet rs1=ps1.executeQuery(sql1);
			
			while(rs1.next())
			{
				photoname_view = rs1.getString(8);
				
			%>		
 <%}%>		
<style>



.reviews {
    color: #555;    
    font-weight: bold;
    margin: 10px auto 20px;
}

.media .media-object { max-width: 120px; }
.media-body { position: relative; }

.btn-circle {
    font-weight: bold;
    font-size: 12px;
    padding: 6px 15px;
    border-radius: 20px;
}
.btn-circle span { padding-right: 6px; }


.custom-input-file {
    overflow: hidden;
    position: relative;
    width: 120px;
    height: 120px;
    background: #eee url('userreg_profile_pics/<%=photoname_view%>');    
    background-size: 120px;
    border-radius: 120px;
}
input[type="file"]{
    z-index: 999;
    line-height: 0;
    font-size: 0;
    position: absolute;
    opacity: 0;
    filter: alpha(opacity = 0);-ms-filter: "alpha(opacity=0)";
    margin: 0;
    padding:0;
    left:0;
}
.uploadPhoto {
    position: absolute;
    top: 25%;
    left: 25%;
    display: none;
    width: 50%;
    height: 50%;
    color: #fff;    
    text-align: center;
    line-height: 60px;
    text-transform: uppercase;    
    background-color: rgba(0,0,0,.3);
    border-radius: 50px;
    cursor: pointer;
}
.custom-input-file:hover .uploadPhoto { display: block; }

</style>




<body style="background-color:#ffbd39;">
<br>
<br>


		<%
		String emailid="";
		String subject="";
		String message="";
		%>
		

			<%
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM `sentidiff`.`tweetanything`");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				subject = rs.getString(1);
				message = rs.getString(2);
				emailid = rs.getString(3);
			%>		
			
		<!-- 	<button onclick="location.href='Retweet.jsp'"class="button button1">Retweet</button>  -->
				
		 	



     <div class="tab-content">
      
      <ul class="media-list">
      
       <li class="media">
       <a class="pull-left" href="#">
                   <img class="media-object img-circle" src="userreg_profile_pics/<%=photoname_view%>" alt="profile">
       </a>
       
       <div class="media-body">
       
       
        <div class="well well-lg">
          <h4 class="media-heading text-uppercase reviews"><%=subject%></h4>
                              
            <p class="media-comment">
                                <%=message%>
                              </p>
                              <a class="btn btn-info btn-circle text-uppercase" href="Retweet.jsp" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                          </div>    
       
       
       <%}%>
       

       </div>
       </li>
      </ul>
     </div>

</body>
</html>