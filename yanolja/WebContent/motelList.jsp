<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모텔 선택</title>
    <link rel="stylesheet" href="css/motelList/motelList_style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <%@ include file="header/header.jsp" %>
    
    <section>
    <form action="/yanolja/motelDetail" method="post" id="calendar_1" >
    <input type="hidden" value="0" name="motelId" id="motelId" />
        <div class="section1__main ">
            <div></div>
            <div class="section1__list">
                <div class="section1__title ">${data[0].motelName}</div>
                <div class="section1__info mt10 ">
                    <!--캘린더-->     
                    
                    <div class="section1__info1">
                            <div class="form-group form_group_list">
                               <div class="input-group date" id="datetimepicker7" data-target-input="nearest">
                               <input type="text" name="checkin"  class="form-control datetimepicker-input" data-target="#datetimepicker7" placeholder="체크인 날짜"/>    
                                    <div class="input-group-append" data-target="#datetimepicker7" data-toggle="datetimepicker">
                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>                  
                        <div class="section1__info2">
                            <div class="form-group form_group_list">
                               <div class="input-group date" id="datetimepicker8" data-target-input="nearest">
                                    <input type="text"  name="checkout"  id="checkout"  class="form-control datetimepicker-input" data-target="#datetimepicker8" placeholder="체크아웃 날짜"/>
                                    <div class="input-group-append" data-target="#datetimepicker8" data-toggle="datetimepicker">
                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      
                    <!--캘린더끝-->
                </div>
                <div class="section1__hash">
                    <button type="button" id="section__hash1">모텔</button>
                    <button type="button">#무한쿠폰룸</button>
                    <button type="button">#프랜차이즈</button>
                    <button type="button">#신축/리모델링</button>
                    <button type="button">#파티룸</button>
                </div>
                </div>
            <div></div>
        </div>
        <div class="section2__main tbBorder">
            <div></div>
            <div class="section2__cupon"><button type="button" class="mr10"> ✓</button>쿠폰할인 가능한 숙소</div>
            <div></div></div>
        <div class="section3__main">
            <div></div>
            <div class="section3__center ">
                <div class="list__title ">지역 TOP</div>
                <!--카드몸통-->
                
                <div>
                        <div class="card__grid">
                            <!--모텔 하나-->                       
           <!--                  <a href="#" class="btn-default">
                            <div class="card">
                                <img class="card-img-top" src="images/index/banner4_busan1.png" alt="Card image">
                                <div class="card-body">
                                    <p class="card__title">모텔 명1</p>
                                    <p class="card__text"> ⭐<strong>평점 변수</strong>/5</p>
                                    <div class="card__sale">
                                        <div class="card__sale__1">선착순</div>
                                        <div class="card__sale__2">10%할인</div>
                                    </div>
                                    <p class="card__text"> 최대 대실 6시간 객실 보유</p>
                                    <div class="card__empty"></div>
                                    <div class="card__room ">대실 <div>20,000원</div></div>
                                    <div class="card__lodgment ">숙박 <div>45,000원</div></div>
                                    
                                </div>
                            </div>
                        </a> -->
                            <!--모텔 하나끝-->
                            
                        </div>
                </div>

                <!--카드몸통 끝-->
                
                
            </div>
            <div></div>
        </div>
          </form>
    </section>
<script type="text/javascript">
var arr= new Array();
 <c:forEach items="${data}" var="item">
 arr.push({id:"${item.id}",
 	motelName:"${item.motelName}",
 	motelPic:"${item.motelPic}",
 	motelInfo:"${item.motelInfo}",
 	address:"${item.address}",
 	roomPrice:"${item.roomPrice}",
 	lodgmentPrice:"${item.lodgmentPrice}",
 	star:"${item.star}",
 	});
 </c:forEach>
 
 function motel(id) {
		document.getElementById("motelId").value = id;
		};	  

</script>

    <script src="javascript/motelList.js">    
    </script> 

</body>
</html>