<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>예약정보보기</title>
	<link rel="stylesheet" href="css/reservationList/reservationList_style.css" />
   <%@ include file="header/header.jsp" %>
	<section>
		<div class="section_main">
			<div class="section_empty">
			</div>
			<div class="section_center ">
				<!--예약 카드 시작-->
				
				<div class="section_reservationCard ">
					<div class="reservationTitle">예약정보</div>
					<div>
						<div class="reservationUser">예약내역</div>
						<div>
							<div class="res__userInfo">
								<div class="res__userTitle">예약자</div>
								<div class="res__username">${data[0][0].username}</div>
							</div>
							<div class="res__userInfo">
								<div class="res__userTitle">예약자 휴대폰</div>
								<div class="res__username">${data[0][0].phone}</div>
							</div>
						</div>

					</div>
					<div>
						<div class="reservationUser mt10">
							모텔정보
						</div>

						<div>
							<div class="res__address">
								<div class="res__motelName">${data[0][0].motelName}</div>
								<div class="res__motelAddress">주소</div>
								<div class="res__AddressInfo">${data[0][0].address}</div>
							</div>
							<div>
								<div class="res__roomInfo">
									<div class="res__side">
										<div class="res__side2">
											<div class="res__text">룸타입</div>
											<div class="res__text">방 호수</div>
										</div>
										<div>
											<div class="res__side2">
												<div class="res__text1">${data[0][0].roomType}</div>
												<div class="res__text1">${data[0][0].roomNumber}</div>
											</div>
										</div>
									</div>
									<div class="res__side">
										<div class="res__side2">
											<div class="res__text">체크인</div>
											<div class="res__text">체크아웃</div>
										</div>
										<div>
											<div class="res__side2">
												<div class="res__text1"> <input type="text" value="적용됫구먼" name="checkin_input" id="checkin_input"  class="check__time"/></div>
												<div class="res__text1"><input type="text" value="적용됫구먼" name="checkin_output" id="checkin_output"  class="check__time"/></div>
											</div>
										</div>
									</div>
									<div class="res__side">
										<div class="res__side2">
											<div class="res__text">대실</div>
											<div class="res__text">숙박</div>
										</div>
										<div>
											<div class="res__side2">
												<div class="res__text1">${data[0][0].roomPrice}</div>
												<div class="res__text1">${data[0][0].lodgmentPrice}</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="button__danger">
						<button type="button" class="btn btn-danger">예약 취소</button></div>
				</div>
				<!--예약 카드 끝-->
				
			</div>
			<div class="section_empty">
			</div>
		</div>
	</section>

<script>

var checkin = "${data[0][0].checkIn}";
var checkout = "${data[0][0].checkOut}";


</script>
<script src="javascript/reservationList.js">
    </script>
</body>

</html>