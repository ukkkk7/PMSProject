<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://me2.do/5BvBFJ57">
<style>
	 html, body {
            padding: 0px;
            margin: 0px;
            height:100%;
        }

        #container{
            height: 100%;
        }

        #leftInfo {
            width: 300px;
            height:100%;
            background-color: #27374D;
            padding: 20px;
            position: static;
            text-align: center;
            float: left;
        }

        #leftInfo > img{
            width: 200px;
            height: 100px;
            margin-bottom: 40px;
        }

        #leftInfo > img[src='images/01.jpg'] {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        #info{
            font-size: 22px;
            color:#DDD
        }

        #leftInfo > div {
            margin-bottom: 30px;
        }
        
        #leftInfo > ul{
            padding-left: 0px;
        }

        #leftInfo > ul > li{
            list-style: none;
            margin-bottom: 15px;
        }
        
        #leftInfo > ul > li > a{
            text-decoration: none;
            color: #DDD;
            border-bottom: 1px solid #CCC;
            font-size: 20px;
        }

        /* ----------------------------------------------------------------------- */

        #top{
            padding: 15px;
            border-bottom: 5px solid #27374D;
        }

        #top > h3{
            margin-left: 350px;
        }
	
</style>
</head>
<body>
	 <div id="container">
        <div id="leftInfo">

            <img src="images/rect_icon03.png">  <!-- 프로젝트 로고로 바꾸기 -->
            <img src="images/01.jpg">
            <div id="info"> 홍길동 (사원) / 개발1팀</div>

            <ul>
                <li><a href="">메인 대시보드</a></li>
                <li><a href="">프로젝트 센터</a></li>
                <li><a href="">작업 관리</a></li>
                <li><a href="">결재 안건 관리</a></li>
                <li><a href="">이슈 관리</a></li>
                <li><a href="">사원 등록</a></li>
                <li><a href="">마이페이지</a></li>
            </ul>


        </div>

        <div id="top"><h3>종합 대시보드</h3></div>

        <div></div>
        <div></div>

    </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>