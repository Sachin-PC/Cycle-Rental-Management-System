<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ride On</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  
  
  <script>
  $(document).ready(function(){
    // Add smooth scrolling to all links in navbar + footer link
    $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
      // Make sure this.hash has a value before overriding default behavior
      if (this.hash !== "") {
        // Prevent default anchor click behavior
        event.preventDefault();

        // Store hash
        var hash = this.hash;

        // Using jQuery's animate() method to add smooth page scroll
        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
        $('html, body').animate({
          scrollTop: $(hash).offset().top
        }, 900, function(){

          // Add hash (#) to URL when done scrolling (default click behavior)
          window.location.hash = hash;
        });
      } // End if
    });

    $(window).scroll(function() {
      $(".slideanim").each(function(){
        var pos = $(this).offset().top;

        var winTop = $(window).scrollTop();
          if (pos < winTop + 600) {
            $(this).addClass("slide");
          }
      });
    });
  })
</script>

    <style>
        body{
            margin: 0;
            padding: 0;
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }
        body:before{
            content: '';
            position: fixed;
            width: 100vw;
            height: 100vh;
            background-image: url("images/4.jpeg");
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            -webkit-filter: blur(10px);
            -moz-filter: blur(10px);
            -o-filter: blur(10px);
            -ms-filter: blur(10px);
            filter: blur(10px);
        }

        
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #40150B;
      font-weight: 400;
      margin-bottom: 30px;
  }
  .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #ff3333;
      font-size: 50px;
  }
  .logo {<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
      color: #ff3333;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }

.item img{
    width: 1200px;
    height: 900px;
}
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #f4511e;
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #f4511e !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color:#b30000;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    }
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    }
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }


        /*--------------------------------- */
        .contact-form
        {
            position: absolute;
            top: 55%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 450px;
            height: 750px;
            padding: 80px 40px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
        }
        .avatar {
            position: absolute;
            width: 80px;
            height: 80px;
            border-radius: 50%;
            overflow: hidden;
            top: calc(-80px/2);
            left: calc(50% - 40px);
        }
        .contact-form h2 {
            margin: 0;
            padding: 0 0 20px;
            color: #fff;
            text-align: center;
            text-transform: uppercase;
        }
        .contact-form p
        {
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: #fff;
        }
        .contact-form input
        {
            width: 100%;
            margin-bottom: 20px;
        }
        .contact-form input[type="text"],
        .contact-form input[type="password"]
        {
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
        }
        .contact-form input[type="submit"] {
            height: 30px;
            color: #fff;
            font-size: 15px;
            background: red;
            cursor: pointer;
            border-radius: 25px;
            border: none;
            outline: none;
            margin-top: 15%;
        }
        .contact-form a
        {
            color: #fff;
            font-size: 14px;
            font-weight: bold;
            text-decoration: none;
        }
        input[type="checkbox"] {
            width: 20%;
        }
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="glyphicon glyphicon-align-justify"></span>

      </button>
      <a class="navbar-brand"><span class="glyphicon glyphicon-fire"></span> Cycle Rental</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
         <li><a href="/">HOME</a></li>
        <li><a href="Registration">REGISTER</a></li>
        <li><a href="login">LOGIN</a></li>
        <li><a href="adminlogin">ADMIN LOGIN</a></li>
        <li><a href="#">CONTACT</a></li>
      </ul>
    </div>
  </div>
</nav>

	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="container">
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                  <img class="img-responsive" src="/images/cycle1.jpg" alt="Chania" width="460" height="345"> 
              </div>
              <div class="item">
                <img class="img-responsive" src="/images/cycle2.jpg" alt="Chania" width="460" height="345"> 
              </div>
              <div class="item">
                <img class="img-responsive" src="/images/cycle3.jpg" alt="Chania" width="460" height="345"> 
              </div>
            </div>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

        <!-- Container (About Section) -->
        <div class="container">
        <div id="about" class="container-fluid">
          <div class="row">
            <div class="col-sm-8">
              <h2>About RideOn</h2><br>
              <p>BITS Pilani Campus is huge in area and students are not allowed to use motor vehicles, several students face the problem in roaming within the campus like going to library,classes,connaught,etc but many people don't prefer to purchase and maintain a cycle.  So the problem that we wish to handle is developing an application where students can rent cycles with minimal cost and without any hassle.
        </p>
            </div>
            <div class="col-sm-4">
              <span class="glyphicon glyphicon-signal logo"></span>
            </div>
          </div>
        </div>
        </div>

        <!-- Container (Portfolio Section) -->
        <div id="portfolio" class="container-fluid text-center bg-grey">

          <h2>What our customers say</h2>
          <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <h4>"Easy mode of transport to classes"<br><span style="font-style:normal;">Kavan, 2nd Year, ME, Mechanical</span></h4>
              </div>
              <div class="item">
                <h4>Very usefull, when some important work should be done and a means of transport is needed within the campus<br><span style="font-style:normal;">Amulya, 4th Year, BE, Chemical</span></h4>
              </div>
              <div class="item">
                <h4>"Bicycles are well maintained and are easy to use"<br><span style="font-style:normal;">Chirag, 2nd Year, ME, Computer Science</span></h4>
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>


        <!-- Container (Contact Section) -->
        <div id="contact" class="container-fluid bg-grey">
          <h2 class="text-center">CONTACT</h2>
          <div class="row">
            <div class="col-sm-5">
              <p>Contact us and we'll get back to you within 24 hours.</p>
              <p><span class="glyphicon glyphicon-map-marker"></span> BITS PILANI, Pilani</p>
              <p><span class="glyphicon glyphicon-phone"></span> +91 7894561230</p>
              <p><span class="glyphicon glyphicon-envelope"></span> h20180125@pilani.bits-pilani.ac.in</p>
            </div>
            <div class="col-sm-7 slideanim">
              <div class="row">
                <div class="col-sm-6 form-group">
                  <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>
                <div class="col-sm-6 form-group">
                  <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>
              </div>
              <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
              <div class="row">
                <div class="col-sm-12 form-group">
                  <button class="btn btn-default pull-right" type="submit">Send</button>
                </div>
              </div>
            </div>
          </div>
        </div>

				</div>
			</div>

		</c:when>



	<c:when test="${mode=='MODE_REGISTER' }">
    <div class="contact-form">
        <img src="images/2.jpg" class="avatar">
        <h2>Registration</h2>
        <form method="POST" action="/Registration">
            
            <input type="hidden" name="id" value="${user.id }" />
            <p>Student Id</p>
            <input type="text" placeholder="User Id" name="studentId" value="${user.studentId }" >
            
            <p>Name</p>
            <input type="text" placeholder="User Name" name="name" value="${user.name}">
            
            <p>Email Address</p>
            <input type="text" placeholder="Email Address" name="emailAddress" value="${user.emailAddress}">
            
            <p>Mobile Number</p>
            <input type="text" placeholder="Mobile Number" name="mobileNumber" value="${user.mobileNumber}">
            
            <p>Location</p>
	            <select name="hostel" id="slct">
				  <option value="Meera">Meera</option>
				  <option value="CVR">CVR</option>
				  <option value="RanaPratap">RanaPratap</option>
				  <option value="Malaviya">Malaviya</option>
				  <option value="SR">SR</option>
				  <option value="Ram">Ram</option>
				  <option value="Budh">Budh</option>
				  <option value="Bhagirath">Bhagirath</option>
				  <option value="Shankar">Shankar</option>
				  <option value="Vyas">Vyas</option>
				  <option value="Vishwakarma">Vishwakarma</option>
				</select>

            <p>Password</p>
            <input type="password" placeholder="Password" name = "password" value="${user.password}">
            
            <input type="submit" name="Register" value="Register">
            
        </form>
    </div>
    </c:when>


    <c:when test="${mode=='MODE_LOGIN' }">
    <div class="contact-form">
        <img src="images/2.jpg" class="avatar">
        <h2>Login</h2>
        <form method="POST" action="/home">
            <c:if test="${not empty error }">
            	<div class="alert alert-danger">
            		<c:out value="${error }"></c:out>
            	</div>
            </c:if>
            <p>Student Id</p>
            <input type="text" placeholder="Student Id" name="studentId" value="${user.studentId }" >

            <p>Password</p>
            <input type="password" placeholder="Enter Password" name = "password" value="${user.password}">
            
            <input type="submit" name="Login" value="Login">

            <p><input type="checkbox">Remember Me</p>
            
        </form>
    </div>
    </c:when>

</c:choose>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>