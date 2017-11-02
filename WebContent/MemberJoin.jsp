<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body{
   font-family: 'Noto Sans KR', sans-serif;
}
#wire{
   width: 600px;
   height: 100px;
   margin: 0 auto;
   margin-top: 70px;
   
}
#logo{
   margin:0 auto;
   width: 370px;
   height: 150px;
   margin-top: 30px;

   text-align: center;
}
#lay{
   width: 370px;
   height: 100px;
}
#lo{
   width: 200px;
   height: 100px;
   margin-top: 80px;
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
.textAa{
   width: 340px;
   height: 40px;
}
.textB{
   margin-top: 70 px;
}
.textSize{   
   border:0px;
   outline: none;
   margin-left: 30px;
   margin-top: 7px;
   padding: 5px 10px 5px 10px;
}
.frame111{
   margin:0 auto;
   width:340px;
   border:1px solid #f0f0f0;
   margin-bottom: 0.5em;
   border-radius: 5px;
   
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
}
#tt{
   margin: 0 auto;
   width: 100%;
   height: 150px;
   margin-top: 350px;
}
#skeleton11{
   width: 360px;
   height: 307px;
   margin: 0 auto;
   padding: 10px;
   border: 1px solid #dadada;
   border-radius: 5px;
   
}
#pro{
   width: 130px;
   height: 37px;
   background-color: #323232;
   text-align: center;
   margin-bottom: 100px;
   border-radius: 8px;   
   margin: 0 auto;
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
</style>
</head>
<body>
      <%@ include file="MainHeader.jsp" %>
      <div id="frame22">
         <div id="logo">
            <div id="lay">
<!--                <img src="IMG/logo.jpg" class="img22"> -->
                  <div id="pro">
                     <h2 class="my">회원 가입</h2>
                     <div id="l"></div>
                  </div>
            </div>
         </div>
         <div id="wire">
            <form action="Login">
               <div id="skeleton11">
                  <div class="frame111">
                     <div class="userImg"><img src="IMG/id3.png" class="imgSize"></div>
                     <div class="textAa"><input type="email" class="textSize" placeholder="E-mail"></div>
                  </div>
                  <div class="frame111">
                     <div class="userImg"><img src="IMG/lock.png" class="imgSize"></div>
                     <div class="textAa"><input type="password" class="textSize" placeholder="비밀번호"></div>
                  </div>
                  <div class="frame111">
                     <div class="userImg"><img src="IMG/lock.png" class="imgSize"></div>
                     <div class="textAa"><input type="password" class="textSize" placeholder="비밀번호 확인"></div>
                  </div>
                  <div class="frame111">
                     <div class="userImg"><img src="IMG/user.png" class="imgSize"></div>
                     <div class="textAa"><input type="text" class="textSize" placeholder="이름"></div>
                  </div>
                  <div class="frame111">
                     <div class="userImg"><img src="IMG/phone.png" class="imgSize"></div>
                     <div class="textAa"><input type="text" class="textSize" placeholder="전화번호"></div>
                  </div>
                  <div class="frame111">
                     <div class="btn11"><button type="submit" class="btnSize">회원가입</button></div>
                  </div>
               </div>
            </form>
         </div>
      </div>
   <div id="tt"><%@ include file="MainFooter.jsp" %></div>
</body>
</html>