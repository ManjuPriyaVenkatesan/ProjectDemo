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
	
<style>
	
body
{
   background-repeat: no-repeat;
   background-color:  #ffcc33;
  
}
table.roundedCorners { 
  border: 2px solid DarkOrange;
  border-radius: 10px; 
  border-spacing: 0;
  }
table.roundedCorners td, 
table.roundedCorners th { 
  border-bottom: 2px solid DarkOrange;
  padding: 2px; 
  }
table.roundedCorners tr:last-child > td {
  border-bottom: none;
}
</style>

<title>Cleaned Tweets Prognosis</title>
</head>
<body>

<div>

		<%
		String tweetname="";
		String tweettext="";
		String tweeturl="";
		String retweetscount="";
		String favouritecount="";
		%>
		<%
			Connection con1 = DatabaseConnections.createConnection();
			PreparedStatement ps1=con1.prepareStatement("DELETE FROM `sentidiff`.`tweetscleaning` WHERE tweeturl = ''");
			int k1 = ps1.executeUpdate();
		%>	
		<%
			Connection con2 = DatabaseConnections.createConnection();
			PreparedStatement ps2=con2.prepareStatement("DELETE FROM `sentidiff`.`tweetscleaning` WHERE tweettext = ''");
			int k2 = ps2.executeUpdate();
		%>	
		<%
			Connection con3 = DatabaseConnections.createConnection();
			PreparedStatement ps3=con3.prepareStatement("DELETE FROM `sentidiff`.`tweetscleaning` WHERE tweeturl LIKE '%and%'");
			int k3 = ps3.executeUpdate();
		%>
		<%
			Connection con4 = DatabaseConnections.createConnection();
			PreparedStatement ps4=con4.prepareStatement("DELETE FROM `sentidiff`.`tweetscleaning` WHERE tweettext LIKE '%???%'");
			int k4 = ps4.executeUpdate();
		%>	
		
		<table class="roundedCorners">
		
		<tr>
			<td><h4><font face="Eras Bold ITC" color="black"><center>TWEET NAME</center></font></h4></td>
		
			<td><h4><font face="Eras Bold ITC" color="black"><center>TWEET TOPICS</center></font></h4></td>
		
			<td><h4><font face="Eras Bold ITC" color="black"><center>TWEET URL</center></font></h4></td>
			
			<td><h4><font face="Eras Bold ITC" color="black"><center>RETWEET COUNT</center></font></h4></td>
			
			<td><h4><font face="Eras Bold ITC" color="black"><center>FAVOURITE COUNT</center></font></h4></td>
		</tr>
			<%
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM `sentidiff`.`tweetscleaning`");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				tweetname = rs.getString(1);
				tweettext = rs.getString(2);
				tweeturl = rs.getString(3);
				retweetscount = rs.getString(4);
				favouritecount = rs.getString(5);
				
			%>		
			
			<tr>
			<td><center><font face="Comic Sans MS" color="#008080"><strong><%=tweetname%></strong></font></center></td>
			<td><center><font face="Comic Sans MS" color="#008080"><strong><%=tweettext%></strong></font></center></td>
			<td><center><font face="Comic Sans MS" color="#008080"><strong><%=tweeturl%></strong></font></center></td>
			<td><center><font face="Comic Sans MS" color="#008080"><strong><%=retweetscount%></strong></font></center></td>
			<td><center><font face="Comic Sans MS" color="#008080"><strong><%=favouritecount%></strong></font></center></td>
			</tr>	
		 <%}%>				
			
		</table>
</div>						
<div class="footer-w3l"></div>





</body>
</html>