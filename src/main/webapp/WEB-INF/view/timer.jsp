<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title> Bikes for me</title>
	<script type="text/javascript"></script>
	<link rel="stylesheet" href="css/data.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.3/jspdf.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      
	<script>
	
var active=false;
var selectedLocation;
var pdfdoc = new jsPDF();

pdfdoc.rect(60,10,105,100,'S');
//pdfdoc.addImage(img.onload(), 'JPEG', 85, 10, 42, 42, 'logo');
pdfdoc.setFontSize(25);
pdfdoc.text(105, 20, 'Receipt','center');
pdfdoc.line(60,25,165,25,'F');
var specialElementHandlers = {

'#not_print': function (element, renderer) {

return true;

}

};
//main function
function start_timer()
{
	if(active)
	{
		var timer =document.getElementById("my_timer").innerHTML;
		var arr = timer.split(":");
		var hour = arr[0]; 
		var min = arr[1]; 
		var sec = arr[2]; 
		
		if(sec == 59)
		{
			if(min == 59)
			{
				hour++;
				min=0;
				if(hour<10) hour="0" + hour;
			}

			else
			{
				min++;
			}

			if(min<10) min="0" + min;
			sec=0;
		}	

		else
		{
			sec++;
			if(sec<10) sec="0" + sec;
		}	

		document.getElementById("my_timer").innerHTML=hour+":" + min+ ":"+ sec;
		setTimeout(start_timer,1000);
	}

}


function changeState()
{
	if(active == false)
	{
		active=true;
		start_timer();
	}
	else
	{
		active=false;
	}
}


function end_trip(){

//var v="hello";

//document.getElementById('message').innerHTML = v;



var dlocations=["NAB", "library", "Meera", "CVR", "RanaPratap", "Malaviya", "SR" ,"Ram" ,"Budh","Bhagirath","Shankar","Vyas","Vishwakarma"];
$("#modal-body-id").empty();

 var $newdiv1 = $("<div class='select-location'> </div>");
 var $newdiv2 = $("<div class='select-location_1'> </div>");
 $newdiv2.append("<div class='select-message'> Please Select Drop Location </div>");

 var $selectdiv= $("<div class='drop'> </div>");
 var $options= $("<select class='location'></select>");
 for(var i=0; i<dlocations.length; i++){
 	var string1="<option value="+ dlocations[i] +">"+ dlocations[i]+ "</option>" 
 	$options.append(string1);
 }
  
  $selectdiv.append($options);
  $newdiv2.append($selectdiv);
  $newdiv1.append($newdiv2);
  var $cycle=$("<div class='fa fa-bicycle fa-5x cycle_logo'></div>");
   $newdiv1.append("<br><br><br>")
  $newdiv1.append($cycle);
// $newdiv1.append("<div class='drop'><select class='location'><option value='volvo'>Volvo</option><option value='saab'>Saab</option><option value='mercedes'>Mercedes</option><option value='audi'>Audi</option></select> </div><div id='receipt_contents'></div>");
$("#modal-body-id").append($newdiv1);

$("select.location").change(function(){
	     active=false;
	     var hour,minute,seconds;
var message=" ";
var times=$('#my_timer')[0].textContent.split(":");
console.error(times);
    if(times[0] ==="00"){
       hour=0;
    }else{
    	message+= " "+times[0]+" hours "
    }

    if(times[1]==="00"){
        minutes=0;
    }
    else{
    	message+="  "+times[1]+" Minutes and "
    }
    if(times[2]==="00"){
    	seconds=0;
    }
    else{
    	message+="  "+times[2]+" Seconds "
    }
	     document.getElementById("my_timer").innerHTML="00" + ":" + "00" + ":" + "00";
         selectedLocation = $(this).children("option:selected").html();
        console.error("You have selected the Drop Location - " +selectedLocation);
        $('.select-location').empty();
        $('.print_option').show();
        var $duration=$("<div class='receipt_location_1 fa fa-clock-o'> </div>");
        $duration.html(" Duration of Trip:    "+ message +"");
        $("#modal-body-id").append($duration);
        var $lo_tion=$("<div class='receipt_location fa fa-map-pin fa-2x'> </div>");
        $lo_tion.html(" Drop Location:  "+ selectedLocation +"");
        $("#modal-body-id").append($lo_tion);
        var $fare=$("<div class='receipt_location fa fa-money'> </div>");
        $fare.html(" Total Fare:   50RS");
        $("#modal-body-id").append($fare);
         
        //window.location.replace("trip?loc="+selectedLocation);
         $('#print_pdf').click(function(){
            /* pdfdoc.fromHTML($('#modal-body-id').html(),70, 25, {
             'width': 110,
             'elementHandlers': specialElementHandlers
             });*/
             pdfdoc.setFontSize(11);
             pdfdoc.text(75, 35, $duration.html());
             pdfdoc.text(75, 43, $lo_tion.html());
             pdfdoc.text(75, 51,  $fare.html());
          pdfdoc.save('Receipt.pdf');
         })



    });
    
    //window.location.replace("trip?loc="+selectedLocation);

}

function sel_new()
{
	var cv ="hellostr";
	var myvar = '${cycleid1}';
	window.location.replace("home?id="+myvar+"&location="+selectedLocation);
}


</script>
<%
        	String str = "<script>document.writeln(v);</script>";
        	System.out.println("String value = "+str);
 %>
</head>
<body id="container" onload="changeState()">

 <div  class="wrapper" > 
		<div class="content">
		<div class="clockcontainer">
<div class="clock">
	<p><span id="my_timer" >00:00:00</span></p>
</div>
<div class="clock buttons">
<button id="end" data-toggle="modal" data-target="#myModal" onclick="end_trip();">END TRIP</button>
	</div> 
</div>
</div>
</div> 


<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" id="print_dialog">
      <div class="modal-content">
        <div class="modal-header" id="print_header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <div class="logo"><img  src="images/logo.png" alt="Logo" height="42" width="42"></div>
          <h4 class="modal-title">Receipt</h4>
        </div>
        <div class="modal-body" id="modal-body-id">
               
        </div>
        <div class="modal-footer" id="not_print">
        <p id='message'></p>
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="sel_new();">Close</button>
          <button type="button" id="print_pdf"class="btn btn-default print_option" style="display: none;">Print</button>
        </div>
      </div>
    </div>
  </div>
</body>
</html>