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
   font-family: 'Noto Sans KR', sans-serif !important;
}
#wireF {
   width: 100%;
   height: 190%;
   margin: 0 auto;
/*    background-image: url("IMG/blackwood.jpg"); */
}

#myF {
   width: 1000px;
   margin: 0 auto;
   /*    border: 1px solid black; */
}

#my_today_kinds {
   margin: 0 auto;
    width: 810px;
    height: 366px;
    background-color: #00b5ad;
    padding-top: 5px;
    border-radius: 5px;
}

#myKinds {
   width: 800px;
    height: 133px;
    margin: 0 auto;
    transform: translate(0%,-15%);
}

#week {
   width: 1000px;
    height: 344px;
    background-color: #00b5ad;
    padding-top: 5px;
    border-radius: 5px
}

#myRank {
   height: 440px;
    width: 1000px;
    text-align: center;
    margin: 0 auto;
}

.my_rank {
   width: 60px;
   height: 60px;
   padding-top: 18px;
   float: left;
}

.my_img {
   width: 60px;
   height: 60px;
   float: left;
}

.my_kcal {
    width: 150px;
    height: 60px;
    padding-top: 18px;
    float: left;
    font-size: 20px;
}

#myRanking {
   width: 320px;
    height: 165px;
    display: inline-block;
    margin-right: 150px;
    border-radius: 5px;
    background-color: #00b5ad;
}

#my_R_Frame {
   width: 310px;
   height: 180px;
   border-radius: 5px;
   background-color: #ffffff;
   border: 1px solid #dedede;
   padding-top: 30px;
}
.myRank_frameT {
   display: table;
    width: 160px;
    height: 60px;
    margin: 0 auto;
    border-radius: 5px;
    border-left: 1px solid #dedede;
    border-right: 1px solid #dedede;
    border-bottom: 1px solid #dedede;
    border-radius: 5px;
    background-color: #ffffff;
    border-radius: 30px;
    transform: translate(0%,-50%);
}
.myRank_frame {
   display: table;
    width: 310px;
    height: 60px;
    margin: 0 auto;
    border-radius: 5px;
    border-left: 1px solid #dedede;
    border-right: 1px solid #dedede;
    border-bottom: 1px solid #dedede;
    border-radius: 5px;
    background-color: #ffffff;
    transform: translate(0%,-45%)
}

.myRank_title {
   width: 150px;
   height: 60px;
   margin: 0 auto;
   padding-top: 18px;
   font-size: 25px;
   display: table;
}

#allRanking {
   width: 320px;
    height: 222px;
    display: inline-block;
    padding-top: 5px;
    padding-left: 5px;
    border-radius: 5px;
    background-color: #00b5ad
}
.allRank_frameT {
   display: block;
    width: 161px;
    height: 60px;
    border-left: 1px solid #dedede;
    border-right: 1px solid #dedede;
    border-bottom: 1px solid #dedede;
    background-color: #ffffff;
    transform: translate(0%,-50%);
    margin: 0 auto;
    border-radius: 30px;
}
.allRank_frame {
   display: block;
   width: 310px;
   height: 60px;
   border-radius: 5px;
   border-left: 1px solid #dedede;
   border-right: 1px solid #dedede;
   border-bottom: 1px solid #dedede;
   background-color: #ffffff;
   transform: translate(0%,-44%);
}

.user_rank {
   width: 60px;
   height: 60px;
   padding-top: 18px;
   float: left;
}

.user_img {
   width: 60px;
   height: 60px;
   float: left;
}

.user_kcal {
   width: 180px;
   height: 60px;
   padding-top: 7px;
   float: left;
   float: left;
}

.allRank_title {
   width: 150px;
   height: 60px;
   margin: 0 auto;
   padding-top: 18px;
   font-size: 25px;
   display: table;
}
#pro1{
   width: 130px;
   height: 35px;
   background-color: #000000;
   text-align: center;
   margin-bottom: 60px;
   border-radius: 8px;   
}
</style>
</head>
<body>
   <%@ include file="TestHeader.jsp"%>

   <div id="wireF">
   <div style="margin: 0 auto; width: 1000px; height: 100%;">
<div id="pro1">
         <h2 class="textColor my">My Page</h2>
         <div id="l"></div>
      </div>
      <p class="ptitle">자신의 운동 기록을 확인할 수 있는 공간입니다.</p>
      <div id="myRank">
      <div style="text-align: center; margin-bottom: 50px; color: #ffffff">
            
            <div class="ui divider" style="margin-bottom: 100px; border-bottom: 1px solid #a0a0a0;"></div>
               
         </div>
         
         <div id="myRanking">
            <div class="myRank_frameT"
               style="border-top: 1px solid #dedede; margin-top: 5px;">
               <div class="myRank_title">나의 랭킹</div>
            </div>            
            <div class="myRank_frame" style="border-top:">
               <div class="myRankk_rank">
                  <div class="my_rank" style="font-size: 30px;">
                         <c:forEach var="list"  items="${list3}" varStatus="status">
                  	 
                   <c:if test="${list.email==member.email}">              
                 	${status.count}
                   </c:if> 
                  </c:forEach>
                  
                  </div>
                  <div class="my_img">
                     <img src="IMG/rank_1.jpg"
                        style="width: 50px; height: 50px; padding-top: 5px;">
                  </div>
                  <div class="my_kcal">
                     <div>
                     
                  <c:forEach var="list"  items="${list3}" >
                   <c:if test="${list.email==member.email}">
                   	${list.name}
              
                   </c:if> 
                  </c:forEach>
                     </div>
                   
                  </div>
               </div>
            </div>
            <div class="myRank_frame">
               <div class="myRankk_point" style="font-size: 20px; margin-top: 18px;">
               
                  <c:forEach var="list"  items="${list3}" >
                   <c:if test="${list.email==member.email}">
                  <span style="font-size: 20px;">	${list.kcal}</span> 
                  <span style="font-size: 15px;">kcal</span>                  
                   </c:if> 
                  </c:forEach>           
                                 
               </div>
            </div>      
         </div>
         
         
         <div id="allRanking">
            <div class="allRank_frameT" style="border-top: 1px solid #dedede;">
               <div class="allRank_title">전체 랭킹</div>
            </div>

            <div class="allRank_frame">
               <div class="user_rank" style="font-size: 30px;">1</div>
               <div class="user_img">
                  <img src="IMG/rank_1.jpg"
                     style="width: 50px; height: 50px; padding-top: 5px;">
               </div>
               <div class="user_kcal">
                  <div style="font-size: 20px; margin-bottom: 5px;">${list3.get(0).name}</div>
                  <span style="font-size: 15px;">${list3.get(0).kcal}kcal</span>
               </div>
            </div>
            <div class="allRank_frame">
               <div class="user_rank" style="font-size: 30px;">2</div>
               <div class="user_img">
                  <img src="IMG/rank_2.jpg"
                     style="width: 50px; height: 50px; padding-top: 5px;">
               </div>
               <div class="user_kcal">
                  <div style="font-size: 20px; margin-bottom: 5px;">${list3.get(1).name}</div>
                  <span style="font-size: 15px;">${list3.get(1).kcal}kcal</span>
               </div>
            </div>
            <div class="allRank_frame">
               <div class="user_rank" style="font-size: 30px;">3</div>
               <div class="user_img">
                  <img src="IMG/rank_3.jpg"
                     style="width: 50px; height: 50px; padding-top: 5px;">
               </div>
               <div class="user_kcal">
                  <div style="font-size: 20px; margin-bottom: 5px;">${list3.get(2).name}</div>
                  <span style="font-size: 15px;">${list3.get(2).kcal}kcal</span>
               </div>
            </div>
         </div>
      </div>
      
      
      
      <div id="myF">
      <div class="ui divider" style="margin-bottom: 100px; border-bottom: 1px solid #a0a0a0;"></div>
         <div id="my_today_kinds">
            <div style="text-align: center; margin:0 auto; margin-bottom: 6px; 
                     color: #000000; width: 250px; margin-bottom: 5px; 
                     border-radius: 20px; background-color: #ffffff; 
                     padding-top: 5px; padding-bottom: 5px; transform: translate(0%,-60%); border: 1px solid #dedede;">
                     
               <h3>하루 운동량</h3>               
            </div>
            <div id="myKinds">
               <table class="ui celled table" style="text-align: center;">
                  <thead>
                     <tr>
                        <th style="width: 150px;">유형</th>
                        <th style="width: 80px;">횟수</th>
                        <th style="width: 130px;">오늘의 칼로리</th>
                        <th>정확도/달성률</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>이두운동</td>
                        <td>${goodCount[0]}회 </td>
                        <td>${kcal[0] }kcal</td>
                        <td>   
                           <div class="ui tiny progress blue type1">
                              <div class="bar"></div>
                              <div class="label">정확도${accuracy[0]}%</div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td>이두&어깨운동</td>
                        <td>${goodCount[1]}회 </td>
                        <td>${kcal[1] }kcal</td>
                        <td>      
                           <div class="ui tiny progress blue type2">
                              <div class="bar"></div>
                              <div class="label">정확도${accuracy[1]}%</div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td>삼두운동</td>
                        <td>${goodCount[2]}회 </td>
                        <td>${kcal[2] }kcal</td>
                        <td>                           
                           <div class="ui tiny progress blue type3">
                              <div class="bar"></div>
                              <div class="label">정확도${accuracy[2]}%</div>
                           </div>
                         </td>
                     </tr>
                     <tr>
                        <td>어깨운동</td>
                        <td>${goodCount[3]}회 </td>
                        <td>${kcal[3] }kcal</td>
                        <td>         
                           <div class="ui tiny progress blue type4">
                              <div class="bar"></div>
                              <div class="label">정확도${accuracy[3]}%</div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td>팔굽혀펴기</td>
                        <td>${goodCount[4]}회</td>
                        <td>${kcal[4] }kcal</td>
                        <td>                           
                           <div class="ui tiny progress blue type5">
                              <div class="bar"></div>
                              <div class="label">정확도${accuracy[4]}%</div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td colspan="2">총 칼로리</td>
                        <td>${kcalsum}kcal</td >
                        <td>                           
                           <div class="ui small progress yellow type6">
                              <div class="bar"></div>
                              <div class="label">달성률 ${Arate}%</div>
                           </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
         
         
         <div class="ui divider" style="margin-top: 100px; margin-bottom: 100px; border-bottom: 1px solid #a0a0a0;"></div>
         
         <div id="week">
            <div style="text-align: center; margin:0 auto; margin-bottom: 6px; 
                     color: #000000; width: 250px; margin-bottom: 5px; border-radius: 20px; 
                     background-color: #ffffff; padding-top: 5px; padding-bottom: 5px; transform: translate(0%,-60%); border: 1px solid #dedede;">
               <h3>주간 운동량</h3>
                  
            </div>
            <table class="ui celled structured table"
               style="text-align: center; width: 990px; margin: 0 auto; transform: translate(0%,-6.2%)">
               <thead>
                  <tr>
                     <th rowspan="2">날짜</th>
                     <th rowspan="2">달성률</th>
                     <th rowspan="2">정확도</th>
                     <th colspan="5">운동 자세</th>
                  </tr>
                  <tr>
                     <th>이두운동</th>
                     <th>이두&어깨운동</th>
                     <th>삼두운동</th>
                     <th>어깨운동</th>
                     <th>팔굽혀펴기</th>
                  </tr>
               </thead>
               <tbody>
           
             <c:forEach items ="${list2}" var = "weekList"  varStatus="i">
           		  <tr>
                     <td>${weekList.ddate}</td>
                      <td>${weekList.arate}% </td>
                      <td>${weekList.totalacc}% </td>
              <td class="center aligned">${weekList.b0counting }</td>
                     <td>${weekList.b1counting }</td>
                     <td>${weekList.b2counting }</td>
                     <td>${weekList.b3counting }</td>
                     <td>${weekList.b4counting }</td>
                     </tr>
                     
             </c:forEach>
             
               </tbody>
            </table>
         </div>
      </div>
      </div>
   </div>
   <%@ include file="MainFooter.jsp" %>

   <script type="text/javascript">
   
   
   $('.ui.dropdown')
     .dropdown()
   ;
   
   $('.type1').progress({
	   percent: ${accuracy[0]}
	 });
   $('.type2').progress({
	   percent: ${accuracy[1]}
	 });
   $('.type3').progress({
	   percent: ${accuracy[2]}
	 });
   $('.type4').progress({
	   percent: ${accuracy[3]}
	 });
   $('.type5').progress({
	   percent: ${accuracy[4]}
	 });
   $('.type6').progress({
	   percent: ${Arate}
	 });
   
  
</script>
</body>
</html>