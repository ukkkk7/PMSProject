<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/pms/asset/css/commnon.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


<style>

   @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
* {
font-family: 'Noto Sans KR', sans-serif;
}
        body {
            margin: 0;
            padding: 0;
        }

        #container {
            display: flex;
            height: 100vh;
        }

        #sidebar {
            width: 250px;
            background-color: #F2F4F7;
            color: #1C1C1C;
            padding: 15px 0 18px 0px;
            font-family: "맑은 고딕", Arial, sans-serif;
            font-size: 17px;
        }

        #sidebar ul {
           list-style-type: none;
           padding-inline-start: 0px;
           padding-inline-end: 0px;
           /* padding-left: 20px; */
        }

       /* #sidebar ul :hover {
           background-color: #D9DADF;
        } */
        

        #sidebar > #info {
            color: #1C1C1C;
            font-size: small;
            text-align: center;
        }

        #sidebar a {
            color: #1C1C1C;
            text-decoration: none;
            padding: 17px 15px;
            display: block;
        }

        #sidebar a:hover {
            background-color: #D9DADF;
        }

        .manage ul {
            padding-left: 10px;
        }

        .manage ul li {
            margin-bottom: 5px;
        }

        .manageDetail ul li {
            padding-left: 30px;
        }

        #content {
            flex: 1;
            /* padding: 20px; */
        }

        #content > hr {
            border-width: 3px;
            border-style: solid;
            color: #9DB2BF;
        }
        
        

        #topMenu > table {
            /* width: 100%; */
            width: 1200px;
            table-layout: fixed;
            align-items: center;
            /* margin-left: 20px; */
            margin-bottom: 20px;
        }

        #topMenu .tbTop {
            height: 70px;
            background-color: #2A3954;
        }

        #topMenu .tbTop > td:hover {
            background-color: #000032;
        }

        #topMenu .tbTop td {
            width: 20%;
            text-align: center;
            font-size: large;
            font-weight: bold;
        }

        #topMenu a {
            color: white;
            text-decoration: none;
        }

        h2.subtitle {
            margin-left: 55px;
            color: #1C1C1C;
        }

        /* img {
            width: 110px;
            height: 120px;
            margin-left: 20px;
        } */

      .smwork {
        padding-left: 27px;
        padding-right: 27px;
        padding-top: calc(3px - 3px);
        padding-bottom: calc(3px - 3px);
        font-size: 15px;
        text-indent: -2px;
        }

     .div-container {
      display: flex;
      flex-direction: column;
    }
    
    .div-container div {
      margin-bottom: 10px;
    
    }
    .dash{
       border: 1px solid black;
       display: inline-block;
        width: 100px;
        height: 100px;
        
    }
    
    
    
    
    
    
    
    .e0_3 { 
   width:1200px;
   height:795px;
   position:absolute;
}
.e0_4 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   width:184px;
   height:133px;
   position:absolute;
   left:60px;
   top:50px;
}
.e0_5 { 
   background-color:rgba(255, 255, 255, 1);
   width:184px;
   height:133px;
   position:absolute;
   left:0px;
   top:0px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.0_5 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e0_6 { 
   color:rgba(0, 0, 0, 1);
   width:147px;
   height:26px;
   position:absolute;
   left:18.5px;
   top:9.5px;
   font-family:Roboto;
   text-align:right;
   font-size:54px;
   letter-spacing:0;
}
.e0_7 { 
   color:rgba(0, 0, 0, 1);
   width:138px;
   height:40px;
   position:absolute;
   left:23px;
   top:83.5px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}
.e2_11 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   width:184px;
   height:133px;
   position:absolute;
   left:285px;
   top:50px;
}
.e2_12 { 
   background-color:rgba(255, 255, 255, 1);
   width:184px;
   height:133px;
   position:absolute;
   left:0px;
   top:0px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.2_12 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e2_13 { 
   color:rgba(0, 0, 0, 1);
   width:147px;
   height:26px;
   position:absolute;
   left:18.5px;
   top:9.5px;
   font-family:Roboto;
   text-align:right;
   font-size:54px;
   letter-spacing:0;
}
.e2_14 { 
   color:rgba(0, 0, 0, 1);
   width:138px;
   height:40px;
   position:absolute;
   left:23px;
   top:83.5px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}
.e2_15 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   width:184px;
   height:133px;
   position:absolute;
   left:510px;
   top:50px;
}
.e2_16 { 
   background-color:rgba(255, 255, 255, 1);
   width:184px;
   height:133px;
   position:absolute;
   left:0px;
   top:0px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.2_16 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e2_17 { 
   color:rgba(0, 0, 0, 1);
   width:147px;
   height:26px;
   position:absolute;
   left:18.5px;
   top:9.5px;
   font-family:Roboto;
   text-align:right;
   font-size:54px;
   letter-spacing:0;
}
.e2_18 { 
   color:rgba(0, 0, 0, 1);
   width:138px;
   height:40px;
   position:absolute;
   left:23px;
   top:83.5px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}
.e2_19 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   width:184px;
   height:133px;
   position:absolute;
   left:733px;
   top:50px;
}
.e2_20 { 
   background-color:rgba(255, 255, 255, 1);
   width:184px;
   height:133px;
   position:absolute;
   left:0px;
   top:0px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.2_20 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e2_21 { 
   color:rgba(0, 0, 0, 1);
   width:147px;
   height:26px;
   position:absolute;
   left:18.5px;
   top:9.5px;
   font-family:Roboto;
   text-align:right;
   font-size:54px;
   letter-spacing:0;
}
.e2_22 { 
   color:rgba(0, 0, 0, 1);
   width:138px;
   height:40px;
   position:absolute;
   left:23px;
   top:83.5px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}
.e2_23 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   width:184px;
   height:133px;
   position:absolute;
   left:955px;
   top:50px;
}
.e2_24 { 
   background-color:rgba(255, 255, 255, 1);
   width:184px;
   height:133px;
   position:absolute;
   left:0px;
   top:0px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.2_24 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e2_25 { 
   color:rgba(0, 0, 0, 1);
   width:147px;
   height:26px;
   position:absolute;
   left:18.5px;
   top:9.5px;
   font-family:Roboto;
   text-align:right;
   font-size:54px;
   letter-spacing:0;
}
.e2_26 { 
   color:rgba(0, 0, 0, 1);
   width:138px;
   height:40px;
   position:absolute;
   left:23px;
   top:83.5px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}
.e0_24 { 
   width:1079px;
   height:536.162841796875px;
   position:absolute;
   left:60px;
   top:219.08721923828125px;
}
.e0_25 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   background-color:rgba(255, 255, 255, 1);
   width:633.566650390625px;
   height:251.44186401367188px;
   position:absolute;
   left:0.9221893548965454px;
   top:0px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.0_25 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e0_26 { 
   color:rgba(0, 0, 0, 1);
   width:585px;
   height:229px;
   position:absolute;
   left:24.2833251953125px;
   top:11.220932006835938px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}
.e0_27 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   background-color:rgba(255, 255, 255, 1);
   width:409.4666442871094px;
   height:251.44186401367188px;
   position:absolute;
   left:669.5333251953125px;
   top:0px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.0_27 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e0_28 { 
   color:rgba(0, 0, 0, 1);
   width:355px;
   height:229px;
   position:absolute;
   left:27.233322143554688px;
   top:11.220932006835938px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}
.e0_29 { 
   box-shadow:0px 4px 4px rgba(0, 0, 0, 0.25);
   background-color:rgba(255, 255, 255, 1);
   width:1079px;
   height:245.89535522460938px;
   position:absolute;
   left:0px;
   top:290.2674560546875px;
   border-top-left-radius:10px;
   border-top-right-radius:10px;
   border-bottom-left-radius:10px;
   border-bottom-right-radius:10px;
}
.0_29 { 
   border:2px solid rgba(0, 0, 0, 1);
}
.e0_30 { 
   color:rgba(0, 0, 0, 1);
   width:1014px;
   height:229px;
   position:absolute;
   left:32.5px;
   top:8.447677612304688px;
   font-family:Roboto;
   text-align:right;
   font-size:22px;
   letter-spacing:0;
}

#gant {
  margin: 1em auto;
}

    
    
    
</style>
</head>
<body>
    <div id="container">
        <div id="sidebar">
            
            <p style="font-size: 23px; font-weight: bold; text-align: center;">
            J<span style="color: #9DB2BF;">D</span>S<span style="color: #9DB2BF;">C</span> Company
            </p>
           
           
            <br>
            <div id="info">${name}(${position}) / ${teamname }</div>
     <!--        <button type="button" class="btn btn-light btn-sm">로그아웃</button>
            <br> -->
           
            <ul class="sideMenu">
                <li><a href="/pms/issue/issuelist.do"><span class="material-symbols-outlined">
dashboard
</span> 메인 대시보드</a></li>
                <li><a href="/pms/issue/issuelist.do"><span class="material-symbols-outlined">
hub
</span> 프로젝트 센터</a></li>
                <li class="manage"><a href="#"><span class="material-symbols-outlined">
stress_management
</span> 작업 관리</a>
                    <ul class="manageDetail">
                        <li class="smwork"><a href="/pms/todo/my/productlist.do"><span class="material-symbols-outlined">
group
</span> 내 작업</a></li>
                        <li class="smwork"><a href="/pms/todo/team/allproductlist.do"><span class="material-symbols-outlined">
diversity_3
</span> 일반 작업</a></li>
                        <li class="smwork"><a href="/pms/schedule/calendatview.do"><span class="material-symbols-outlined">
calendar_month
</span> 일정 관리</a></li>
                    </ul>
                </li>
                <li><a href="/pms/sign/signlist.do"><span class="material-symbols-outlined">
draw
</span> 결재 안건 관리</a></li>
                <li><a href="/pms/issue/noticelist.do"><span class="material-symbols-outlined">
sticky_note_2
</span> 공지 사항</a></li>
<li><a href="/pms/issue/issuelist.do"><span class="material-symbols-outlined">
check_circle
</span> 이슈 관리</a></li>
                <li><a href="/pms/issue/issuelist.do"><span class="material-symbols-outlined">
app_registration
</span> 사원 등록</a></li>
                <li><a href="/pms/notice/noticelist.do"><span class="material-symbols-outlined">
assignment_ind
</span> 마이페이지</a></li>
            </ul>
             <button type="button" class="btn btn-light btn-sm" onclick="location.href='/pms/employee/login.do';">로그아웃</button>
            <br>
        </div>

       <div id="content">
           <p> &nbsp종합 대시보드</p>
            <hr>
            <div id="topMenu">
                <table>
                    <tr class="tbTop">
                        <td><a href="#">프로젝트 목록</a></td>
                        <td><a href="#">상세정보</a></td>
                        <td><a href="/pms/center/wbs/view.do">WBS</a></td>
                        <td><a href="#">이슈</a></td>
                        <td><a href="#">산출물</a></td>
                    </tr>
                    <tr class="tbMid">
                    <td>
                        <div class=e0_3>
                    <div class=e0_4>
                      <div class=e0_5><span  class="e0_6">0</span><span  class="e0_7">내 작업</span></div>
                    </div>
                   
                    <div class=e2_11>
                      <div class=e2_12><span  class="e2_13">${dto.cnt}</span><span  class="e2_14">이슈</span></div>
                    </div>
                   
                    <div class=e2_15>
                      <div class=e2_16><span  class="e2_17">0</span><span  class="e2_18">결재 요청</span></div>
                    </div>
                    <div class=e2_19>
                      <div class=e2_20><span  class="e2_21">0</span><span  class="e2_22">산출물</span></div>
                    </div>
                    <div class=e2_23>
                      <div class=e2_24><span  class="e2_25">0</span><span  class="e2_26">프로젝트</span></div>
                    </div>
                    <div class=e0_24>
                      <div class=e0_25><span  class="e0_26">주요 프로젝트 현황
                  
                  
                  
                  
                  </span></div>
                      <div class=e0_27><span  class="e0_28">주요 프로젝트 현황
                  
                  
      <div>
       <div id="gant" style="width:1100px; margin-left: 50px;"></div>
</div>   
                  
                  
                  </span></div>
                      <div class=e0_29><span  class="e0_30">주요 프로젝트 현황
                  
                  
                  
                  
                  </span></div>
                    </div>
                  </div>
                  </td>
                    </tr>
                </table>
            </div>
            </table>
        </div>
    </div>
            
      <div id="wbslist">
   <c:forEach items="${list}" var="dto">
      <div class="wbs">
         <input type="hidden" value="${dto.pstartdate}">
         <input type="hidden" value="${dto.penddate}">
         <input type="hidden" value="${dto.pname}">
         <input type="hidden" value="${dto.projectseq}">
         <input type="hidden" value="${dto.wstartdate}">
         <input type="hidden" value="${dto.wenddate}">
         <input type="hidden" value="${dto.wname}">
         <input type="hidden" value="${dto.wseq}">
      </div>   
   </c:forEach>
   </div>
    <script src="js/jquery-3.6.4.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://code.highcharts.com/gantt/highcharts-gantt.js"></script>
<script src="https://code.highcharts.com/gantt/modules/accessibility.js"></script>
    <script>
    var today = new Date(),
    day = 1000 * 60 * 60 * 24;

    var wbs = document.querySelector('.wbs');
    
    console.log($('#wbslist').find('.wbs').children().eq(1).val());
   
    var pstartdate = new Date($('#wbslist').find('.wbs').children().eq(0).val());
    var penddate = new Date($('#wbslist').find('.wbs').children().eq(1).val());
    var pname = new Date($('#wbslist').find('.wbs').children().eq(2).val());
    var projectseq = new Date($('#wbslist').find('.wbs').children().eq(3).val());
    var wstartdate = new Date($('#wbslist').find('.wbs').children().eq(4).val());
    var wenddate = new Date($('#wbslist').find('.wbs').children().eq(5).val());
    var wname = new Date($('#wbslist').find('.wbs').children().eq(6).val());
    var wseq = new Date($('#wbslist').find('.wbs').children().eq(7).val());
    
    
    const wbsData = [

       <c:forEach items="${list}" var="dto">
       {
            name: '${dto.wname}',
            id: 'requirements',
            start: Date.parse('${dto.wstartdate}'),
            end: Date.parse('${dto.wenddate}')
        },
       </c:forEach>
    ];
    
    
    
    
  // Set to 00:00:00:000 today
  today.setUTCHours(0);
  today.setUTCMinutes(0);
  today.setUTCSeconds(0);
  today.setUTCMilliseconds(0);


  // THE CHART
  Highcharts.ganttChart('gant', {
    title: {
      text: '개발 1팀 : 금융상품 추천 어플리케이션 제작 프로젝트'
    },
    xAxis: {
      min: pstartdate.getTime(),
      max: penddate.getTime()
    },
    accessibility: {
      keyboardNavigation: {
        seriesNavigation: {
          mode: 'serialize'
        }
      },
      point: {
        descriptionFormatter: function (point) {
          var dependency = point.dependency &&
              point.series.chart.get(point.dependency).name,
            dependsOn = dependency ? ' Depends on ' + dependency + '.' : '';

          return Highcharts.format(
            '{point.yCategory}. Start {point.x:%Y-%m-%d}, end {point.x2:%Y-%m-%d}.{dependsOn}',
            { point, dependsOn }
          );
        }
      }
    },
    lang: {
      accessibility: {
        axis: {
          xAxisDescriptionPlural: 'The chart has a two-part X axis showing time in both week numbers and days.'
        }
      }
    },
    series: [{
      name: 'Project 1',
      data: wbsData
    }]
  });
    </script>
</body>

</html>