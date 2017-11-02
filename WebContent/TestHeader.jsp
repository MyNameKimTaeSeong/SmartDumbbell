<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="lib/semantic.css">
<link href="https://fonts.googleapis.com/css?family=Passion+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville|Passion+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Libre+Baskerville|Passion+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Concert+One|Libre+Baskerville|Passion+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Baloo+Bhaijaan|Bree+Serif|Concert+One|Libre+Baskerville|Passion+One" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
   crossorigin="anonymous"></script>
<script src="lib/semantic.js"></script>

<style type="text/css">
/* font-family: 'Passion One', cursive; */


@import url(http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
/* FONT-FAMILY: 'JEJU MYEONGJO', SERIF; 제주 명조*/

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
/* font-family: 'Nanum Gothic', serif; 나눔 고딕*/

@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
/* font-family: 'Noto Sans KR', sans-serif; NOTO*/

@import url(http://fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
/* font-family: 'Nanum Myeongjo', serif;  나눔 명조*/

body{
   font-family: 'Nanum Gothic', serif;
}
#wire{
   height: 250px;
   margin: 0 auto;
   
}
#frame5{
   margin: 0 auto;
   width: 1000px;
   height: 800px;
}
#pro{
   width: 130px;
   height: 35px;
   background-color: #000000;
   text-align: center;
   margin-bottom: 100px;
   border-radius: 8px;   
}

.textColor{
   color: #323232;
   margin: 0px;
}
#l{
   width: 100px;
   height: 1px;
   border: 1px solid whiteSmoke;
   margin-top: 5px;
   margin: 0 auto;
}
.my{
   margin: 0 auto;
   color: whiteSmoke;
   font-family: 'Noto Sans KR', sans-serif !important;
}
.us{
   margin: 0 auto;
   color: whiteSmoke;
}
#logo{
   margin:0 auto;
   width: 370px;
   height: 100px;
   margin-top: 30px;
   text-align: center;
}
#lay{
   width: 400px;
   height: 100px;
   text-align: left;
   display: inline-block;
}
#lo{
   width: 200px;
   height: 100px;
   float: right;
   margin: 25px;
   margin-top: 60px;
}

.img22{
   width: 150px;
   height: 150px;
   text-align: left;
}

.userImg{
   width:40px;
   height:40px;
   position: absolute;
   
}
.textA{
   width: 340px;
   height: 40px;   
}
.textB{
   font-family: 'Noto Sans KR', sans-serif;
}
.textSize{   
   border:0px;
   outline: none;
   margin-left: 30px;
   margin-top: 7px;
   padding: 5px 10px 5px 10px;
}
.frame11{
   margin:0 auto;
   width:340px;
   border:1px solid #f0f0f0;
   margin-bottom: 0.5em;
   border-radius: 5px;
   
}
.frame22{
   margin:0 auto;
   width:360px;
   border:0px;
   border:1px solid #dadada;
   margin-bottom: 0.5em;
   border-radius: 5px;
   background-color: #fffff;
}
.imgSize{
   width: 20px;
   height: 20px;
   margin-top: 0.5em;
   margin-left: 0.5em;
   
}
.btn11{
   width: 340px;
   height: 40px;
   text-align: center;
   margin: 0 auto;
}
.btnSize{
   width: 340px;
   height: 40px;
   border-radius: 5px;
   border: 0px;
   text-align: center;
   background-color: #0f0f0f;
   color: whiteSmoke;
   font-family: 'Noto Sans KR', sans-serif;
}
.signUp{
   
   text-align: center;
   width: 360px;
   height: 40px;
}
#tt{
   margin: 0 auto;
   width: 1000px;
   height: 150px;
   margin-top: 350px;
}
#skeleton11{
   width: 360px;
   height: 161px;
   margin: 0 auto;
   margin-top: 40px;
   padding: 10px;
   border: 1px solid #dadada;
   border-radius: 5px;
}
#skeleton22{
   margin-top: 10px;
   width: 370px;
   margin: 0 auto;
   padding-top: 20px;
}
#dd{
   padding-top: 8px;
}
.ss{
   text-decoration: none;
   color:deepSkyBlue;
   font-family: 'Noto Sans KR', sans-serif;
}
#span{
   font-family: 'Noto Sans KR', sans-serif;
   color:#ffffff;
}


#contentIMG{
   background-image:url("IMG/dumbbel1.jpg");
   background-size:cover;
   background-repeat:no-repeat;
   width:100%;
   height: 400px;
   background-color:skyblue;
   margin:auto 0;
   transition:3s;
   
}
#contentIMG:HOVER{
   background-color: #000051;
}

#btn11{
   background-color: #232323;
}
#btn22{
   background-color: #232323;
   border: 0px;
   color: whiteSmoke;
   padding: 7px;
   border-radius: 5px;
   font-family: 'Noto Sans KR', sans-serif !important;
}
#ma{
   margin-right: 7px;
}
#wid11{
   width: 770px;
}
#wid22{
   width: 800px;
}
#ic{
   float: right;
   margin-top: 3px;
}
#a{
   text-decoration: none;
   color: #232323;
}
#he{
   width: 100%;
   height: 100px;
}
#ii{
   width: 90px;
   height: 90px;
   margin-top: 10px;
}
.h{
   margin: 0 auto;
   width: 1168px;
   height: 100px;   
   
}
#tt{
font-family: 'Bree Serif', serif;
font-family: 'Concert One', cursive;
font-family: 'Libre Baskerville', serif;
font-family: 'Passion One', cursive;
font-family: 'Baloo Bhaijaan', cursive;
   margin: 0 auto;
   font-size: 3em;
   position: absolute;
   line-height: 125px;
   color: #232323;
}

.ptitle{
font-size:1.3em;
font-weight: bold;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="he">
   <a href = "MainPage.jsp"><div class="h"><img src="IMG/logo.jpg" id="ii"><label id="tt">Smart Dumbbell</label></div></a>  
</div>

<div id="header"style="width:100vw; height:80px;;background-color: #000000;margin-bottom:100px;">
   <div style='width:1200px; height:100%;background-color: #000000; margin: 0 auto;'> 
   <div class="ui inverted segment" style = "background-color:#000000; width:100%;height:100%;">
      <div class="ui inverted secondary pointing menu" style = "border-color:#000000!important;width:100%;height:100%!important;margin-top:5px;">
             <a href = "Introduction.jsp" class="item menu a" style = "font-size:1.4em;"><span id="span">회사소개</span></a>
             <div>&nbsp&nbsp</div>
             <a href = "Product.jsp" class="item menu b" style = "font-size:1.4em;"><span id="span">제품소개</span></a>
           <div>&nbsp&nbsp</div>
            <a href= "Guide.jsp" class="item menu c" style = "font-size:1.4em;"><span id="span">운동가이드</span></a>
             <div>&nbsp&nbsp</div>
           <a href ="Paging?num=1"class="item menu d" style = "font-size:1.4em;"><span id="span">고객센터</span></a>
             <div>&nbsp&nbsp</div>
            <div style = "width:18vw;"></div>
       <c:choose>   
         <c:when test="${empty member}">
              
              <button class="ui inverted button btn-login"style = "float:right;font-size:1em; height:80%;"><span id="span">로그인</span></button>
              <button class="ui inverted button btn-signup" style = "float:right;font-size:1em;height:80%;"><span id="span">회원 가입</span></button>
            
         </c:when> 
         <c:otherwise>
                
             <button class="ui inverted button btn-logout" style = "float:right;font-size:1em;height:80%;"><span id="span">로그 아웃</span></button>
             <button class="ui inverted button btn-mypage" style = "float:right;font-size:1em;height:80%;"><span id="span">마이페이지</span></button>
              
         </c:otherwise>
  </c:choose>
   
        </div>
    </div>
  
    
  </div>
  
 
  
</div>


<!-- MODAL -->
<div class="ui modal lo" id="wid11">
 <i class="remove icon close" id="ic"></i>
   <div class="image content">
     <div class="ui medium image">
       <img src="IMG/Logo1212.png">
     </div>
   <div class="description">
     <div class="ui header" align="center">로그인</div>
      <form action = "LoginCheck"  id="LoginCheck" method = "post">
         <div id="wire">
            <div id="skeleton11">
               <div class="frame11">
                  <div class="userImg"><img src="IMG/user.png" class="imgSize"></div>
                  <div class="textA"><input type="email" class="textSize" placeholder="E-mail" name = "email"></div>
               </div>
               <div class="frame11">
                  <div class="userImg"><img src="IMG/lock.png" class="imgSize"></div>
                  <div class="textA"><input type="password" class="textSize" placeholder="Password" name = "pw"></div>
               </div>
               <div class="frame11">
                  <div class="btn11"><button type="submit" class="btnSize">로그인</button></div>
               </div>
            </div>
            <div id="skeleton22">
               <div class="frame22">
                  <div class="signUp"><div id="dd"><span id="span">new to us?</span> <a href="#" class="ss">Sign Up</a></div></div>
               </div>
            </div>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- MODAL -->
<div class="ui modal jo" id="wid22">
  <i class="remove icon close" id="ic"></i>
   <div class="image content">
     <div class="ui medium image">
       <img src="IMG/Logo1212.png">
     </div>
   <div class="description">
     <div class="ui header" align="center">회원가입</div>
        <form action = "MemberJoin"  id="MemberJoin" method = "post">
            <div class="ui form">
               <div class="inline field">
                 <label><h4>이메일&emsp;&emsp;&emsp;&emsp;</h4></label>
                 <input type="email" placeholder="E-mail" id="emailcheck" name = "email">
                 <button type="button" id="btn22">중복확인</button>
               </div>
               <div class="inline field">
                 <label><h4>비밀번호&emsp;&emsp;&emsp;</h4></label>
                 <input type="password" placeholder="Password" id="signup" name = "pw">
               </div>
               <div class="inline field">
                 <label><h4>이름&emsp;&emsp;&emsp;&emsp;&emsp;</h4></label>
                 <input type="text" placeholder="Name" id="signup" name ="name">
               </div>
                 <div class="inline field">
                 <label><h4>연락처&emsp;&emsp;&emsp;&emsp;</h4></label>
                 <input type="tel" placeholder="Tel" id="signup" name ="tel">
               </div>
           </div>
        </form>
    </div>
   </div>
  
  <div class="actions">
    <div class="ui black deny button">취소</div>
    <div class="ui positive right labeled icon button btn-signupck" id="btn11">가입
      <i class="checkmark box icon"></i>
    </div>
  </div> 
</div>
<script>

$(".btn-login").click(function(){
   $('.ui.modal.lo').modal('show');
})

$(".btn-logout").click(function(){
   location.href= 'SessionInvalidate';
})

$(".btn-mypage").click(function(){
   location.href= 'ShowMyPage';
})

$(".btn-signup").click(function(){
   $('.ui.modal.jo').modal('show');
})

$(".btn-signupck").click(function(){
   $("#MemberJoin").submit();
})


$(".ss").click(function(){
	 $('.ui.modal.lo').modal('close');
	 $('.ui.modal.jo').modal('show');
})
		
		
function signup(){
	 $('.ui.modal.jo').modal('show');
}

function closeLo() {
	location.href= 'MainPage.jsp';
}

$(".icon.close").trigger("click")

$(".icon.close").click(function () {
	$('.ui.modal.jo.').modal('close');
})

$('.item.menu.a').hover(function(){
	$('.item.menu.a').css('border-bottom','2px solid #ffffff');
},
function(){
	$('.item.menu.a').css('border-bottom','2px solid #000000');
});

$('.item.menu.b').hover(function(){
	$('.item.menu.b').css('border-bottom','2px solid #ffffff');
},
function(){
	$('.item.menu.b').css('border-bottom','2px solid #000000');
});

$('.item.menu.c').hover(function(){
	$('.item.menu.c').css('border-bottom','2px solid #ffffff');
},
function(){
	$('.item.menu.c').css('border-bottom','2px solid #000000');
});

$('.item.menu.d').hover(function(){
	$('.item.menu.d').css('border-bottom','2px solid #ffffff');
},
function(){
	$('.item.menu.d').css('border-bottom','2px solid #000000');
});

$('.item.menu.e').hover(function(){
	$('.item.menu.e').css('border-bottom','2px solid #ffffff');
},
function(){
	$('.item.menu.e').css('border-bottom','2px solid #000000');
});

function get() {
	   
	var email = $('#emailcheck').val(); //해당아이디값을 가져온다 getelememtbyid().value 값과 같은듯..
    $.ajax({
       url : "EmailCheck",
       data : "email=" + email, //get방식일 경우 url : 'updatetest.htm?name=황호준&sex=male' 이런식으로 쓸쑤 있다
       type : "post",
       success : function(result) {
         
          /* var obj = JSON.parse(result);
          document.getElementById("result").innerHTML = obj.id;  //son을 사용할때 ..*/
          
          text1= "이미 사용중인 이메일입니다.";
          text2 = "사용 가능한 이메일입니다.";
          
          if($.trim(result)=="true"){
        	  document.getElementById("result").innerHTML = text1;
        	  document.MemberJoin.emailcheck.focus();
        	 check = false;
          }else{
        	  document.getElementById("result").innerHTML = text2;
        	  check = true;
          }
       }
    });
 }

</script>
</body>
</html>