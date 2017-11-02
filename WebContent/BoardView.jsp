<%@page import="dao.MemberDTO"%>
<%@page import="dao.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>

.container{
 margin:0 auto;
 width:1200px;
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
<% BoardDTO dto =(BoardDTO)request.getAttribute("dto"); 
	session.setAttribute("dto", dto);
	MemberDTO dto2 =(MemberDTO)session.getAttribute("member");
%>

 <%@ include file="TestHeader.jsp"%>
<div class = "container" >
<div class="ui divider"></div>
	  <div id="pro2">
	         <h2 class="textColor my">Customer Service</h2>
	         <div id="l"></div>
	      </div>
<div class="ui divider"></div>
<div class = "row">
 <table class="ui celled striped table">
  <thead>
    <tr><th colspan="2">
      <%=dto.getTitle()%>
    </th>
  </tr></thead>
  <tbody>
    <tr>
      <td class="collapsing"> 작성자 </td>
      <td> <%=dto.getWriter()%></td>
    </tr>
    <tr>
      <td>작성일자</td>
      <td><%=dto.getTime()%></td>
    </tr>
    <tr>
      <td colspan = "2" style = "height:350px; vertical-align:top;"><%=dto.getContent()%></td>
    </tr>
  </tbody>
</table>
</div>
<button class="ui secondary button btn-boardList" style = "float:left;">
  목록
</button>
<%if(dto2 !=null && dto2.getName().equals(dto.getWriter())){%>

	<button class="ui secondary button btn-boarduUpdate" style = "float:right;">
  		수정
	</button>
	
	<button class="ui secondary button btn-boardDelete" style = "float:right;">
  		삭제
	</button>
<%}%>	
</div>
 <%@ include file="MainFooter.jsp"%>


<script>
$(".btn-boardList").click(function(){
	location.href= 'Paging?num=<%=dto.getId()%>';
})

$(".btn-boarduUpdate").click(function(){
	location.href= 'BoardUpdate.jsp';
})
$(".btn-boardDelete").click(function(){
	location.href= 'BoardDelete';
})

</script>

</body>
</html>