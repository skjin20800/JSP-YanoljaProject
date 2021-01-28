
window.onload=function(){
     $("#section__hash1").focus();
     };

 $(function () {

var today = new Date();

var yyyy = today.getFullYear();
var mm = today.getMonth()+1;
var dd = today.getDate();


if(dd<10) {
    dd='0'+dd
} 
if(mm<10) {
    mm='0'+mm
} 
var todayTime = mm+'/' + dd+'/'+yyyy;

     $('#datetimepicker7').datetimepicker({
             format: 'L',
defaultDate: todayTime,
         });


     $('#datetimepicker8').datetimepicker({
             format: 'L',
defaultDate: todayTime,
             
         useCurrent: false
         
     });
     
     $("#datetimepicker7").on("change.datetimepicker", function (e) {
         $('#datetimepicker8').datetimepicker('minDate', e.date);
     });
     $("#datetimepicker8").on("change.datetimepicker", function (e) {
         $('#datetimepicker7').datetimepicker('maxDate', e.date);
     });
 });

 addDiv();
 
 function addDiv(){
      var cardGrid = $(".card__grid")[0];
    
      for(var i = 0; i<arr.length; i++){

		var id = arr[i].id;
        var motelName = arr[i].motelName;
		var motelPic = arr[i].motelPic;
		var motelInfo = arr[i].motelInfo;
		var address = arr[i].address;
		var roomPrice = arr[i].roomPrice;
		var lodgmentPrice = arr[i].lodgmentPrice;
		var star = arr[i].star;     

        var newDiv = document.createElement("div");
        newDiv.id = "motelList-"+id;

        
        
		var cardDetail = `<button class="btn__card btn-default" type ="submit" onclick="motel(${id})">`;
        cardDetail += `<div class="card">`;
		cardDetail += `<img class="card-img-top" src="${motelPic}" alt="Card image"/>`;
		cardDetail += `<div class="card-body">`;
		cardDetail += `<p class="card__title">${motelName}</p>`;
		cardDetail += `<p class="card__text"> ⭐<strong>${star}</strong>/5</p>`;
		cardDetail += `<div class="card__sale">`;
		cardDetail += `<div class="card__sale__1">선착순</div>`;
		cardDetail += `<div class="card__sale__2">10%할인</div>`;
		cardDetail += `</div>`;
		cardDetail += `<p class="card__text"> ${motelInfo}</p>`;
		cardDetail += `<div class="card__empty"></div>`;
		cardDetail += `<div class="card__room ">대실 <div><strong>${roomPrice}</strong>원</div></div>`;
		cardDetail += `<div class="card__lodgment ">숙박 <div><strong>${lodgmentPrice}</strong>원</div></div>`;
		cardDetail += `</div></div></button>`;
        newDiv.innerHTML = cardDetail;
        // http://113.198.238.82:8000/api/movie/1 삭제  

         cardGrid.append(newDiv);


        
      }
    }

        

 

 