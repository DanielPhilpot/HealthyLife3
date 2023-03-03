var request;
var scheduleType;

function requestDetails(schedule) {
	scheduleType = schedule;
    request = new XMLHttpRequest();
    request.open("POST", "ScheduleDetails", true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("schedule=" + schedule);
        
    request.onreadystatechange = function(){
        processResponse();
    };  
    
    
//alert("Request Details is not yet implemented");

}


function processResponse() {
    if (request.readyState == 4 && request.status == 200) {
		alert(scheduleType);

		if(scheduleType == "Food"){
			document.getElementById("display").style.visibility = "visible";
  					
		} else{
			alert("Mother");
		}
        
       
    
    }
}