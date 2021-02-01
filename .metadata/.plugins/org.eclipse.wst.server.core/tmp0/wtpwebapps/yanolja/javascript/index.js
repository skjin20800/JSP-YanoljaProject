
        var toggle = true;
        var toggle2 = true;
        changeImage1A();
        changeImage2B();

        window.onload=function(){
            $("#banner4__button1").focus();
            }

        function banner4__toggle() {
            toggle = !toggle;
            if (toggle == true) {
                banner4__toggleA();
                changeImage1A();
                $("#banner4__button1").focus();
            } else {
                banner4__toggleB();
                changeImage1A();
                $("#banner4__button1").focus();
            }
        }
        function banner5__toggle() {
            toggle2 = !toggle2;
            
            if (toggle2 == true) {
                $("#banner5__page").text("1");
                changeImage2B();
            } else if(toggle2 == false){
                $("#banner5__page").text("2");
                changeImage2B();
            }
        }

        function banner4__toggleA() {
            $("#banner4__hocance__text").text("우리도 호캉스 갈까?");
            $("#banner4__hocance__link ").text("호텔/리조트");
            $("#banner4__button1").text("서울");
            $("#banner4__button2").text("경기인천");
            $("#banner4__button3").text("강원");
            $("#banner4__button4").text("부산");
            $("#banner4__page").text("1");

        }
        function banner4__toggleB() {
            $("#banner4__hocance__text").text("겨울 인기테마 숙소 추천!");
            $("#banner4__hocance__link ").text("펜션/풀빌라");
            $("#banner4__button1").text("오션뷰");
            $("#banner4__button2").text("풀빌라");
            $("#banner4__button3").text("스파");
            $("#banner4__button4").text("독채");
            $("#banner4__page").text("2");
        }

        function changeImage1A() {


            if (toggle == true) {

                $("#banner4_img1").attr("src", "images/index/banner4_seoul1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_seoul2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_seoul3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_seoul4.png");

                $("#banner4_text1").text("페어필드 바이 메리어트 서울");
                $("#banner4_text2").text("신라스테이 구로");
                $("#banner4_text3").text("신라스테이 삼성");
                $("#banner4_text4").text("호텔포코");

                $("#banner4__price1").text("59,900");
                $("#banner4__price2").text("60,500");
                $("#banner4__price3").text("97,450");
                $("#banner4__price4").text("79,000");
            } else if (toggle == false) {

                $("#banner4_img1").attr("src", "images/index/banner4_ocean1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_ocean2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_ocean3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_ocean4.png");

                $("#banner4_text1").text("포항 해피투게더 펜션");
                $("#banner4_text2").text("포항 시크릿파크펜션 (MD 강력 추천)");
                $("#banner4_text3").text("강화도 낙조가보이는펜션(선센스팟");
                $("#banner4_text4").text("강릉 경포씨앤뷰펜션 (파격특가,MD추천) ");

                $("#banner4__price1").text("109,000");
                $("#banner4__price2").text("129,000");
                $("#banner4__price3").text("89,000");
                $("#banner4__price4").text("39,900");
                
            }
        }
        function changeImage2A() {

            if (toggle == true) {
                $("#banner4_img1").attr("src", "images/index/banner4_gyeonggi1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_gyeonggi2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_gyeonggi3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_gyeonggi4.png");

                $("#banner4_text1").text("호텔가덴");
                $("#banner4_text2").text("양평 블룸비스타");
                $("#banner4_text3").text("송도 센트럴파크 호텔");
                $("#banner4_text4").text("인천 파크마린호텔");

                $("#banner4__price1").text("67,000");
                $("#banner4__price2").text("107,350");
                $("#banner4__price3").text("76,000");
                $("#banner4__price4").text("70,000");
                
            } else if (toggle == false) {
                $("#banner4_img1").attr("src", "images/index/banner4_vila1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_vila2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_vila3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_vila4.png");

                $("#banner4_text1").text("여수 르시엘풀빌라(야외풀장,오션뷰)");
                $("#banner4_text2").text("가평 리버하임펜션(스파)");
                $("#banner4_text3").text("여수 하이락리조트");
                $("#banner4_text4").text("태안(안면도) 해비알풀빌라 (오션뷰)");

                $("#banner4__price1").text("89,000");
                $("#banner4__price2").text("79,000");
                $("#banner4__price3").text("102,000");
                $("#banner4__price4").text("229,000");
                
            }


        }
        function changeImage3A() {
            if (toggle == true) {

                $("#banner4_img1").attr("src", "images/index/banner4_gangwon1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_gangwon2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_gangwon3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_gangwon4.png");

                $("#banner4_text1").text("강릉 세인트존스호텔");
                $("#banner4_text2").text("마리나베이 속초");
                $("#banner4_text3").text("호텔 탑스텐 정동진");
                $("#banner4_text4").text("강릉 씨스카이 호텔");

                $("#banner4__price1").text("99,000");
                $("#banner4__price2").text("51,000");
                $("#banner4__price3").text("115,500");
                $("#banner4__price4").text("39,900");
                
            } else if (toggle == false) {
                $("#banner4_img1").attr("src", "images/index/banner4_spar1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_spar2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_spar3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_spar4.png");

                $("#banner4_text1").text("포항 슬로우오션펜션(2월 얼리버드)");
                $("#banner4_text2").text("여수 르그랑블루리조트");
                $("#banner4_text3").text("여수 하이클래스153부띠끄리조트");
                $("#banner4_text4").text("거제도 베이힐풀빌라");

                $("#banner4__price1").text("149,000");
                $("#banner4__price2").text("190,000");
                $("#banner4__price3").text("120,000");
                $("#banner4__price4").text("1,000");
                
            }
        }
        function changeImage4A() {

            if (toggle == true) {
                $("#banner4_img1").attr("src", "images/index/banner4_busan1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_busan2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_busan3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_busan4.png");

                $("#banner4_text1").text("서면 티티 호텔");
                $("#banner4_text2").text("호텔 아쿠아 펠리스");
                $("#banner4_text3").text("해운대 소사이어티 호텔");
                $("#banner4_text4").text("베스트웨스턴 플러스 부산 송도");

                $("#banner4__price1").text("50,000");
                $("#banner4__price2").text("70,000");
                $("#banner4__price3").text("38,000");
                $("#banner4__price4").text("47,700");
                
            } else if (toggle == false) {
                $("#banner4_img1").attr("src", "images/index/banner4_house1.png");
                $("#banner4_img2").attr("src", "images/index/banner4_house2.png");
                $("#banner4_img3").attr("src", "images/index/banner4_house3.png");
                $("#banner4_img4").attr("src", "images/index/banner4_house4.png");

                $("#banner4_text1").text("부산 비치하임펜션 (신축, 특오션뷰)");
                $("#banner4_text2").text("거제도 하와유풀빌라스파펜션(오션뷰)");
                $("#banner4_text3").text("영덕 비사이드풀빌라펜션(신축)");
                $("#banner4_text4").text("여수 바다정원스파펜션");

                $("#banner4__price1").text("90,000");
                $("#banner4__price2").text("49,000");
                $("#banner4__price3").text("200,000");
                $("#banner4__price4").text("55,000");
                

            }

        }
        function changeImage2B() {

if (toggle2 == true) {
    $("#banner5_img1").attr("src", "images/index/banner5_leisure1.png");
    $("#banner5_img2").attr("src", "images/index/banner5_leisure2.png");
    $("#banner5_img3").attr("src", "images/index/banner5_leisure3.png");
    $("#banner5_img4").attr("src", "images/index/banner5_leisure4.png");

    $("#banner5_text1").text("[★2021인기상품] 롯데월드 어드벤처");
    $("#banner5_text2").text("[선착순 특가★] 휘닉스 평창 ALL DAY 프리패스...");
    $("#banner5_text3").text("[선착순 특가★] 알펜시아 리조트 스키리프트권");
    $("#banner5_text4").text("[선착순 특가★] 비발디파크 스키리프트+장비렌...");

    $("#banner5__price1").text("24,900");
    $("#banner5__price2").text("22,400");
    $("#banner5__price3").text("22,900");
    $("#banner5__price4").text("35,900");
    
} else if (toggle2 == false) {
    $("#banner5_img1").attr("src", "images/index/banner5_leisure5.png");
    $("#banner5_img2").attr("src", "images/index/banner5_leisure6.png");
    $("#banner5_img3").attr("src", "images/index/banner5_leisure7.png");
    $("#banner5_img4").attr("src", "images/index/banner5_leisure8.png");

    $("#banner5_text1").text("[경기 용인] 에버랜드 종일/야간권 (1/1~2/28)");
    $("#banner5_text2").text("[경북 경주] 경주월드 자유이용권 1일");
    $("#banner5_text3").text("[강원 홍천] 비발디파크 스노위랜드 특가");
    $("#banner5_text4").text("[강원 평창] 휘닉스 평창 S시즌권");

    $("#banner5__price1").text("20,000");
    $("#banner5__price2").text("20,900");
    $("#banner5__price3").text("23,900");
    $("#banner5__price4").text("136,500");
}
}
