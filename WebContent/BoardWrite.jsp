<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="lib/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
   crossorigin="anonymous"></script>
<script src="lib/semantic.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
.container{
margin:0 auto;
width:1000px;
height:700px;
}

#pro2{
 width: 130px;
   height: 75px;
   background-color: #000000;
   text-align: center;
   margin-bottom: 80px;
   border-radius: 8px;   
}
</style>

</head>
<body>
<%@ include file="TestHeader.jsp"%>

<div class = "container" >
<div class="ui divider"></div>
	  <div id="pro2">
	         <h2 class="textColor my">Product Inquiry</h2>
	         <div id="l"></div>
	      </div>
<div class="ui divider"></div>

<form action = "BoardWrite" method = "post">
<div class = "row">
<table class="ui striped table" >
  <thead>
    <tr>
      <th>게시글 작성</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    	<td>
    		<div class="ui form">
 				<div class="field">
    				<label>글 제목</label>
    				<input type="text" name= "boardTitle" maxlength = "50"  placeholder = "글 제목을 입력해주세요">
  				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div class="ui form">
  				<div class="field">
  		    		<label>글 내용</label>
  		    		<textarea name = "boardContent" maxlength = "2048" placeholder = "글 내용을 입력해주세요"style = "height :350px"></textarea>
  				</div>
  			 </div>
		</td>
   </tr>
   </tbody>
</table>
</div>
<button class="ui secondary button" style = "float:right;" type = "submit">
  확인
</button>
</form>
</div>
<%@ include file="MainFooter.jsp"%>



</body>
</html>