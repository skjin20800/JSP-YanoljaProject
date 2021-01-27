<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--캘린더-->
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script> 
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
   <!--캘린더 끝-->
    
</head>
<body>
    <header>
        <div class="between yanolja ">
            <div class="yanolja__empty  "></div>
            <div class="yanolja__yanolja  ">
                <a href="index.jsp" class="HomeTitle_logo__14aI3">
                    <img src="//yaimg.yanolja.com/joy/sunny/static/images/logo.svg"
                        alt="야놀자 웹사이트. 최저가 모텔, 호텔, 종합 숙박, 대한민국 대표 숙소 예약사이트, 야놀자 숙박 어플">
                </a>
            </div>
            <c:choose>
            <c:when test="${sessionScope.session ==null }">
            <div class="yanolja__user  ">
                <div>
                    <button type="button" class="btn"  onclick = "location.href = 'login'">로그인</button>
            </div>
            <div>
                <button type="button" class="btn" onclick = "location.href = 'join'">회원가입</button>
            </div>
            </div>
            </c:when>
            <c:when test="${sessionScope.session !=null }">
             <div class="yanolja__user  ">
                <div>
                    <button type="button" class="btn"  onclick = "location.href = '#'">예약 리스트보기</button>
            </div>
            <div>
                <button type="button" class="btn" onclick = "location.href = 'logout'">로그아웃</button>
            </div>
            </div>
            </c:when>
            </c:choose>
        </div>
    </header>