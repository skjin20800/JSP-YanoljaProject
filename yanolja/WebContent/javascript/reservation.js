
 $(function () {
     $('#datetimepicker3').datetimepicker({
         format: 'LT',

         stepping: 60,
    
     });
     
 });


 $(function () {
    $('#datetimepicker4').datetimepicker({
        format: 'LT',
        stepping: 60,
        
    });
    
});
 
window.onload=function(){
	var checkin_1 = checkin;
	var checkout_1 = checkout;


	var checkinSplit = checkin_1.split('/');
	var inyyyy = checkinSplit[2];
	var inmm = checkinSplit[0];
	var indd = checkinSplit[1];

	
	
	var checkoutSplit = checkout_1.split('/');
	var outyyyy = checkinSplit[2];
	var outmm = checkinSplit[0];
	var outdd = checkinSplit[1];
	
	document.getElementById("checkin_input").value = `${inyyyy}.${inmm}.${indd}`;
	document.getElementById("checkout_input").value = `${outyyyy}.${outmm}.${outdd}`;
    }