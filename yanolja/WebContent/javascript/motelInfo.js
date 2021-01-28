addDiv1();
addDiv2();






 $(function () {
     $('#datetimepicker7A').datetimepicker({
             format: 'L',    
			defaultDate: checkIn
         });
     $('#datetimepicker8A').datetimepicker({
             format: 'L',
defaultDate: checkOut,
         useCurrent: false
     });

     $("#datetimepicker7A").on("change.datetimepicker", function (e) {
         $('#datetimepicker8A').datetimepicker('minDate', e.date);
     });

     $("#datetimepicker8A").on("change.datetimepicker", function (e) {
         $('#datetimepicker7A').datetimepicker('maxDate', e.date);
     });

 });


 function addDiv1(){
var cardGrid = $(".carousel-inner")[0];


		var motelInfoPic1 = arrPic[0].motelInfoPic;
        var newDiv1 = document.createElement("div");
        newDiv1.className ="carousel-item active";

		var cardDetail = `<img src="${motelInfoPic1}">`;
        newDiv1.innerHTML = cardDetail;
        cardGrid.append(newDiv1);       

      for(var i = 1; i<arrPic.length; i++){
		var motelInfoPic = arrPic[i].motelInfoPic;
        var newDiv = document.createElement("div");
        newDiv.className ="carousel-item";

		var cardDetail = `<img src="${motelInfoPic}">`;
        newDiv.innerHTML = cardDetail;
         cardGrid.append(newDiv);       
      }


    }


 function addDiv2(){
      var cardGrid = $(".card__grid")[0];
    
      for(var i = 0; i<arr.length; i++){

		var roomPic = arr[i].roomPic;
        var roomType = arr[i].roomType;
		var roomPrice = arr[i].roomPrice;
		var lodgmentPrice = arr[i].lodgmentPrice;

        var newDiv = document.createElement("div");
        

		var cardDetail = `<div class="card card__body">`;
        cardDetail += `<button class="btn__card btn-default" type ="submit" onclick="">`;
		cardDetail += `<div class="card__position ">`;
		cardDetail += `<img class="card-img-top" src="${roomPic}" alt="Card image">`;
		cardDetail += `<div class="card-body card__body2">`;
		cardDetail += `<h4 class="card-title card__text">${roomType}</h4>`;
		cardDetail += `<p class="card-text card__text"></p>`;
		cardDetail += `<div class="room__kinds">대실</div>`;
		cardDetail += `<div class="room__price">판매가</div>`;
		cardDetail += `<div class="room__won"><strong>${roomPrice}</strong>원</div>`;
		cardDetail += `<div class="room__kinds">숙박</div>`;
		cardDetail += `<div class="room__price">판매가</div>`;
		cardDetail += `<div class="room__won"><strong>${lodgmentPrice}</strong>원</div>`;
		cardDetail += `</div></div></button></div>`;
        newDiv.innerHTML = cardDetail;


         cardGrid.append(newDiv);


        
      }
    }
