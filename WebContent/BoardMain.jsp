<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
   
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
<style type="text/css">

.container{
	width:1000px;
	height: 850px;
	margin:0 auto;
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

<div class = "container">
<div class="ui divider"></div>
	  <div id="pro2">
	         <h2 class="textColor my">Customer Center</h2>
	         <div id="l"></div>
	      </div>
	       <p class="ptitle">불편 사항 및 제품 문의 사항을 올려 주세요</p>
	      <p class="ptitle">스마트 덤벨은 항상 고객님들의 불편을 최소화하기 위해 최선을 다하고 있습니다.</p>
	      <div class="ui divider"></div>
		<div class = "row">
		
		
	<table class="ui celled black table" >
	  <thead>
	    <tr>
	      <th style ="width:10vw;text-align:center;">글 번호</th>
	      <th style ="width:65vw;text-align:center;">제목</th>
	      <th style ="width:10vw;text-align:center;">작성자</th>
	      <th style ="width:15vw;text-align:center;">작성일</th>
	    </tr>
	  </thead>
	  <tbody>
	 <c:forEach var="boardList" items="${list}">
	               <tr>
	                  <td style="text-align:center;">${boardList.id}</td>
	                  <td><a href="BoardView?id=${boardList.id}"> ${boardList.title }</a></td>
	                  <td>${boardList.writer}</td>
	                  <td>${boardList.time }</td>
	               </tr>
	 </c:forEach>
	   </tbody>
		   <tfoot>
		    <tr><th colspan="4" style="text-align:center;">
		      <div  class="ui pagination menu"  style ="margin:0 auto;" >
		     
		        <a href ="Paging?num=${paging.firstPageNo}" class="icon item">
		          <i class="left chevron icon"></i>
		        </a>
		         <a href="Paging?num=${paging.prevPageNo}" class="icon item">
		          <i class="left chevron icon"></i>
		        </a>
		        
		        <c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1"> 
		               <a class ="item"  href="Paging?num=${i}">${i}</a>      
		        </c:forEach>
		        
		        <a  href="Paging?num=${paging.nextPageNo}" class="icon item">
		          <i class="right chevron icon"></i>
		        </a>
		         <a  href="Paging?num=${paging.finalPageNo}" class="icon item">
		          <i class="right chevron icon"></i>
		        </a>	        
		      </div>
		      <button class="ui secondary button btn-boardWrite" style = "float:right;">
		  		글쓰기
			</button>
		    </th>
		  </tr>	 
		  </tfoot> 
	  </table>
	</div>
</div>




<%@ include file="MainFooter.jsp" %> 
<script>
$(".btn-boardWrite").click(function(){
	location.href= 'BoardWrite.jsp';
})
</script>
</body>
</html>