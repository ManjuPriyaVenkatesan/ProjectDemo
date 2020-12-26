<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*" %>
 
 <%
 String positivecount = "";
 String negativecount = "";
 String neutralcount = "";
 
 int pc = 0;
 int nc = 0;
 int neu = 0;
 
 int x = 0;
 int y = 0;
 int z = 0;
 %>
 
 <%
try
{
	
	System.out.println("pc" + positivecount);
	System.out.println("nc" + negativecount);
	System.out.println("neee" + neutralcount);
	System.out.println("xyz" + x + " " + y + " " + z);	
			Connection con = DatabaseConnections.createConnection();
			PreparedStatement ps=con.prepareStatement("SELECT positivetweet.positivecount,negativetweet.negativecount,neutraltweet.neutralcount FROM `sentidiff`.`positivetweet` INNER JOIN `sentidiff`.`negativetweet` ON positivetweet.positivetweet = negativetweet.negativetweet INNER JOIN `sentidiff`.`neutraltweet` ON negativetweet.negativetweet = neutraltweet.neutraltweet");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				positivecount = rs.getString(1);
				negativecount = rs.getString(2);
				neutralcount = rs.getString(3);
				
				pc = Integer.parseInt(positivecount);
				nc = Integer.parseInt(negativecount);
				neu = Integer.parseInt(neutralcount);
				
				if (pc > nc)
			    {
			        if (pc > neu)
			        {
			            x++;
			        }
			        else
			        {
			            z++;
			        }
			    }
			    else if (nc > neu)
			       y++;
			    else
			        z++;

				
			} 
						
}
 
 catch(SQLException e)
 {
 	e.printStackTrace();
 } 
%>

<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();



map = new HashMap<Object,Object>(); map.put("label", "Positive"); map.put("y", x); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Negative"); map.put("y", y); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Neutral"); map.put("y", z); list.add(map);

 
String dataPoints = gsonObj.toJson(list);

%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: "SENTIDIFF - Twitter Sentiment Analysis"
	},
	legend: {
		verticalAlign: "center",
		horizontalAlign: "left"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		indexLabel: "{y}%",
		indexLabelPlacement: "inside",
		legendText: "{label}: {y}%",
		toolTipContent: "<b>{label}</b>: {y}%",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}

</script>
</head>
<body>
<img src="images/sentidiff.jpg" alt="Sentidiff" width="600" height="370">
<div id="chartContainer"></div>
<br>
<br>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js" ></script>
</body>
</html>            