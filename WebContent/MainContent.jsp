<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

.main_text{
float:right;
padding-top: 50px;
padding-bottom: 50px;
text-align: center;
font-size: 15px;
width:100%;
}

.wrapper{
   width:1000px;
   height:400px;
   margin:0 auto;
}

#pro{
   width: 160px;
   height: 35px;
   background-color: #000000;
   text-align: center;
   margin-bottom: 25px;
   border-radius: 8px;   
}

.textColor{
   color: #323232;
   margin: 0px;
}
#l{
   width: 160px;
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

.block {
display:inline-block;

}

.block b{
float:left;
}

.block c{
float:left;
}
#ab{
display:inline-block;
margin:0 auto;
width: 1000px;
height: 500px;
text-align:center;
}

.ui.card.a{
display:inline-block;
margin:10px;
width:250px;
height:300px;
}

.ui.card.b{
display:inline-block;
margin:10px;
width:250px;
height:300px;
}

.ui.card.c{
display:inline-block;
margin:10px;
width:250px;
height:300px;
}

.aa{
width:250px;
height:165px!important;
}


</style>
</head>


<body>
<div class ="wrapper">

<div class="ui divider"></div>
<div id="pro">
         <h2 class="textColor my">OUR SERVICE</h2>
         <div id="l"></div>
</div>
<div id="ab">
			<div class="ui card a" style = "position:static;">
  				<div class="image a">
    				<img class= "aa" src="IMG/smartdumbbell.jpg">
 				</div>
 			 <div class="content">
   				 <a class="header">Smart Dumbbell</a>
   				 	
    			<div class="description">
    				<p>자신의 운동량과 바른 자세</p>
    				<p>스마트아령을 이용한다면 쉽게 알 수 있습니다.<p>
   			    </div>
  			</div>
		</div>

<div class="ui card b" style = "position:static;" onclick="sessionCheck()">
  				<div class="image b">
    				<img class="aa" src="IMG/planning.jpg">
 				</div>
 			 <div class="content">
   				 <a class="header">Exercise Planning</a>
   				 	
    			<div class="description">
    				<p> 자신의 운동 계획</p>
    				<p> 스마트 덤벨과 시작하세요</p>
    				<p>&nbsp</p>
   			    </div>
  			</div>
</div>

<input type="hidden" value="${sessionScope.member}" id="sessionCheck">

<div class="ui card c" style = "position:static;">
  				<div class="image c">
    				<img class = "aa" src="IMG/as.jpg">
 				</div>
 			 <div class="content">
   				 <a class="header">A/S</a>
   				 	
    			<div class="description">
    				<p>제품 문의 및 수리, 불편사항 접수</p>
    				<p>&nbsp</p>
    				<p>&nbsp</p>
   			    </div>
  			</div>
</div>
</div>

<div class="ui divider"></div>
</div>
<script>
$(".ui.card.a").click(function(){
	   location.href= 'Product.jsp';
	})

$(".ui.card.c").click(function(){
   location.href= 'BoardMain.jsp';
})


function sessionCheck(){
	var data = $("#sessionCheck").val();
	
	if(data == ""){
			$('.ui.modal.lo').modal('show');		
	}else{
		   location.href= 'MyPage.jsp';
	}
		   
}

</script>

</body>
</html>