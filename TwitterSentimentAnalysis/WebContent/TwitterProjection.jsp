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

<link href="css6/font-awesome.css" rel="stylesheet"><!-- Font-awesome-CSS --> 
<link href="css6/style.css" rel='stylesheet' type='text/css'/><!-- style.css --> 
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script src="js/jquery.min.js"></script>
		<script>$(document).ready(function(c) {
		$('.alert-close').on('click', function(c){
			$('.main-agile').fadeOut('slow', function(c){
				$('.main-agile').remove();
			});
		});	  
	});
	</script>
	
<title>Twitter Projection</title>

<style>
	
body
{
   
   background-repeat: no-repeat;
   background-image: url("img/TwitterProjection.gif");
   background-position: right top;
   margin-right: 100px;
  
   background-size: 50% 95%;
   background-attachment: fixed;
     
}
table.roundedCorners { 
  border: 2px solid DarkOrange;
  border-radius: 13px; 
  border-spacing: 0;
  }
table.roundedCorners td, 
table.roundedCorners th { 
  border-bottom: 2px solid #ffcc33;
  padding: 1px; 
  }
table.roundedCorners tr:last-child > td {
  border-bottom: none;
}
</style>

</head>
<body>

<div>

		<%
		String tweetsrawtext="";
		%>
		
		<table class="roundedCorners" style="width:60%">
		<br>
		<tr>
		<td><center><h2><font face="Comic Sans MS" color="black">SCRAPED TWEETS</font></h2></center></td>
		</tr>
		
		
			<%
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM `sentidiff`.`tweetsscraping`");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				tweetsrawtext = rs.getString(1);
			%>		
			
			<tr>
			<td><center><font  size="3" face="Comic Sans MS" color="#008080"><strong><%=tweetsrawtext%></strong></font></center></td>
			</tr>	
		 <%}%>				
			
		</table>

</div>						
<div class="footer-w3l"></div>
</body>
</html>