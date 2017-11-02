<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
   
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);   

.textColor{
   color: #323232;
   margin: 0px;
}
#pro1{
   width: 130px;
   height: 75px;
   background-color: #000000;
   text-align: center;
   margin-bottom: 60px;
   border-radius: 8px;   
}
.my{
   margin: 0 auto;
   color: whiteSmoke;
   font-family: 'Noto Sans KR', sans-serif !important;
}
#l{
   width: 100px;
   height: 1px;
   border: 1px solid whiteSmoke;
   margin-top: 5px;
   margin: 0 auto;
}
#view{
   margin-bottom: 150px;   
}
#frame6{
   margin: 0 auto;
   width: 1000px;
   height: 3000px;
}
#textView{
   width: 650px;
   height: 370px;
   background-color: #000000;
}
.vdTitle{
   text-align: center;
   padding-top: 25px;
   
}
.pText{
 font-size: 1.5em;
 font-weight: bold;
}

.titleBox{
 margin-bottom:20px;
 border-bottom:2px solid #000000;
 width:250px;
}

</style>
</head>
<body>
<%@ include file="TestHeader.jsp" %>
   <div id="frame6">
   <div class="ui divider"></div>
      <div id="pro1">
         <h2 class="textColor my">Exercise Guide</h2>
         <div id="l"></div>
      </div>
      <p class="ptitle" >운동시 참고 할 수 있는 덤벨 운동 가이드 입니다.</p>
      <div class="ui divider" style = "margin-bottom:50px;"></div>
      
      <div class ="titleBox">
      <p class="pText">1. 덤벨 숄더 프레스</p>
 	  </div>
      <div id="view">
         <div id="textView">
            <div class="vdTitle">
               <iframe width="600" height="320" src="https://www.youtube.com/embed/Ljn7DJPNk28" frameborder="0" allowfullscreen></iframe>
            </div>
         </div>
      </div>
      <div class ="titleBox">
      <p class="pText">2. 덤벨 킥벨</p>
 	  </div>
      <div id="view">   
         <div id="textView">
            <div class="vdTitle">
               <iframe width="600" height="320" src="https://www.youtube.com/embed/fuL-sqcyy18" frameborder="0" allowfullscreen></iframe>
            </div>
         </div>
      </div>
      <div class ="titleBox">
      <p class="pText">3. 푸쉬 업</p>
 	  </div>
      <div id="view">   
         <div id="textView">
            <div class="vdTitle">
               <iframe width="600" height="320" src="https://www.youtube.com/embed/-_DUjHxgmWk?list=PL4ofFqO_MVbR11T0Y8RMfYtDt3yFruFyW" frameborder="0" allowfullscreen></iframe>
            </div>
         </div>
      </div>
      <div class ="titleBox">
      <p class="pText">4. 덤벨 숄더 프레스</p>
 	  </div>
      <div id="view">   
         <div id="textView">
            <div class="vdTitle">
               <iframe width="600" height="320" src="https://www.youtube.com/embed/fuL-sqcyy18" frameborder="0" allowfullscreen></iframe>
            </div>
         </div>
      </div>
  <div class ="titleBox">
      <p class="pText">5. 덤벨 숄더 프레스</p>
 	  </div>
      <div id="view">
         <div id="textView">
            <div class="vdTitle">
               <iframe width="600" height="320" src="https://www.youtube.com/embed/fuL-sqcyy18" frameborder="0" allowfullscreen></iframe>
            </div>
         </div>
      </div>
   </div>
   <%@ include file="MainFooter.jsp" %>