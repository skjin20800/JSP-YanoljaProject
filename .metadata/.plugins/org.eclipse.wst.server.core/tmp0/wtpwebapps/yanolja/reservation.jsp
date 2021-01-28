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
        <div class="section__main">
            <div></div>
            <div class="section__center">
                <div class="section1__main">
                    <div class="motel__title">모텔 이름</div>
                    <div class="motel__subtitle">모텔 정보</div>
                    <div class="motel__datecheck">
                        <div class="check__in">
                            <div class="in_1">체크인</div>
                            <div class="in_2">2021.01.25(월) 날짜변수</div>
                            <!-- 타임캘린더-->
                            <div>
                                <div class="row in__size">
                                    <div class="col-sm-12">
                                        <div class="form-group nomargin">
                                            <div class="input-group date" id="datetimepicker3"
                                                data-target-input="nearest">
                                                <input type="text" class="form-control datetimepicker-input"
                                                    data-target="#datetimepicker3" placeholder="체크인 시간 선택" />
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
                            <div class="out_2">2021.01.26(화) 날짜변수1</div>
                            <!-- 타임캘린더-->
                            <div>
                                <div class="row out__size">
                                    <div class="col-sm-12">
                                        <div class="form-group nomargin">
                                            <div class="input-group date" id="datetimepicker4"
                                                data-target-input="nearest">
                                                <input type="text" class="form-control datetimepicker-input"
                                                    data-target="#datetimepicker4" placeholder="체크아웃 시간 선택" />
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
                        <div class="res__Info__input"><input class="res__input" type="text" value="유저이름" placeholder="체크인 시 필요합니다"></div>
                    </div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">예약자 번호</div>
                        <div class="res__Info__input"><input class="res__input" type="text" value="유저번호" placeholder="예약내용 확인 시 필요합니다"></div>
                    </div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">숙박 종류 선택</div>
                        <div class="res__Info__input">
                              <select name="cars" class="custom-select-sm res__Info__select">
                            <option selected>숙박 종류 선택</option>
                            <option value="volvo">대실</option>
                            <option value="fiat">숙박</option>
                          </select></div>
                    </div>
                    <div class="res__title mt10">가격 정보</div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">대실 금액</div>
                        <div class="res__Info__input"><input class="res__input" type="text" value="250,000" readonly ></div>
                    </div>
                    <div class="res__usernameInfo">
                        <div class="res__usernametitle">숙박 금액</div>
                        <div class="res__Info__input"><input class="res__input" type="text" value="300,000" readonly ></div>
                    </div>
                    <div><button type="button" class="res__btn btn btn-danger btn-block mt10">예약하기</button></div>
                </div>
                <div>3</div>
            </div>
            <div></div>
        </div>
    </section>


    <script src="javascript/reservation.js">
    </script>
</body>

</html>