<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 하기</title>
    <link rel="stylesheet" href="css/reservation/reservation_style.css" />
        <%@ include file="header/header.jsp" %>

    <section>
    <form action="/yanolja/reservationReq" method="post" id="reservationReq" >
        <div class="section__main">
               <input type="hidden" value="${data[0].id}" name="motelId" id="motelId" />
     		   <input type="hidden" value="${sessionScope.session.id}" name="userId" id="userId" />
   		       <input type="hidden" value="${data[1].id}" name="typeListId" id="typeListId" />
            <div></div>
            
            <div class="section__center">
                <div class="section1__main">
                    <div class="motel__title">${data[0].motelName}</div>
                    <div class="motel__subtitle">${data[0].motelInfo}</div>
                    <div class="motel__datecheck">
                        <div class="check__in">
                            <div class="in_1">체크인</div>
                            <div class="in_2"><input class="check"  name="checkin_input"id="checkin_input"  type="text" value="2021.01.26(화) 날짜변수1" ></div>
                            <!-- 타임캘린더-->
                            <div>
                                <div class="row in__size">
                                    <div class="col-sm-12">
                                        <div class="form-group nomargin">
                                            <div class="input-group date" id="datetimepicker3"
                                                data-target-input="nearest">
                                                <input type="text" class="form-control datetimepicker-input" name="checkin_inputT" id="checkin_inputT" 
                                                    data-target="#datetimepicker3" placeholder="체크인 시간 선택"  required/>
                                                <div class="input-group-append" data-target="#datetimepicker3"
                                                    data-toggle="datetimepicker">
                                                    <div class="input-group-text"><i class="fa fa-clock-o">선택</i></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 타임캘린더 끝-->
                        </div>
                        <div class="date__second">→</div>
                        <div class="check__out">
                            <div class="out_1">체크아웃</div>
                            <div class="out_2"><input class="check" name="checkout_input"  id="checkout_input" type="text" value="2021.01.26(화) 날짜변수1" ></div>
                            <!-- 타임캘린더-->
                            <div>
                                <div class="row out__size">
                                    <div class="col-sm-12">
                                        <div class="form-group nomargin">
                                            <div class="input-group date" id="datetimepicker4"
                                                data-target-input="nearest">
                                                <input type="text" class="form-control datetimepicker-input" name="checkout_inputT"  id="checkout_inputT"
                                                    data-target="#datetimepicker4" placeholder="체크아웃 시간 선택" required/>
                                                <div class="input-group-append" data-target="#datetimepicker4"
                                                    data-toggle="datetimepicker">
                                                    <div class="input-group-text"><i class="fa fa-clock-o">선택</i></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 타임캘린더 끝-->
                        </div>
                    </div>
                </div>
                <div class="reservation__info">
                    <div class="res__title">예약정보</div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">예약자 이름</div>
                        <div class="res__Info__input"><input name="usernickname"  id="usernickname"class="res__input" type="text" value="${sessionScope.session.username}" placeholder="체크인 시 필요합니다"></div>
                    </div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">예약자 번호</div>
                        <div class="res__Info__input"><input name="userphone"  id="userphone" class="res__input" type="text" value="${sessionScope.session.phone}" placeholder="예약내용 확인 시 필요합니다"></div>
                    </div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">숙박 종류 선택</div>
                        <div class="res__Info__input">
                              <select name="cars" class="custom-select-sm res__Info__select"  id="cars"  required>
                            <option value="room"  selected="selected" >대실</option>
                            <option value="lodgment"  >숙박</option>
                          </select></div>
                    </div>
                    <div class="res__title mt10">가격 정보</div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">대실 금액</div>
                        <div class="res__Info__input"><strong><input style="text-align: end; padding-right:5px" class="res__input" type="text" value="${data[1].roomPrice}" name="empty1" id="emprt1"readonly />원</strong></div>
                    </div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">숙박 금액</div>
                        <div class="res__Info__input"><strong><input style="text-align: end; padding-right:5px" class="res__input" type="text" value="${data[1].lodgmentPrice}"  name="empty2" id="empty2" readonly />원</strong></div>
                    </div>
                    <div><button type="submit" class="res__btn btn btn-danger btn-block mt10">예약하기</button></div>
                </div>
                <div></div>
            </div>
            <div></div>
        </div>
        </form>
    </section>
<script>

var checkin = "${data[2][0]}";
var checkout = "${data[2][1]}";





</script>

    <script src="javascript/reservation.js">

    
    </script>
</body>

</html>