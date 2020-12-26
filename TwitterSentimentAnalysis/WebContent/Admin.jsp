<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="css/stylesadmin.css">
<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='js/admin.js'></script>
</head>
<body>	

<div class="background-wrap">
	<img class ="bg" src="img/background_admin.jpg" height="860" width="1600" alt="">
  <div class="background"></div>
</div>

<form action="AdminLogin" method="post">
  <h1 id="litheader">ADMIN</h1>
  <div class="inset">
    <p>
      <input type="text" name="username"  placeholder="Username" required="required">
    </p>
    <p>
      <input type="password" name="accesscode" placeholder="Access code" required="required">
    </p>
    <input class="loginLoginValue" type="hidden" name="service" value="login" />
  </div>
  <p class="p-container">
    <input type="submit" name="authorize" id = "go" value="Authorize">
  </p>
</form>
</body>
</html>