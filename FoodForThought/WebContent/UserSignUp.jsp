<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Food For Thought</title>
  <link rel="icon" href="img/favicon.png">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- animate CSS -->
  <link rel="stylesheet" href="css/animate.css">
  <!-- owl carousel CSS -->
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <!-- themify CSS -->
  <link rel="stylesheet" href="css/themify-icons.css">
  <!-- font awesome CSS -->
  <link rel="stylesheet" href="css/all.css">
  <!-- flaticon CSS -->
  <link rel="stylesheet" href="css/flaticon.css">
  <!-- magnific popup CSS -->
  <link rel="stylesheet" href="css/magnific-popup.css">
  <!-- nice select CSS -->
  <link rel="stylesheet" href="css/nice-select.css">
  <!-- swiper CSS -->
  <link rel="stylesheet" href="css/slick.css">
  <!-- style CSS -->
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
  <!--::header part start::-->
  <header class="main_menu home_menu">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-12">
          <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="index.html"> <img src="img/favicon.png" alt="logo"> </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="ti-menu"></span>
            </button>

            <div class="collapse navbar-collapse main-menu-item justify-content-end" id="navbarSupportedContent">
              <ul class="navbar-nav align-items-center">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                               
                                <li class="nav-item">
                                    <a class="nav-link" href="UserSignUp.jsp">User</a>
                                </li>
                                <li class="d-none d-lg-block">
                                    <a class="btn_2" href="AnalyzerLogin.jsp">Analyzer</a>
                                </li>
                            </ul>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- Header part end-->

  <!-- breadcrumb start-->
  <section class="breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="breadcrumb_iner">
            <div class="breadcrumb_iner_item text-center">
              <h2>User</h2>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- breadcrumb start-->

  <!-- ================ contact section start ================= -->
  <section class="contact-section section_padding">
    <div class="container">

      <div class="row">
        <div class="col-12">
          <h2 class="contact-title">User Sign Up</h2>
           <a href="UserLogin.jsp">Registered Already?</a>
          <br>
          <br>
        </div>
        <div class="col-lg-8">
          <form class="form-contact contact_form" action="UserRegistrationServlet" method="post">
            <div class="row">
             
             <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="username" id="name" type="text" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter User Name'" placeholder='Enter User Name' required = "required">
                </div>
              </div>
              
              <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="emailid" id="email" type="email" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter Email Address'" placeholder='Enter Email Address' required = "required">
                </div>
              </div>
             
              <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="phoneno" id="name" type="text" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter Your Phone No'" placeholder='Enter Your Phone No' required = "required">
                </div>
              </div>
              
               <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="password" id="name" type="password" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter Your Password'" placeholder='Enter Your Password' required = "required">
                </div>
              </div>
             
              <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="confirmpassword" id="name" type="password" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Confirm Your Password'" placeholder='Confirm Your Password' required = "required">
                </div>
              </div>
              
               
             
              
            </div>
            <div class="form-group mt-3">
              <button type="submit" class="btn_3">Sign Up <i
                  class="flaticon-right-arrow"></i> </button>
            </div>
          </form>
        </div>
       
      </div>
    </div>
  </section>
  <!-- ================ contact section end ================= -->
  
  
  

  

  <!-- jquery plugins here-->

  <script src="js/jquery-1.12.1.min.js"></script>
  <!-- popper js -->
  <script src="js/popper.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.min.js"></script>
  <!-- easing js -->
  <script src="js/jquery.magnific-popup.js"></script>
  <!-- swiper js -->
  <script src="js/swiper.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/jquery.smooth-scroll.min.js"></script>
  <!-- swiper js -->
  <script src="js/masonry.pkgd.js"></script>
  <!-- particles js -->
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.nice-select.min.js"></script>
  <!-- swiper js -->
  <script src="js/slick.min.js"></script>
  <script src="js/jquery.counterup.min.js"></script>
  <script src="js/waypoints.min.js"></script>
  <script src="js/countdown.jquery.min.js"></script>
  <!-- contact js -->
  <script src="js/jquery.ajaxchimp.min.js"></script>
  <script src="js/jquery.form.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/mail-script.js"></script>
  <script src="js/contact.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
</body>

</html>