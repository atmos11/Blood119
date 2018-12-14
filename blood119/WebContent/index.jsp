<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려동물 헌혈 참여 - Blood 119</title>

<%@include file="./common.jsp"%>
	  <link href="./resource/css/product.css" rel="stylesheet">
</head>
<body>
    <div class="container">
    <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-1 col-md-4 pt-1">
            <a class="text-muted" href="#"></a>
          </div>
            <div class="col-1 col-md-4 d-flex justify-content-end align-items-center">  
            <a class="btn btn-sm btn-outline-secondary" href="infopage.jsp"  style="margin:10px;">소개</a> 
            <%String id= (String)session.getAttribute("id");
            if(id==null){ %>
                <a class="btn btn-sm btn-outline-secondary" href="login.jsp"  style="margin:30px;">Sign in</a>  
               <%}else{
            	   %>  
            	    <a class="btn btn-sm btn-outline-secondary" href="logoutProc.jsp"  style="margin:30px;">Logout</a>  
            	    <%} %>
          	</div>
     </div>
 <header class=" py-3">
           <div class="p-3 p-md-5 ">
        <div class="col-12 px-0">
          <img src="./resource/img/Big_Logo.png" class="rounded mx-auto d-block" style="width:30%;height:auto;">
        </div>
      </div>
      </header>
     
        <div class="row" >
          <div class="col-lg-4" style="text-align:center">
            <img class="rounded-circle"  src="./resource/img/BLOOD.png" alt="Generic placeholder image" width="140" height="140" style="background-color:#BBB">
           <h2> </h2>
            <h2>수혈/헌혈신청</h2>
             <br>
            <p>수혈을 윈하시거나 헌혈을 원하실때 간단한 form만 작성하시면 신청가능합니다.</p>
            <p><%if(id==null){ %>
             <a class="btn btn-secondary" onclick="edit();" href="#" role="button">View details &raquo;</a>
              <%}else{
            	   %> 
            <a class="btn btn-secondary" href="applyinsert.jsp" role="button">View details &raquo;</a>
            <%} %></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4" style="text-align:center">
           <img class="rounded-circle"  src="./resource/img/notice.png" alt="Generic placeholder image" width="140" height="140" style="background-color:#BBB">
            <h2> </h2>
            <h2>공지사항</h2>
            <br>
            <p>공지사항을 모아두었습니다. 공지사항을 한번씩 읽어주세요</p>
            <p><a class="btn btn-secondary" href="getNoticeList.jsp" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4" style="text-align:center">
            <img class="rounded-circle"  src="./resource/img/LOGO.png" alt="Generic placeholder image" width="140" height="140" style="background-color:#BBB">
             <h2> </h2>
            <h2>신청현황</h2>
             <br>
            <p>수혈견과 헌혈견의 신청현황을 보여주는 게시판입니다.</p>
            <p><a class="btn btn-secondary" href="getApplyList.jsp" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
      </div>
     
</body>
</html>

<script>
function edit(){
alert('로그인부터 해주세요');
}</script>