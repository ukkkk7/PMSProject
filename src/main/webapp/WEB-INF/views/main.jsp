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
/*     background-color: #f2f4f7; */
	width:1200px;
	height:795px;
	position:absolute;
}
.e0_4 { 
    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
    width: 184px;
    height: 133px;
    position: absolute;
    left: 60px;
    top: 50px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
}
.e0_5 { 
	border: 1px solid #2A3954;
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
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
}
.e2_12 { 
	border: 1px solid #2A3954;
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
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
}
.e2_16 { 
	border: 1px solid #2A3954;
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
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
}
.e2_20 { 
	border: 1px solid #2A3954;
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
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
}
.e2_24 { 
	border: 1px solid #2A3954;
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
	border: 1px solid #2A3954;
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
	border: 1px solid #2A3954;
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
	border: 1px solid #2A3954;
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

.e0_3 .nemobox {
    border: 3px solid #2A3954;
}
.e0_3 .nemobig {
    border: 3px solid #9db2bf;
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
                <li><a href="#"><span class="material-symbols-outlined">
dashboard
</span> 메인 대시보드</a></li>
                <li><a href="#"><span class="material-symbols-outlined">
hub
</span> 프로젝트 센터</a></li>
                <li class="manage"><a href="#"><span class="material-symbols-outlined">
stress_management
</span> 작업 관리</a>
                    <ul class="manageDetail">
                        <li class="smwork"><a href="#"><span class="material-symbols-outlined">
group
</span> 내 작업</a></li>
                        <li class="smwork"><a href="#"><span class="material-symbols-outlined">
diversity_3
</span> 일반 작업</a></li>
                        <li class="smwork"><a href="#"><span class="material-symbols-outlined">
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
                <li><a href=""><span class="material-symbols-outlined">
app_registration
</span> 사원 등록</a></li>
                <li><a href="#"><span class="material-symbols-outlined">
assignment_ind
</span> 마이페이지</a></li>
            </ul>
             <button type="button" class="btn btn-light btn-sm" onclick="location.href='/pms/employee/login.do';">로그아웃</button>
            <br>
        </div>

       <div id="content">
        	<p>&nbsp종합 대시보드</p>
            <hr>
            <div id="topMenu">
                <table>
<!--                     <tr class="tbTop"> -->
<!--                         <td><a href="#">프로젝트 목록</a></td> -->
<!--                         <td><a href="#">상세정보</a></td> -->
<!--                         <td><a href="#">WBS</a></td> -->
<!--                         <td><a href="#">이슈</a></td> -->
<!--                         <td><a href="#">산출물</a></td> -->
<!--                     </tr> -->
                    <tr class="tbMid">
                    <td>
                        <div class=e0_3>
						  <div class=e0_4>
						    <div class="e0_5 nemobox"><span  class="e0_6">0</span><span  class="e0_7">내 작업</span></div>
						  </div>
						  <div class=e2_11>
						    <div class="e2_12 nemobox"><span  class="e2_13">0</span><span  class="e2_14">이슈</span></div>
						  </div>
						  <div class=e2_15>
						    <div class="e2_16 nemobox"><span  class="e2_17">${signwait}</span><span  class="e2_18">결재 요청</span></div>
						  </div>
						  <div class=e2_19>
						    <div class="e2_20 nemobox"><span  class="e2_21">0</span><span  class="e2_22">산출물</span></div>
						  </div>
						  <div class=e2_23>
						    <div class="e2_24 nemobox"><span  class="e2_25">0</span><span  class="e2_26">프로젝트</span></div>
						  </div>
						  <div class=e0_24>
						    <div class="e0_25 nemobig"><span  class="e0_26">WBS
						    
						
						
						
						
						</span></div>
						    <div class="e0_27 nemobig"><span  class="e0_28">내 작업
						
						
						
						
						</span></div>
						    <div class="e0_29 nemobig"><span  class="e0_30">주요 프로젝트 현황
						<div>
						    <table>
						    <tr>
							    <th>프로젝트 코드 / 프로젝트 유형 / PM / 팀 / 진행상태 / 시작일 / 완료일 / 진척율 / 산출물 / 이슈 / 상세</th>
							    <td></td>
						    </tr>
						    </table>
						    </div>
						
						
						
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
            
      
    <script src="js/jquery-3.6.4.js"></script>
    <script>
        
    </script>
</body>

</html>
