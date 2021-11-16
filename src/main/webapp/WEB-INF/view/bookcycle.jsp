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
            color: #696969;
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
  
  
  .content{
            bottom: 0;
            color:#f1f1f1;
            min-width: 90%;
            min-height: 100%;
            display: flex;
            align-items: center;

            }
            #container{
                background-color:   #bdc3c7  ;
            }
            .clock{
                margin: auto;
                width: 550px;

            }
            .buttons{
                padding-left: 33%;
                margin: auto;
                width: 550px;
            }
            #my_timer{
                color: #515A5A; 
                font-size: 300%; 
                font-weight: bold;
                font-family: digital, arial, verdana; 
                border:2px solid #201e1e !important;
                border-radius: 16px;
                padding-bottom: 50px;
                padding-left: 50px;
                padding-right: 50px;
                padding-bottom: 100px;
                padding-top: 50px;
            }
            .clockcontainer{
                margin: auto;
                width: 950px;
                padding-top: 12%;
                padding-right: 10%;
            }

            #end{
                width: 150px;
                height: 80px;
                padding-left: 10px;
                border-radius: 5px;
                margin-right: 450px;
                transition: all 0.4s ease 0s;
                color: #fff !important;
                text-decoration: none;
                background:  #ed3330 ;
                display: inline-block;
                border: none;
                transition: all 0.4s ease 0s;
                cursor: pointer;
            }   
             #end:hover {
            color: #fff !important;
            font-weight: 700 !important;
            letter-spacing: 1px;
            background: #404040;
            -webkit-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
            -moz-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
            transition: all 0.3s ease 0s;
            }

            #dialog{
                display: none;
            }
            #modal-body-id{
                height: 80px;
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
  
  .otpgen
        {
            position: absolute;
            top:50%;
            left: 30%;
            width: 200px;
            height:200px;
            padding: 0px 40px;
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
            width: 350px;
            height: 400px;
            padding: 80px 40px;
            box-sizing: border-box;
            background: rgba(0,0,0,0.8);
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
        
        .bck
        {
        	color: #515A5A; 
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
         <li><a href="home?id=0&location=1">HOME</a></li>
        <li><a href="login">LOGOUT</a></li>
        <li><a href="#">CONTACT</a></li>
      </ul>
    </div>
  </div>
</nav>

	<c:choose>
		<c:when test="${mode=='MODE_SELECTCYCLE' }">
			<div class="container text-center" id="tasksDiv">
				<h3>Cycles Available</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead class="thead-dark">
						    <tr>
						      <th scope="col">Cycle Id</th>
						      <th scope="col">Name</th>
						      <th scope="col">Brand</th>
						      <th scope="col">Type</th>
						      <th scope="col">Link1</th>
						    </tr>
						  </thead>
						<tbody>
							<c:forEach var="cycle" items="${cycles }">
								<tr>
									<td>${cycle.id}</td>
									<td>${cycle.name}</td>
									<td>${cycle.brand}</td>
									<td>${cycle.type}</td>
									<td><a href="/genotp?id=${cycle.id }"><span
											class="glyphicon glyphicon-ok-sign"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</c:when>
			
			<c:when test="${mode=='MODE_VIEWCYCLES' }">
			<div class="container text-center" id="tasksDiv">
				<h3>Cycles List</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead class="thead-dark">
						    <tr>
						      <th scope="col">Cycle Id</th>
						      <th scope="col">Cycle Name</th>
						      <th scope="col">Cycle Brand</th>
						      <th scope="col">Cycle type</th>
						      <th scope="col">In Bhawan</th>
						      <th scope="col">InCondition</th>
						      <th scope="col">InUse</th>
						      <th scope="col">ViewComplaints</th>
						    </tr>
						  </thead>
						<tbody>
							<c:forEach var="cycle" items="${allCycles }">
								<tr>
									<td>${cycle.id}</td>
									<td>${cycle.name}</td>
									<td>${cycle.brand}</td>
									<td>${cycle.type}</td>
									<td>${cycle.inBhavan}</td>
									<td>${cycle.inCondition}</td>
									<td>${cycle.inUse}</td>
									<td><a href="/viewComplaints?id=${cycle.id }"><span
											class="glyphicon glyphicon-ok-sign"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</c:when>
			<c:when test="${mode=='MODE_GETOTP' }">
			<div style="background-image: url('images/cycle3.jpg');">
			<div class="contact-form" >
			<h2>Your Cycle Id is ${cycleid}!</h2>
			<p id="demo"></p>
			    <FORM NAME="form1" METHOD="POST">
			        <INPUT TYPE="HIDDEN" NAME="buttonName">
			        <INPUT TYPE="BUTTON" id="end" data-toggle="modal" data-target="#myModal" VALUE="Generate OTP" ONCLICK="generateOTP();">
			    </FORM>
			<p id="showtime">Time left</p>
			
			<div style="display: none;" id="startform">
		    <FORM NAME="form2" METHOD="POST">
		        <INPUT TYPE="HIDDEN" NAME="buttonName">
		        <INPUT TYPE="BUTTON" id="end" data-toggle="modal" data-target="#myModal" VALUE="Start" ONCLICK="window.location.href = 'trip?id=${cycleid }'">
		    </FORM>
		    </div>
		    </div>
		    </div>
		     </c:when>

	</c:choose>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script>
    function generateOTP()
    {

        var digits = '0123456789';

        var otpLength = 4;

        var otp = '';

        for(let i=1; i<=otpLength; i++)

        {

            var index = Math.floor(Math.random()*(digits.length));

            otp = otp + digits[index];

        }
        alert("The generated otp is"+otp);  
        document.getElementById("demo").innerHTML=otp;
        Timer();
        //return otp;

    }
    var tim;      
    var min = 5;
    var sec = 0;
    var f = new Date();
    //var random=Math.floor(Math.random() * Math.floor(5));
	var random = 4;
    function Timer() {
   
    	
        if (parseInt(sec) >0) {

   document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minutes ," + sec+" Seconds";
            sec = parseInt(sec) - 1;                
            tim = setTimeout("Timer()", 1000);
        }
        else {

   if (parseInt(min)==0 && parseInt(sec)==0){
    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minutes ," + sec+" Seconds";
    alert("Time Up");
    document.getElementById("showtime").innerHTML="Generate new OTP!";

    }

            if (parseInt(sec) == 0) {
   document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minutes ," + sec+" Seconds";
                if(min>0)
                {
                min = parseInt(min) - 1;
    sec=59;
                    tim = setTimeout("Timer()", 1000);
                }
   
            }
            if(parseInt(min)==parseInt(random))
            {
            document.getElementById("showtime").innerHTML ="OTP verified. Proceed to start ride!";
            toggle();
            clearTimeout(tim);
            }

        }
        function toggle() {
         var x = document.getElementById("startform");
         if (x.style.display === "none") {
           x.style.display = "block";
         } else {
           x.style.display = "none";
         }
        }
        function startride()
        {
        alert("ride started!");
        }
    }
    </script>
</body>
</html>