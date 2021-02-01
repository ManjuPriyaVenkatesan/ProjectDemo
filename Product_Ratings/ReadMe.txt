SENTIMENT ANALYSIS ON CUSTOMER FEEDBACK DATA FOR RATING PRODUCTS

PROJECT OVERVIEW:
⦁  Automatic product rating generation based on the customer's product reviews i.e., based on the opinions of the customer, the rating gets updated using sentiment lexicons automatically.

SOFTWARE REQUIREMENTS:
Software's - STS 3, MySQL 5.5, Java 8
Front End - JSP, HTML, CSS, SCSS, JS
Back End - Servlets(J2EE), SQL

OUTPUT DEMONSTRATION:
https://www.youtube.com/watch?v=-0udmMpoNy0&list=PLbFBf5lRDaZ6_NCrAm2wtSZzPhaQTkCTK&index=3

TO RUN THE PROJECT PERFORM CHANGES IN:

⦁  delete.jsp
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/product_ratings", "MySQL Username", "MySQL Password");
⦁  AdminHome.java
	String path = "Local Full Path\\Product_Ratings\\WebContent\\img\\";	
⦁  AdminLogin.java
	if(username.equals("Admin Username") && accesscode.equals("Admin Password"))
⦁  DatabaseConnections.java	 
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tape","MySQL Username","MySQL Password");	 	 
⦁  Add Jar Files by right clicking Product_Ratings -> Build Path -> Configure Build Path -> Libraries -> Add External Jar -> WebContent folder -> WEB-INF -> Lib -> Choose and Jar Files -> Open -> Apply and Close
⦁  Restore Database Backup by open MySQL Query Browser -> Tools -> MySQL Administrator -> Restore -> Open Backup File -> database folder -> choose ProductRatings_Database_Backup.sql -> Start Restore	
		