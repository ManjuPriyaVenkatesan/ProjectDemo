<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>
<div class="wrapper">
			<div class="image-holder">
			<img src="img/registration-form-8.jpg" alt="">
			</div>
			<div class="form-inner">
				<form action="UserRegistrationServlet" method="post">
					<div class="form-header">
						<h3>Sign up</h3>
						<img src="img/sign-up.png" alt="" class="sign-up-icon">
					</div>
					<style>
					img {
  						border-radius: 50%;
						}
					</style>
					<label class=newbtn>
								
						<a href="IP WebCam Address" class="socials-icon"> 
							<i class="zmdi zmdi-instagram"></i>
						</a>
			 <center> <img id="blah" src="images/about.jpg" alt="Upload Your Photo " style="width:200px;height:150px"> <br> </center>
			 		  

			<button style="width: 96px; height: 20px;float: right"><input id="pic" class='pis' onchange="readURL(this);" type="file" name="photo"></button>
			</label>
			<script>
 
 $('.newbtn').bind("click" , function () {
        $('#pic').click();
 });
 
  function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>
			<br>
			<br>
			<br>		
					<div class="form-group">
					<br>	<label for="">Username</label>
						<input type="text" name="username" class="form-control" data-validation="length alphanumeric" data-validation-length="3-12">
					</div>
					<div class="form-group">
						<label for="">E-Mail ID</label>
						<input type="text" name="emailid" class="form-control" data-validation="email">
					</div>
					<div class="form-group">
						<label for="">Phone No</label>
						<input type="text" name="phoneno" class="form-control" data-validation="length numeric" data-validation-length="min10">
					</div>
					<div class="form-group" >
						<label for="">Password</label>
						<input type="password" name="password" class="form-control" data-validation="length" data-validation-length="min8">
					</div>
					<div class="form-group" >
						<label for="">Confirm Password</label>
						<input type="password" name="confirmpassword" class="form-control" data-validation="length" data-validation-length="min8">
					</div>
					
				
					
					<button>create my account</button>
					<br>
					<br>
				</form>
			</div>
			
		</div>
		
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/jquery.form-validator.min.js"></script>
		<script src="js/main.js"></script>
</body>
</html>