<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
   
@import url(http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
/* FONT-FAMILY: 'JEJU MYEONGJO', SERIF; 제주 명조*/

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
/* font-family: 'Nanum Gothic', serif; 나눔 고딕*/

@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
/* font-family: 'Noto Sans KR', sans-serif; NOTO*/

@import url(http://fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
/* font-family: 'Nanum Myeongjo', serif;  나눔 명조*/

body{
   margin: 0 auto;
   background-color: #ffffff;
}
#about{
   width: 140px;
   height: 35px;
   background-color: #000000;
   text-align: center;
   margin-bottom: 100px;
   border-radius: 8px;   
}

#frame7{
   margin: 0 auto;
   width: 1000px;
   height: 700px;
}

</style>
</head>
<body>
<%@ include file="TestHeader.jsp" %>
   <div id="frame7">
         <div class="ui divider"></div>
      <div id="about">
         <h2 class="textColor us">ABOUT US</h2>
         <div id="l"></div>
      </div>
      <p class ="ptitle">5얼, 5명의 얼리어답터</p>
      <div class="ui divider"></div>
      <div class="ui segment" style = "width:100%;height:500px; border-color:#ffffff;box-shadow:0px 0px 0px 0px;">
  <img class="ui small left floated image" src="IMG/Logo1212.png" style ="width:500px;height:500px;">
  <p style = "font-size:1.5em;">회사소개	5명의 얼리어답터 5얼을 소개합니다.
</p>
       <p  style = "font-size:1.5em;">Eu quo homero blandit intellegebat. Incorrupte consequuntur mei id. Mei ut facer dolores adolescens, no illum aperiri quo, usu odio brute at. Qui te porro electram, ea dico facete utroque quo. Populo quodsi te eam, wisi everti eos ex, eum elitr altera utamur at. Quodsi convenire mnesarchum eu per, quas minimum postulant per id.</p>
      </div>
      <div class="ui divider"></div> 
   </div>
   <%@ include file="MainFooter.jsp" %>
   
   
</body>
</html>