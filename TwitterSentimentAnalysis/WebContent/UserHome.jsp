<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql. *" %>
<%@page import="com.DBConnections.DatabaseConnections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>User Home Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    
    
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/userstyle.css">
  </head>
  
  <style>

#btn-input {
    border-radius: 25px;
    border: 2px solid #ffbd39;
    padding: 20px; 
    width: 230px;
    height: 15px;    
}

.col-md-2, .col-md-10{
    padding:0;
}
.panel{
    margin-bottom: 0px;
}
.chat-window{
    bottom:0;
	right:0;
    position:fixed;
    float:right;

}
.chat-window > div > .panel{
    border-radius: 5px 5px 0 0;
}
.icon_minim{
    padding:2px 10px;
}
.msg_container_base{
  background: black;
  margin: 0;
  padding: 0 10px 10px;
  max-height:300px;
  overflow-x:hidden;
}
.top-bar {
  background: black;
  color: white;
  padding: 10px;
  position: relative;
  overflow: hidden;
}
.msg_receive{
    padding-left:0;
    margin-left:0;
}
.msg_sent{
    padding-bottom:20px !important;
    margin-right:0;
}
.messages {
  background: white;
  padding: 10px;
  border-radius: 2px;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  max-width:100%;
}
.messages > p {
    font-size: 13px;
    margin: 0 0 0.2rem 0;
  }
.messages > time {
    font-size: 11px;
    color: #ccc;
}
.msg_container {
    padding: 10px;
    overflow: hidden;
    display: flex;
}
.chatimg {
    display: block;
    width: 100%;
}
.avatar {
    position: relative;
}
.base_receive > .avatar:after {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    width: 0;
    height: 0;
    border: 5px solid #ffbd39;
    border-left-color: rgba(0, 0, 0, 0);
    border-bottom-color: rgba(0, 0, 0, 0);
}

.base_sent {
  justify-content: flex-end;
  align-items: flex-end;
}
.base_sent > .avatar:after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 0;
    border: 5px solid #ffbd39;
    border-right-color: black;
    border-top-color:  black;
    box-shadow: 1px 1px 2px rgba(black, 0.2); // not quite perfect but close
}

.msg_sent > time{
    float: right;
}



.msg_container_base::-webkit-scrollbar-track
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    background-color: black;
}

.msg_container_base::-webkit-scrollbar
{
    width: 12px;
    background-color: black;
}

.msg_container_base::-webkit-scrollbar-thumb
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
    background-color: black;
}

.btn-group.dropup{
    position:fixed;
    left:0px;
    bottom:0;
}

.panel-footer {
    padding: 10px 15px;
    background-color: #ffbd39;
    border-top: 1px solid #ddd;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;

</style>

  
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
<%			
			HttpSession session1=request.getSession();
			String emailid = (String) session1.getAttribute("emailid");
			String username_view ="";
			String emailid_view  ="";
			String emailid_view1  ="";
			String phoneno_view = "";
			String photoname_view = "";
			
			Connection con = DatabaseConnections.createConnection();
			Statement ps=con.createStatement();
			String sql = "SELECT * FROM `sentidiff`.`userregistration`";
			ResultSet rs=ps.executeQuery(sql);
			
			while(rs.next())
			{
				emailid_view = rs.getString(2);
				if(emailid_view.equals(emailid))
				{
				username_view = rs.getString(1);
				emailid_view1 = rs.getString(2);
				phoneno_view = rs.getString(3);
				photoname_view = rs.getString(8);
				}
			%>		
 <%}%>				
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">SentiDiff</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	      	  <li class="nav-item"><a href="#home-section" class="nav-link"><span>Home</span></a></li> 
	          <li class="nav-item"><a href="#about-section" class="nav-link"><span>About</span></a></li>
	          <li class="nav-item"><a href="#contact-section" class="nav-link"><span>Tweet</span></a></li>
	          <li class="nav-item"><a href="https://twitter.com/" class="nav-link"><span>My Twitter</span></a></li>
	          <li class="nav-item"><a href="index.html" class="nav-link"><span>Logout</span></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	 
	  <section id="home-section" class="hero">
		  <div class="home-slider  owl-carousel">
	      <div class="slider-item ">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row d-md-flex no-gutters slider-text align-items-end justify-content-end" data-scrollax-parent="true">
	          	<div class="one-third js-fullheight order-md-last img" style="background-image:url(images/bg_1.png);">
	          		<div class="overlay"></div>
	          	</div>
		          <div class="one-forth d-flex  align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text">
		          		<span class="subheading"></span>
			            <h1 class="mb-4 mt-3"><span><%=emailid%></span></h1>
			            <h2 class="mb-4"></h2>
			            <p><a href="#" class="btn btn-primary py-3 px-4">My Tweets</a> <a href="TweetHome.jsp" class="btn btn-white btn-outline-white py-3 px-4">Home</a></p>
		            </div>
		          </div>
	        	</div>
	        </div>
	      </div>

	      
	    </div>
    </section>




<section class="ftco-about img ftco-section ftco-no-pb" id="about-section">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 col-lg-5 d-flex">
    				<div class="img-about img d-flex align-items-stretch">
    					<div class="overlay"></div>
	    				<div class="img d-flex align-self-stretch align-items-center" style="background-image:url(userreg_profile_pics/<%=photoname_view%>);">
	    				</div>
    				</div>
    			</div>
    			 <form action="UserUpdateServlet" method="post"> 
    			<div class="col-md-6 col-lg-7 pl-lg-5 pb-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		          	<h1 class="big">About</h1>
		            <h2 class="mb-4">About Me</h2>
		            <p></p>
		            <ul class="about-info mt-4 px-md-0 px-2">
		            	<li class="d-flex"><span>User Name :</span><span><%=username_view%></span></li>
		            	<li class="d-flex"><span>Email Id :</span> <span><%=emailid%></span></li>
		            	<li class="d-flex"><span>Phone No :</span> <span><%=phoneno_view %></span></li>
		            </ul>
		          </div>
		        </div>
	          <div class="counter-wrap ftco-animate d-flex mt-md-3">
              <div class="text">
              	<p class="mb-4">
	                <span class="number" data-number="120">0</span>
	                <span>Views</span>
                </p>
                
             
            
              
              </div>
	          </div>
	        </div>
	        </form> 
	        
        </div>
    	</div>
    </section>
    <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h1 class="big big-2">Tweet</h1>
            <h2 class="mb-4">Tweet Anything</h2>
            <p>Keep Your Tweet Topic Descent, Understand the Purpose of Creating This Tweet Topic Thread</p>
          </div>
        </div>
        <div class="row no-gutters block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form action="TweetAnythingServlet" class="bg-light p-4 p-md-5 contact-form" method="post">
              <div class="form-group">
                <input type="text" name="emailid" id="emailid" class="form-control" placeholder="<%=emailid_view1%>" value ="<%=emailid_view1%>">
                <script type="text/javascript">
     			document.getElementById("emailid").value;
				</script>
              </div>
              <div class="form-group">
                <input type="text" name="subject" class="form-control" placeholder="Subject" required>
              </div>
              <div class="form-group">
                <textarea name="message" cols="30" rows="7" class="form-control" placeholder="Message" required></textarea>
              </div>
              <div class="form-group">
              <center>
                 <input type="submit" value="Post" class="btn btn-primary py-3 px-5">
                 <input type="reset" value="Reset" class="btn btn-primary py-3 px-5">
              </center>   
              </div>
            </form>
          
          </div>

          <div class="col-md-6 d-flex">
          	<div class="img" style="background-image: url(userreg_profile_pics/<%=photoname_view%>);"></div>
          </div>
        </div>
      </div>
    </section>
  <br>
  <br>
    
        <div class="row">
          <div class="col-md-12 text-center">
          </div>
        </div>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js1/jquery.min.js"></script>
  <script src="js1/jquery-migrate-3.0.1.min.js"></script>
  <script src="js1/popper.min.js"></script>
  <script src="js1/bootstrap.min.js"></script>
  <script src="js1/jquery.easing.1.3.js"></script>
  <script src="js1/jquery.waypoints.min.js"></script>
  <script src="js1/jquery.stellar.min.js"></script>
  <script src="js1/owl.carousel.min.js"></script>
  <script src="js1/jquery.magnific-popup.min.js"></script>
  <script src="js1/aos.js"></script>
  <script src="js1/jquery.animateNumber.min.js"></script>
  <script src="js1/scrollax.min.js"></script>
  
  <script src="js1/main.js"></script>
  
 <div class="container pull-right" id="chatbox">
    <div class="row chat-window col-xs-5 col-md-3 pull-right" id="chat_window_1">
        <div class="col-xs-12 col-md-12">
          <div class="panel panel-default">
                <div class="panel-heading top-bar">
                    <div class="col-md-8 col-xs-8">
               <p style="font-size:20px;color:#ffbd39;"><%=username_view%>    </p>
                    </div>
                    <div class="col-md-4 col-xs-4" style="text-align: right;">
                        <a href="#"><span id="minim_chat_window" class="glyphicon glyphicon-minus icon_minim"></span></a>
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close" data-id="chat_window_1"></span></a>
                    </div>
                </div>
                <div id="messagebody" class="panel-body msg_container_base">
                    <div class="row msg_container base_sent">
                    <!--     <div class="col-md-10 col-xs-10">
                            <div class="messages msg_sent">
                                <p>Hi</p>
                                <time datetime="2009-11-13T20:00">Admininstrator • Yesterday 10:05:22</time>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://cheme.mit.edu/wp-content/uploads/2017/01/stephanopoulosgeorge-431x400.jpg" class="chatimg img-responsive ">
                        </div>
                    </div>
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Rajesh_Gopinathan.jpg/220px-Rajesh_Gopinathan.jpg" class="chatimg img-responsive ">
                        </div>
                        <div class="col-md-10 col-xs-10">
                            <div class="messages msg_receive">
                                <p>Hi sir,</p>
                                <time datetime="2009-11-13T20:00">Rajesh M • Yesterday 10:05:28</time>
                            </div>
                        </div>
                    </div>
     -->
                    </div>

                </div>
                
              
                <div class="panel-footer">
                    <div class="input-group">
                    
                        
                       <input id="btn-input" type="text" placeholder="Write Ur msg here..."></input> &nbsp &nbsp 
                       
                        <span class="input-group-btn">
                         <br>  
                       <button class="btn btn-white btn-outline-white py-3 px-4" id="btn-chat">Send</button>
                        </span>
                    </div>
                </div>
 </form>
        </div>
        </div>

    
    <div class="btn-group dropup">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            <span class="glyphicon glyphicon-cog"></span>
            <span class="sr-only">Toggle Dropdown</span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#" id="new_chat"><span class="glyphicon glyphicon-plus"></span> Novo</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-list"></span> Ver outras</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-remove"></span> Fechar Tudo</a></li>
            <li class="divider"></li>
            <li><a href="#"><span class="glyphicon glyphicon-eye-close"></span> Invisivel</a></li>
        </ul>
    </div>
</div>

<script>
$(document).on('click', '.panel-heading span.icon_minim', function (e) {
    var $this = $(this);
    if (!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('focus', '.panel-footer input.chat_input', function (e) {
    var $this = $(this);
    if ($('#minim_chat_window').hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideDown();
        $('#minim_chat_window').removeClass('panel-collapsed');
        $('#minim_chat_window').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('click', '#new_chat', function (e) {
    var size = $( ".chat-window:last-child" ).css("margin-left");
     size_total = parseInt(size) + 400;
    alert(size_total);
    var clone = $( "#chat_window_1" ).clone().appendTo( ".container" );
    clone.css("margin-left", size_total);
});
$(document).on('click', '.icon_close', function (e) {
    //$(this).parent().parent().parent().parent().remove();
    $( "#chatbox" ).hide();
});

// send function start

function send(){
	var chat = $("#btn-input").val(); 
var dt = new Date();
var time =  dt.getDate() + "-" + dt.getMonth() + "-" + dt.getFullYear() + "  "  + dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();

if (chat =="") {
    alert('Enter Message');
} else
{
var body =                       '<div class="row msg_container base_sent">' +
						'<div class="col-md-10 col-xs-10 ">' +
                            '<div class="messages msg_sent">' +
                                '<p>'+ chat + '</p>'+
                               ' <time datetime="2009-11-13T20:00">Today '+time+'</time>'+
                               
                            '</div>' +
                        '</div>' +
                        '<div class="col-md-2 col-xs-2 avatar">' +
                            '<img class="chatimg" src="userreg_profile_pics/<%=photoname_view%>" class=" img-responsive ">' +
                        '</div>' +
					'</div>';
}
$(body).appendTo("#messagebody");
$('#btn-input').val('');
$("#messagebody").animate({ scrollTop: $("#messagebody")[0].scrollHeight}, 'slow');

}


// send function end




$( "#btn-chat" ).click(function() {
send()
});

$('#btn-input').keypress(function (e) {
  if (e.which == 13) {
    send()
  }
});


</script>
 
 
 
 
  
    
 </body>
</html>