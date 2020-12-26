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
		String pos_word = "";
		
		%>
	
		
		
<div>

		<h3><font face="Eras Bold ITC" color="black"><center>TWEET CLASSIFICATION</center></font></h3>
		
		<table class="roundedCorners">
		
		<tr>
		<td><strong><font face="Eras Bold ITC" color="black">WC</font> </strong> </td> 
		<td><strong><font face="Eras Bold ITC" color="black"><center>POSITIVE TWEET</center></font></strong></td> 
		</tr>
		
			<%
			int word=0;
			
			try
			{
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM `sentidiff`.`tweetscleaning`");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
					tweettext = rs.getString(2);
					String[] count_words= tweettext.split(" ");
					
					int positive_count = 0;
					for (String a : count_words) 
					{
				        System.out.println(a); 
						PreparedStatement ps1=con.prepareStatement("SELECT positive_words FROM `sentidiff`.`sentimentwords` WHERE positive_words = ?");
						ps1.setString(1,a);
						ResultSet rs1=ps1.executeQuery();
						while(rs1.next())
						{
						positive_count++;

				%>
			
				
		 	
		 <%}%>
		 <%}%>
		 <% if(positive_count > 0) 
			 {%>
			 <tr>
			<td><font face="Comic Sans MS" color="#008080"><strong><%=positive_count%></strong></font></td>
			<td><font face="Comic Sans MS" color="#008080"><strong><%=tweettext%> </strong></font></td>
			<% }%>	
			
			
		
			<%
			Connection con1 = DatabaseConnections.createConnection();
			try
			{
				PreparedStatement obj1 = con1.prepareStatement("INSERT INTO `sentidiff`.`positivetweet` VALUES(?,?)");
				obj1.setString(1, Integer.toString(positive_count));
				obj1.setString(2, tweettext);
				
				int k1 = obj1.executeUpdate();
				
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			
			
			
			
			
			
			%> 
			 
			 
			 
			 
		</tr>	  
		   <%}%>
					
		 <% }
			
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