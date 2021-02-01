FOOD FOR THOUGHT - FIGHTING FAKE NEWS AND ONLINE DISINFORMATION

PROJECT OVERVIEW :
⦁  Fake news is becoming a growing concern for several industrial sectors and the society at large.
⦁  Fake News Detection using Writing Style, Original Source and Content Analysis. 

SOFTWARE REQUIREMENTS:
Software's - STS 3, MySQL 5.5, Java 8
Front End - JSP, HTML, CSS, SCSS, JS
Back End - Servlets(J2EE), SQL

MODULES:
⦁  User Interface
   - Registration
   - Login
⦁  Analyzer Interface
   - Login
   - Data Collection
   - Data Analysis
   		- Writing Style
   		- Content
   		- Original Source
   - Fake News Detection
   - Reputation Assessment
  
OUTPUT DEMONSTRATION:
https://www.youtube.com/watch?v=CLvGKAidBos&list=PLbFBf5lRDaZ6_NCrAm2wtSZzPhaQTkCTK&index=2

TO RUN THE PROJECT PERFORM CHANGES IN:

⦁  AdminLoginServlet.java
	 if(username.equals("Analyzer Username") && accesscode.equals("Analyzer Password"))	 
⦁  DatabaseConnections.java	 
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tape","MySQL Username","MySQL Password");	 	 
⦁  Add Jar Files by right clicking FoodForThought -> Build Path -> Configure Build Path -> Libraries -> Add External Jar -> WebContent folder -> WEB-INF -> Lib -> Choose and Jar Files -> Open -> Apply and Close
⦁  Restore Database Backup by open MySQL Query Browser -> Tools -> MySQL Administrator -> Restore -> Open Backup File -> database folder -> choose FoodForThought_Database_Backup.sql -> Start Restore
