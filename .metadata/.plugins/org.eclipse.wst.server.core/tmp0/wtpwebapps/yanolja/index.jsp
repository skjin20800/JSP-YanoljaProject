<%@page import="java.io.Console"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="com.jkb.yanolja.domain.config.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>야놀자</title>
    <link rel="stylesheet" href="css/index/index_style.css?ver=1"  media="all" type="text/css"/>
      
    <%@ include file="header/header.jsp" %>
    
    <section>
        <div class="section__header ">
        </div>
        <div class="section1__main ">
            <div class="section1__header ">
                <div class=""></div>
                <div class="section1__header__text"><img src="images/index/arrow.png">서울특별시 강남구 대치동1 🌏</div>
                <div class=""></div>
            </div>
            <div class="section1__body ">
                <div></div>
                <div class="section1__body__main ">
                    <div class="section1__body__line ">
                        <div class="section1__line__box "><a class = "link__common" href="motelArea">
                            <div class="section1__box__image ">
                                <img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96123d4927a4.64705409.png"
                                    alt="모텔" width="50px" height="50px">
                            </div>
                            <div class="section1__box__text ">
                                <p>모텔</p>
                            </div></a>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image ">
                                <img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png"
                                    alt="호텔" width="50px" height="50px">
                            </div>
                            <div class="section1__box__text ">
                                <p>호텔</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image ">
                                <img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f9612f3c50b28.73087146.png"
                                    alt="프리미엄호텔" width="50px" height="50px">
                            </div>
                            <div class="section1__box__text ">
                                <p>프리미엄 호텔</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image ">
                                <img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f961322ddb2e2.01605949.png"
                                    alt="펜션/풀빌라" width="50px" height="50px">
                            </div>
                            <div class="section1__box__text ">
                                <p>펜션/풀빌라</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image ">
                                <img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f9613582a8a64.27167401.png"
                                    alt="레저/티켓" width="50px" height="50px">
                            </div>
                            <div class="section1__box__text ">
                                <p>레저/티켓</p>
                            </div>
                        </div>
                    </div>
                    <div class="section1__body__line ">
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/05/15/14/5ebe29c57cde91.51112609.png"
                                    alt="글램핑/캠핑" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>글램핑/캠핑</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/05/14/17/5ebd0478e3ed72.62476270.png"
                                    alt="리조트/콘도" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>리조트/콘도</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2019/06/24/12/5d10489ac92502.65078667.png"
                                    alt="게하/한옥" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>게하/한옥</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/05/14/17/5ebd076b422a65.77359130.png"
                                    alt="해외숙소" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>해외숙소</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/05/14/17/5ebd0584221724.08469882.png"
                                    alt="항공권" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>항공권</p>
                            </div>
                        </div>
                    </div>
                    <div class="section1__body__line ">
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/01/08/12/5e154959aa0c87.14563710.png"
                                    alt="KTX" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>KTX</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/05/14/17/5ebd05a3422175.02655598.png"
                                    alt="렌터카" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>렌터카</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/12/08/15/5fcf1ee99255b9.43495013.png"
                                    alt="모바일교환권" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>모바일교환권
                                </p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/10/26/13/5f965234141fb4.53399957.png"
                                    alt="아이야놀자" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>아이야놀자</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/10/05/10/5f7a7ddc950d05.04955218.png"
                                    alt="강원도야놀자" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>강원도야놀자</p>
                            </div>
                        </div>
                    </div>
                    <div class="section1__body__line ">
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f9614e21039c8.23417181.png"
                                    alt="호캉스패키지" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>호캉스패키지</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/12/10/17/5fd1dbfb8899a6.02661515.png"
                                    alt="스파펜션" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>스파펜션</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/11/06/16/5fa4fb175fd6e7.26002401.png"
                                    alt="모텔의재발견" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>모텔의재발견</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f9615a239e323.11884805.png"
                                    alt="무한대실" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>무한대실</p>
                            </div>
                        </div>
                        <div class="section1__line__box ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/10/05/10/5f7a7c721c0469.82434291.png"
                                    alt="더보기" width="50px" height="50px"></div>
                            <div class="section1__box__text ">
                                <p>더보기</p>
                            </div>
                        </div>
                    </div>
                    <div class="section1__body__line__last  ">
                        <div class="section1__line__box__last  ">
                            <div class="section1__box__image  ">
                                <img src="https://yaimg.yanolja.com/v5/2020/05/14/17/5ebd08056519c5.95575485.png"
                                    alt="선착순쿠폰" width="50px" height="50px">
                            </div>
                            <div class="section1__box__text ">선착순 쿠폰</div>
                        </div>
                        <div class="section1__line__box__last sideBorder ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2020/05/14/17/5ebd08233e0894.58373980.png"
                                    alt="무한쿠폰룸" width="50px" height="50px"></div>
                            <div class="section1__box__text ">무한쿠폰룸</div>
                        </div>
                        <div class="section1__line__box__last ">
                            <div class="section1__box__image "><img
                                    src="https://yaimg.yanolja.com/v5/2021/01/20/11/60078ffe4f7e12.97310328.png"
                                    alt="2월얼리버드" width="50px" height="50px"></div>
                            <div class="section1__box__text ">2월얼리버드</div>
                        </div>
                    </div>
                </div>
                <div></div>
            </div>
        </div>
    </section>
    <section>
        <div class="section2__main">
            <div></div>
            <div class="section2__main__center ">
                <div class="section2__banner1">
                    <img src="images/index/banner1.png" alt="배너" width="750px" height="60px">
                </div>
                <div>
                    <div id="demo" class="carousel slide section2__slide mt10" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/index/section2_1.png" alt="Los Angeles" width="770px" height="100px">
                                <div class="carousel-caption">
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/index/section2_2.png" alt="Chicago" width="770px" height="100px">
                                <div class="carousel-caption">

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/index/section2_3.png" alt="New York" width="770px" height="100px">
                                <div class="carousel-caption">

                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <div>
                    <div class="section2__banner3 mt10">
                        <div class="banner3__search font__subtitle">회원 인기 검색어</div>
                        <div class="banner3__img">
                            <div><img src="images/index/banner3_1.png" alt="배너" width="750px" height="60px" /></div>
                            <div><img src="images/index/banner3_2.png" alt="배너" width="750px" height="60px" /></div>
                            <div><img src="images/index/banner3_3.png" alt="배너" width="750px" height="60px" /></div>
                            <div><img src="images/index/banner3_4.png" alt="배너" width="750px" height="60px" /></div>
                        </div>
                        <div class="banner3__hashtag mt10">
                            <div class="banner3__hashtag__text border">#인기숙소</div>
                            <div class="banner3__hashtag__text border">#무료영화</div>
                            <div class="banner3__hashtag__text border">#스파펜션</div>
                            <div class="banner3__hashtag__text"></div>
                            <div class="banner3__hashtag__text"></div>
                            <div class="banner3__hashtag__text"></div>
                            <div class="banner3__hashtag__text"></div>
                            <div class="banner3__hashtag__text"></div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="section2__banner4 mt10 pr10 pl10">
                        <div class="banner4__hocance pt10">
                            <div class="banner4__hocance__text font__subtitle" id=banner4__hocance__text>우리도 호캉스 갈까?
                            </div>
                            <div></div>
                            <div class="banner4__hocance__link  "><button type="button" class="btn btn-outline-primary"
                                    id="banner4__hocance__link">호텔 리조트</button></div>
                        </div>
                        <div>
                            <form>
                                <div class="banner4__buttonList tbBorder mt10 ">
                                    <div><button type="button" id="banner4__button1" class="banner4__button"
                                            onclick="changeImage1A()">서울</button></div>
                                    <div><button type="button" id="banner4__button2" class="banner4__button"
                                            onclick="changeImage2A()">경기인천</button></div>
                                    <div><button type="button" id="banner4__button3" class="banner4__button"
                                            onclick="changeImage3A()">강원</button></div>
                                    <div><button type="button" id="banner4__button4" class="banner4__button"
                                            onclick="changeImage4A()">부산</button></div>
                                </div>

                                <div class="banner4__imgs mt10">
                                    <div class="banner4__img "><img id="banner4_img1" src=""
                                            alt="배너" /></div>
                                    <div class="banner4__img "><img id="banner4_img2" src=""
                                            alt="배너" /></div>
                                    <div class="banner4__img "><img id="banner4_img3" src=""
                                            alt="배너" /></div>
                                    <div class="banner4__img "><img id="banner4_img4" src=""
                                            alt="배너" /></div>
                                </div>
                                <div class="banner4__info">
                                    <div class="banner4__info__text" id="banner4_text1">페어필드 바이 메리어트 서울</div>
                                    <div class="banner4__info__text" id="banner4_text2">신라스테이 구로</div>
                                    <div class="banner4__info__text" id="banner4_text3">신라스테이 삼성</div>
                                    <div class="banner4__info__text" id="banner4_text4">호텔포코</div>
                                </div>
                                <div class="banner4__price ">
                                    <div class="banner4__info__price"><strong id="banner4__price1">59,900</strong>원
                                    </div>
                                    <div class="banner4__info__price"><strong id="banner4__price2">60,500</strong>원
                                    </div>
                                    <div class="banner4__info__price"><strong id="banner4__price3">97,450</strong>원
                                    </div>
                                    <div class="banner4__info__price"><strong id="banner4__price4">79,000</strong>원
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="pt10">
                            <div class="banner4__other_theme"><button type="button" id="banner4__toggle"
                                    onclick="banner4__toggle()">
                                    <img src="//yaimg.yanolja.com/joy/sunny/static/images/home-refresh.svg" /> 다른 테마 보기
                                    <strong id="banner4__page">1</strong> / 2
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section2__banner5 mt10 pl10">
                    <div class="banner5__main">
                        <div class="banner5__text">
                            <div class="font__subtitle pt10">
                                이세상 모든 놀거리
                            </div>
                            <div class="banner5__sub__text">
                                레저 초특가 No.1 야놀자
                            </div>
                        </div>
                        <div class="banner5__leisure__btn"><button type="button" class="btn btn-outline-primary ">레저/티켓</button></div>
                    </div>

                    <div>
                        <form>
                            <div class="banner5__imgs mt10">
                                <div class="banner5__img "><img id="banner5_img1" src=""
                                        alt="배너" /></div>
                                <div class="banner5__img "><img id="banner5_img2" src=""
                                        alt="배너" /></div>
                                <div class="banner5__img "><img id="banner5_img3" src=""
                                        alt="배너" /></div>
                                <div class="banner5__img "><img id="banner5_img4" src=""
                                        alt="배너" /></div>
                            </div>
                            <div class="banner5__info">
                                <div class="banner5__info__text" id="banner5_text1">ㅁ</div>
                                <div class="banner5__info__text" id="banner5_text2">ㅁ</div>
                                <div class="banner5__info__text" id="banner5_text3">ㅁ</div>
                                <div class="banner5__info__text" id="banner5_text4">ㅁ</div>
                            </div>
                            <div class="banner5__price ">
                                <div class="banner5__info__price"><strong id="banner5__price1">ㅁ</strong>원
                                </div>
                                <div class="banner5__info__price"><strong id="banner5__price2">ㅁ</strong>원
                                </div>
                                <div class="banner5__info__price"><strong id="banner5__price3">ㅁ</strong>원
                                </div>
                                <div class="banner5__info__price"><strong id="banner5__price4">ㅁ</strong>원
                                </div>
                            </div>
                        </form>
                    </div>
                    <div>
                        <div class="banner5__other_theme"><button type="button" id="banner5__toggle"
                            onclick="banner5__toggle()">
                            <img src="//yaimg.yanolja.com/joy/sunny/static/images/home-refresh.svg" /> 다른 테마 보기
                            <strong id="banner5__page">1</strong> / 2
                        </button>
                    </div>
                    </div>
                </div>

                <div class="section2__banner6 pl10 mt10">
                    <div class="font__subtitle pt10">기획전</div>
                    <div class="banner6__imgs mt10 ">
                        <div class="banner6__imgs__lr rBorder ">
                            <div><img src="images/index/banner6_1.png"/></div>
                            <div><img src="images/index/banner6_2.png"/></div>
                            <div><img src="images/index/banner6_3.png"/></div>
                            <div><img src="images/index/banner6_4.png"/></div>
                            <div><img src="images/index/banner6_5.png"/></div>
                        </div>
                        <div class="banner6__imgs__lr ">
                            <div><img src="images/index/banner6_6.png"/></div>
                            <div><img src="images/index/banner6_7.png"/></div>
                            <div><img src="images/index/banner6_8.png"/></div>
                            <div><img src="images/index/banner6_9.png"/></div>
                            <div><img src="images/index/banner6_10.png"/></div>
                        </div>
                     </div>
                    <div class="banner6_btn mt10">
                        <button type="button" class="btn btn-outline-secondary">더 다양한 기획전 보기</button>
                    </div>
                </div>
            </div>
            <div></div>
        </div>
    </section>
    <footer>
        <div class="footer">
            <div></div>
            <div class="footer__main__center mt10">
                <div class="footer__top"><strong>[공지사항]</strong>야놀자 개인정보처리방침 개정 안내 (2020. 11.30)</div>
                <div>
                    <div class="footer__center1 mt10">
                        <div class="footer__left">yanolja</div>
                        <div class="footer__right">패밀리 사이트</div>
                    </div>
                    <div class="footer__info mt10">
                        <div>(주)야놀자 |대표이사 : 이수진 | 사업자 등록번호 : 220-87-42885 | 통신판매업신고 : 강남-14211호 | 메일 : help@yanolja.com</div>
                        <div>관광사업자 등록번호 : 제2016-31호 | 주소 : 서울 강남구 테헤란로 108길 42 | 호스팅서비스 제공자 : 주식회사 야놀자</div>
                        <div>고객센터 : 1644-1346 (오전 9시 - 익일 새벽 3시)</div>
                    </div>
                    <div class="footer__buuton mt10">
                        <div><button>회사소개</button></div>
                        <div><button>광고제휴문의</button></div>
                        <div><button>인재채용</button></div>
                        <div><button>개인정보처리방침</button></div>
                        <div><button>청소년 보호 정책</button></div>
                        <div><button>서비스 이용약관</button></div>
                        <div><button>위치정보이용약관</button></div>
                        <div><button>사업자 정보확인</button></div>
                        <div class="footer__empty"></div>
                    </div>
                    <div class="footer_icons mt10">
                        <div class="footer_icon"><img src="images/index/footer_icon1.png"/></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                    <div class="footer__center__last mt10">(주) 야놀자는 통신판매 중개자로서 통신판매의 당사자가 아니며 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.</div>
                </div>
                <div class="footer__bottom"><img src="images/index/footer_banner1.png"/></div>
            </div>
            <div></div>
    </div>
   </footer>

    <script src="javascript/index.js">
    </script>




</body>

</html>