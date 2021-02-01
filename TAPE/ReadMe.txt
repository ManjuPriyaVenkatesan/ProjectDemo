
TAPE - TEXT BASED PRICE RECOMMENDATION SYSTEM FOR ONLINE RENTAL HOUSES

PROJECT OVERVIEW:
⦁  Text Based Price Recommendation System for Online Rental Houses similar to Airbnb.
⦁  Analysis of the relationship between the description of each listing and its price, and recommend a reasonable price for newly added listings.

SOFTWARE REQUIREMENTS:
Software's - STS 3, MySQL 5.5, Java 8
Front End - JSP, HTML, CSS, SCSS, JS
Back End - Servlets(J2EE), SQL

MODULES:
⦁  User Interface
   - Registration
   - Login
   - Search House
   - Book House
   - Delete Booked House  
⦁  Hoster Interface
	- Registration
	- Login
	- Add House
	- Automatic Price Generation
	- View House
	- Delete House
	- View Booking Details
⦁  Admin Interface
   - Login
   - View Users
   - View Hosters
   - View Houses
   
OUTPUT DEMONSTRATION:
https://www.youtube.com/watch?v=yjKYeG10Dtg&list=PLbFBf5lRDaZ6_NCrAm2wtSZzPhaQTkCTK

TO RUN THE PROJECT PERFORM CHANGES IN:

⦁  AdminLoginServlet.java
	 if(username.equals("Admin Username") && accesscode.equals("Admin Password"))
⦁  HosterHostHouseServlet.java	
	 String path = "Local Full Path\\TAPE\\WORKSPACE\\TAPE\\WebContent\\images\\";	 
⦁  DatabaseConnections.java	 
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tape","MySQL Username","MySQL Password");	 	 
⦁  Add Jar Files by right clicking TAPE -> Build Path -> Configure Build Path -> Libraries -> Add External Jar -> WebContent folder -> WEB-INF -> Lib -> Choose and Jar Files -> Open -> Apply and Close
⦁  Restore Database Backup by open MySQL Query Browser -> Tools -> MySQL Administrator -> Restore -> Open Backup File -> database folder -> choose TAPE_Database_Backup.sql -> Start Restore