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
	
<title>Twitter Classification</title>

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

</head>
<body>
		<%
		String tweettext="";
		String positive_words="";
		int positive_count = 0;
		%>
		<%
		String tweettextneg="";
		String negative_words="";
		int negative_count = 0;
		%>
		
		
<div>

		
		
		<table class="roundedCorners">
		
		<tr>
		<td><h3><font face="Eras Bold ITC" color="black"><center>TWEET CLASSIFICATION</center></font></h3></td>
		</tr>
			<%
			try
			{
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT positive_words FROM `sentidiff`.`sentimentwords`");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				positive_words = rs.getString(1);
				PreparedStatement ps1=con.prepareStatement("SELECT * FROM `sentidiff`.`tweetscleaning` WHERE tweettext REGEXP (SELECT positive_words FROM `sentidiff`.`sentimentwords` WHERE positive_words = ?)");
				ps1.setString(1,positive_words);
				ResultSet rs1=ps1.executeQuery();
				while(rs1.next())
				{
					tweettext = rs1.getString(2);
					positive_count++;
				
			%>		
			
			<tr>
			<td><center><font face="Comic Sans MS" color="#008080"><strong><%=positive_count%> --- <%=positive_words%> --- <%=tweettext%> </strong></font></center></td>
			
			
			</tr>	
		 	<%}%>
		 <%}
		 
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		 
		 %>	
		
	</table>	
</div>				
	
<div class="footer-w3l"></div>





</body>
</html>