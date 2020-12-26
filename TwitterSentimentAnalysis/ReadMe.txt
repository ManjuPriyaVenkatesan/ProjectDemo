SENTIDIFF: COMBINING TEXTUAL INFORMATION AND SENTIMENT DIFFUSION PATTERNS FOR TWITTER SENTIMENT ANALYSIS

PROJECT OVERVIEW:
⦁ Twitter sentiment analysis has become a hot research topic in recent years. 
⦁ Most of existing solutions to Twitter sentiment analysis basically only consider textual information of Twitter messages, and struggle to perform well when facing short and ambiguous Twitter messages. 
⦁ In this project we collect the tweets whomever the user has followed using Twitter API and the data is preprocessed and classified based on the polarities using SENTIDIFF algorithm in order to analyze a particular user's polarity such as Positive, Negative and Neutral Tweet topic. 

SOFTWARE REQUIREMENTS:
Software's - STS 3, MySQL 5.5, Java 8
Front End - JSP, HTML, CSS, SCSS, JS
Back End - Servlets(J2EE), SQL

MODULES:
⦁ User Interface
⦁ Admin Interface
⦁ Data Scraping
⦁ Data Pre-Processing
⦁ SENTIDIFF Implementation
⦁ Data Visualization

OUTPUT DEMONSTRATION:
https://www.youtube.com/watch?v=vxduORRPHPs&list=PLbFBf5lRDaZ6_NCrAm2wtSZzPhaQTkCTK&index=5&t=7s

TO RUN THE PROJECT PERFORM CHANGES IN:
⦁  User_Registration.jsp
	<a href="IP WebCam Address" class="socials-icon">
⦁  UserRegistrationServlet.java	
	 String path = "Local Full Path\\TwitterSentimentAnalysis\\WebContent\\userreg_profile_pics\\";
⦁ ForgotPasswordServlet.java	- Turn On Less Secured Apps 
	 return new PasswordAuthentication("Original Mail Id","Original Mail Id Password");  
⦁  AdminLogin.java
	 if(username.equals("Admin Username") && accesscode.equals("Admin Password"))
⦁  TwitterScrapingServlet.java - Twitter Developer Account API Details
	 .setOAuthConsumerKey("")
	 .setOAuthConsumerSecret("")
	 .setOAuthAccessToken("")
	 .setOAuthAccessTokenSecret("");
⦁  TwitterCleaningServlet.java - Use Same API Details used in TwitterScrapingServlet.java
	 .setOAuthConsumerKey("")
	 .setOAuthConsumerSecret("")
	 .setOAuthAccessToken("")
	 .setOAuthAccessTokenSecret("");
⦁  Add Jar Files by right clicking TwitterSentimentAnalysis -> Build Path -> Configure Build Path -> Libraries -> Add External Jar -> WebContent folder -> WEB-INF -> Lib -> Choose and Jar Files -> Open -> Apply and Close
⦁  Restore Database Backup by open MySQL Query Browser -> Tools -> MySQL Administrator -> Restore -> Open Backup File -> database folder -> choose Sentidiff_Database_Backup.sql -> Start Restore

	 