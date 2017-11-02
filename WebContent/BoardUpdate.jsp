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
<% 
BoardDTO dto = (BoardDTO)session.getAttribute("dto"); 
System.out.print(dto.getId());
%>


<%@ include file="MainHeader.jsp"%>

<div class = "container" >
<div class="ui divider"></div>
	  <div id="pro2">
	         <h2 class="textColor my">Customer Service</h2>
	         <div id="l"></div>
	      </div>
<div class="ui divider"></div>

<form action = "BoardUpdate?id=<%=dto.getId()%>">
<div class = "row">
<table class="ui striped table" >
  <thead>
    <tr>
      <th>�Խñ� ����</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    	<td>
    		<div class="ui form">
 				<div class="field">
    				<label>�� ����</label>
    				<input type="text" name= "boardTitle" maxlength = "50"  value = "<%=dto.getTitle()%>">
  				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div class="ui form">
  				<div class="field">
  		    		<label>�� ����</label>
  		    		<textarea name = "boardContent" maxlength = "2048" style = "height :350px;"><%=dto.getContent()%></textarea>
  				</div>
  			 </div>
		</td>
   </tr>
   </tbody>
</table>
</div>
<button class="ui secondary button btn-boardUpdate" style = "float:right;" type = "submit">
  ����
</button>
</form>
</div>



<%@ include file="MainFooter.jsp"%>

<!-- <script>
$(".btn-boardUpdate").click(function(){
	location.href= 'BoardMain';
})


</script> -->
</body>
</html>