<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모텔 정보</title>
    <link rel="stylesheet" href="css/motelInfo/motelInfo_style.css" />
    <%@ include file="header/header.jsp" %>
    <section>
        <div class="section1__main">
            <div>1</div>
            <div class="section1__center">
                <!--사진-->
                <div>

                    <div id="demo" class="carousel slide" data-ride="carousel">

                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul>

                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/index/banner4_busan1.png" alt="룸 사진1">
                            </div>
                            <div class="carousel-item">
                                <img src="images/index/banner4_busan2.png" alt="룸 사진2">
                            </div>
                            <div class="carousel-item">
                                <img src="images/index/banner4_busan4.png" alt="룸 사진3">
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <!--사진 끝-->
                <div class="motel__name"> 모텔 명</div>
                <div class="motel__star">⭐<strong>평점 변수</strong>/5</div>
                <div class="motel__coupon">무한쿠폰룸</div>
                <!--캘린더-->
                <div class="calender__main">
                    <div class="calender__info1">
                        <div class="form-group">
                            <div class="input-group date" id="datetimepicker7A" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input"
                                    data-target="#datetimepicker7A" placeholder="체크인 날짜" />
                                <div class="input-group-append" data-target="#datetimepicker7A"
                                    data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="calender__info2">
                        <div class="form-group">
                            <div class="input-group date" id="datetimepicker8A" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input"
                                    data-target="#datetimepicker8A" placeholder="체크아웃 날짜" />
                                <div class="input-group-append" data-target="#datetimepicker8A"
                                    data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--캘린더 끝-->
                <!--카드시작-->
                <div>

                    <div class="card card__body">
                        <a class="card__link" href="#">
                            <div class="card__position ">
                                <img class="card-img-top" src="images/index/banner4_gangwon4.png" alt="Card image">
                                <div class="card-body card__body2">
                                    <h4 class="card-title">룸타입명</h4>
                                    <p class="card-text">타입설명</p>
                                    <div class="room__kinds">대실</div>
                                    <div class="room__price">판매가</div>
                                    <div class="room__won"><strong>30,000</strong>원</div>
                                    <div class="room__kinds">숙박</div>
                                    <div class="room__price">판매가</div>
                                    <div class="room__won"><strong>45,000</strong>원</div>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
                <!--카드끝-->
                <div><img src="images/motelInfo/motelInfo1.png" width="770px" height="420px" /></div>
                <div><img src="images/motelInfo/motelInfo2.png" width="770px" height="300px" /></div>
            </div>
            <div></div>
        </div>
    </section>

    <script src="javascript/motelInfo.js">
    </script>
</body>

</html>