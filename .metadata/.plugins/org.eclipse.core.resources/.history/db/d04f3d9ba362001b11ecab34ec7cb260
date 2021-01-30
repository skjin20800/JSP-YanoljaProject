window.onload=function(){
	var checkin_1 = checkin;
	var checkout_1 = checkout;

	var checkinSplit1 = checkin_1.split(' ');
	var checkinSplit2 = checkinSplit1[0].split('-');
	var checkinSplit3 = checkinSplit1[1].split(':');
	
	var inyyyy = checkinSplit2[0];
	var inmm = checkinSplit2[1];
	var indd = checkinSplit2[2];
	
	var inhh = checkinSplit3[0];
	var inminute = checkinSplit3[1];
	
	
	var checkoutSplit1 = checkout_1.split(' ');
	var checkoutSplit2 = checkoutSplit1[0].split('-');
	var checkoutSplit3 = checkoutSplit1[1].split(':');
	
	var outyyyy = checkoutSplit2[0];
	var outmm = checkoutSplit2[1];
	var outdd = checkoutSplit2[2];
	
	var outhh = checkoutSplit3[0];
	var outminute = checkoutSplit3[1];
	
	
	  
	 document.getElementById("checkin_input").value = `${inyyyy}-${inmm}-${indd} ${inhh}:${inminute} 입실`;
document.getElementById("checkin_output").value = `${outyyyy}-${outmm}-${outdd} ${outhh}:${outminute} 퇴실`; 
	
    }