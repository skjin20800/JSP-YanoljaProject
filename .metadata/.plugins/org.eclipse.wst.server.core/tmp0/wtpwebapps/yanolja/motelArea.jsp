<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모텔 지역 선택</title>
    <link rel="stylesheet" href="css/motelArea/motelArea_style.css" />
     <%@ include file="header/header.jsp" %>
    <section>
        <div class="section__main">
            <div></div>
            <div class="section__center">
                <div class="section__first"><img src="images/motelArea/section_first.png" /></div>
                <div class="section__second">
                    <div class="second__title  pr20 pl20 pt10 ">
                        <div>지역선택</div>
                        <div><button type="button" class="btn btn-outline-primary">🌏 내 주변</button></div>
                    </div>
                    <div class="area__list">
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            서울
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">서울<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="motelList_Gangnam">강남/역삼/삼성/논현</a></div>
                                                    <div><a class="dropdown-item" href="#">서초/신사/방배</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">잠실/신천(잠실새내)</a></div>
                                                    <div><a class="dropdown-item" href="#">영등포/여의도</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">신림/서울대/사당/동작</a></div>
                                                    <div><a class="dropdown-item" href="#">천호/길동/둔촌</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">화곡/까치산/양천/목동</a></div>
                                                    <div><a class="dropdown-item" href="#">구로/금천/오류/신도림</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">신촌/홍대/합정</a></div>
                                                    <div><a class="dropdown-item" href="#">연신내/불광/용암</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">종로/대학로/동묘앞역</a></div>
                                                    <div><a class="dropdown-item" href="#">성신여대/성북/월곡</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">이태원/용산/서울역/명동/회현</a></div>
                                                    <div><a class="dropdown-item" href="#">회기/고려대/청량리/신설동</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">건대/군자/구의</a></div>
                                                    <div><a class="dropdown-item" href="#">왕십리/성수/금호</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">수유/미아</a></div>
                                                    <div><a class="dropdown-item" href="#">상봉/중랑/면목</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">태릉/노언/도봉/창동</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            경기
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">경기<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">수원 인계/권선/영통</a></div>
                                                    <div><a class="dropdown-item" href="#">수원역/구운/장안/세류</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">안양/평촌/인덕원/과천</a></div>
                                                    <div><a class="dropdown-item" href="#">성남/분당/위례</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">용인</a></div>
                                                    <div><a class="dropdown-item" href="#">안산</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">군포/의왕/금정/산본</a></div>
                                                    <div><a class="dropdown-item" href="#">시흥</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">광명</a></div>
                                                    <div><a class="dropdown-item" href="#">평택/송탄/안성</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">부천</a></div>
                                                    <div><a class="dropdown-item" href="#">일산/고양</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">파주</a></div>
                                                    <div><a class="dropdown-item" href="#">김포</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">의정부</a></div>
                                                    <div><a class="dropdown-item" href="#">구리</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">남양주</a></div>
                                                    <div><a class="dropdown-item" href="#">포천</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">양주/동두천/연천</a></div>
                                                    <div><a class="dropdown-item" href="#">양평</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">가평/청평</a></div>
                                                    <div><a class="dropdown-item" href="#">제부도/대부도</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            인천
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">인천<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">부평</a></div>
                                                    <div><a class="dropdown-item" href="#">구월</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">서구(석남,서구청,검단)</a></div>
                                                    <div><a class="dropdown-item" href="#">계양(작전,경인교대)</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">즈인</a></div>
                                                    <div><a class="dropdown-item" href="#">송도/연수</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">인천공항/을왕리</a></div>
                                                    <div><a class="dropdown-item" href="#">중구(월미도/차이나타운/신포/동인천)</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">강화/옹진</a></div>
                                                    <div><a class="dropdown-item" href="#">동암/간석</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">남동구(소래/만수)</a></div>
                                                    <div><a class="dropdown-item" href="#">용현/숭의/도화/동구</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            강원
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">강원<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">춘천/강촌</a></div>
                                                    <div><a class="dropdown-item" href="#">원주</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">경포대/사천/주문진/정동진</a></div>
                                                    <div><a class="dropdown-item" href="#">강릉역/교동/옥계</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">영월/정선</a></div>
                                                    <div><a class="dropdown-item" href="#">속초/고성</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">양양(서피비치/낙산)</a></div>
                                                    <div><a class="dropdown-item" href="#">동해/삼척/태백</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">평창</a></div>
                                                    <div><a class="dropdown-item" href="#">홍천/횡성</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">화천/철원/인제/양구</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            제주
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color">
                                            <div class="dropdown__double ">
                                                <div class="dropdown__line  ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">제주<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">제주시</a></div>
                                                    <div><a class="dropdown-item" href="#">서귀포시</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">하귀/애월/한림/협재</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            대전
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">대전<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">유성구</a></div>
                                                    <div><a class="dropdown-item" href="#">중구(은행/대흥/선화/유천)</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">동구(용전/복합터미널)</a></div>
                                                    <div><a class="dropdown-item" href="#">서구(둔산/용문/월평)</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">대덕구(중리/신탄진)</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                        충북
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">충북<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">청주 흥덕구 / 서원구 (청주 터미널)</a></div>
                                                    <div><a class="dropdown-item" href="#">청주 상당구/ 청원구 (청주국제공항)</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">충주/수안보</a></div>
                                                    <div><a class="dropdown-item" href="#">제천/진천/음성/단양</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">보은/옥천/괴산/증평/영동</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            충남/세종
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">충남/세종<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">천안 서북구</a></div>
                                                    <div><a class="dropdown-item" href="#">천안 동남구</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">아산</a></div>
                                                    <div><a class="dropdown-item" href="#">공주/동학사/세종</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">계룡/금산/논산/청양</a></div>
                                                    <div><a class="dropdown-item" href="#">예산/홍성</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">태안/안면도/서산</a></div>
                                                    <div><a class="dropdown-item" href="#">당진</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">보령/대천해수욕장</a></div>
                                                    <div><a class="dropdown-item" href="#">서천/부여</a></div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            부산
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">부산<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">해운대/센텀시티/재송</a></div>
                                                    <div><a class="dropdown-item" href="#">송정/기장/정관</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">광안리/수영</a></div>
                                                    <div><a class="dropdown-item" href="#">경성대/대연/용호동/문현</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="motelList_Seomyeon">서면/양정/초읍/부산시민공원</a></div>
                                                    <div><a class="dropdown-item" href="#">남포동/중앙동/태종대/송도/영도</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">부산역/범일역/부산진역</a></div>
                                                    <div><a class="dropdown-item" href="#">연산/토곡</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">동래/사직/온천장/부산대/구서</a></div>
                                                    <div><a class="dropdown-item" href="#">사상(경전철)/엄궁/학장</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">덕천/화명/만덕/구포(구포역/KTX역)</a></div>
                                                    <div><a class="dropdown-item" href="#">하단/명지/김해공항/다대포/강서/신호/괴정/지사</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            울산
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">울산<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">남구/중구(삼산/성남/무거/신정)</a></div>
                                                    <div><a class="dropdown-item" href="#">동구/북구/을주군(일산/진장/진하/KTX역/영남알프스)</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            경남
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">경남<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">창원 상남동/용호동/중앙동/창원시청</a></div>
                                                    <div><a class="dropdown-item" href="#">창원 명서동/봉곡동/팔용동/북면온천/창원종합버스터미널</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">마산/진해</a></div>
                                                    <div><a class="dropdown-item" href="#">김해/장유</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">양산/밀양</a></div>
                                                    <div><a class="dropdown-item" href="#">진주</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">거제/통영/고성</a></div>
                                                    <div><a class="dropdown-item" href="#">사천/남해</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">하동/산청/함양</a></div>
                                                    <div><a class="dropdown-item" href="#">거창/함안/창녕/합천/의령</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            대구
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">대구<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">동성로/서문시장/대구시청/삼덕동/교동/종로</a></div>
                                                    <div><a class="dropdown-item" href="#">대구역/칠성시장/경북대/엑스코/칠곡지구/태전동/금호지구</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">동대구역/고속버스터미널/신천동/신암동</a></div>
                                                    <div><a class="dropdown-item" href="#">대구공항/혁신도시/동촌유원지/팔공산/이시아폴리스</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">수성못/범어/라이온즈파크/월드컵경기장/앞산공원/대명동/봉덕동</a></div>
                                                    <div><a class="dropdown-item" href="#">북부정류장/이현공단/평리동/내당동/비산동/원대동</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">두류공원/이월드/광장코아/서부정류장/본리동/죽전동</a></div>
                                                    <div><a class="dropdown-item" href="#">성서/계명대/성서공단/상인동/달성군/가창/현풍/논공</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            경북
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">경북<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">포항/남구(시청/시외버스터미널/구룡포/쌍사/문덕/오천)</a></div>
                                                    <div><a class="dropdown-item" href="#">포항/북구(영일대/죽도시장/여객터미널/송도)</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">경주(보문단지/황리단길/불국사/양남/감포/안강)</a></div>
                                                    <div><a class="dropdown-item" href="#">구미</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">경산(영남대/대구대/갓바위/하양/진량/자인)</a></div>
                                                    <div><a class="dropdown-item" href="#">안동(경북도청/하회마을)</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">영천/청도</a></div>
                                                    <div><a class="dropdown-item" href="#">김천/칠곡/성주</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">문경/상주/영주/예천/군위/의성/봉화</a></div>
                                                    <div><a class="dropdown-item" href="#">울진/영덕/청승</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">울릉도</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            광주
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">광주<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">상무지구/금호지구/유스퀘어/서구</a></div>
                                                    <div><a class="dropdown-item" href="#">첨단지구/하남지구/송정역/광산구</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">충장로/대인시장/국립아시아문화전당/동구/남구</a></div>
                                                    <div><a class="dropdown-item" href="#">광주역/기아챔피언스필드/전대사거리/북구</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="area__line">
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            전남
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-left dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">전남<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">여수</a></div>
                                                    <div><a class="dropdown-item" href="#">순천</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">광양</a></div>
                                                    <div><a class="dropdown-item" href="#">목포/무안/영암/신안</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">나주/함평/영광/장성</a></div>
                                                    <div><a class="dropdown-item" href="#">담양/곡성/화순/구례</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">해남/완도/진도/강진/장흥/보성/고흥</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="area__solo">
                                <div class="container dropdown__padding">
                                    <div class="dropdown bBorder">
                                        <button type="button" class="btn dropdown-toggle dropdown__size"
                                            data-toggle="dropdown">
                                            전주/전북
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right dropdown__color ">
                                            <div class="dropdown__double">
                                                <div class="dropdown__line ">
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header"><span class="dropdown__point1">전주/전북<span class="dropdown__point2"> TOP</span>숙소</span></h5>
                                                    </div>
                                                    <div class="dropdown__header bBorder">
                                                        <h5 class="dropdown-header "></h5>
                                                    </div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">전주/완주</a></div>
                                                    <div><a class="dropdown-item" href="#">군산</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">익산</a></div>
                                                    <div><a class="dropdown-item" href="#">남원/임실/순창/무주/진안/장수</a></div>
                                                </div>
                                                <div class="dropdown__line">
                                                    <div><a class="dropdown-item" href="#">정읍/부안/김제/고창</a></div>
                                                    <div><a class="dropdown-item" href="#"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="section__third mt20"><img src="images/motelArea/section_third.png"/></div>
                </div>
                
                <!-- 4번째 남는 div남겨둠-->
                <div></div>
                <!-- 4번째 남는 div남겨둠 끝-->
            </div>
            <div></div>
        </div>
    </section>

</body>

</html>