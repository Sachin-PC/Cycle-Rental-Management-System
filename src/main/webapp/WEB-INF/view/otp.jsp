<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
   <style>
        body{
            margin: 0;
            padding: 0;
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
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

     
        </style>
</head>
<body>
<p id="demo"></p>

    <FORM NAME="form1" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="buttonName">
        <INPUT TYPE="BUTTON" id="end" data-toggle="modal" data-target="#myModal" VALUE="Generate" ONCLICK="generateOTP();">
    </FORM>
<p id="showtime">Time left</p>

 </c:when>

</c:choose>
    <SCRIPT >
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
    document.getElementById("showtime").innerHTML="Generate new otp!";

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
            document.getElementById("showtime").innerHTML ="otp verified. Proceed to start ride!";
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
    </SCRIPT>
   <div style="display: none;" id="startform">
    <FORM NAME="form2" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="buttonName">
        <INPUT TYPE="BUTTON" id="end" data-toggle="modal" data-target="#myModal" VALUE="Start" ONCLICK="startride();">
    </FORM>
    </div>
</body>
</html>