<%@ page import="java.util.List"%>
<%@ page import="blood119.apply.dao.ApplyDAO"%>
<%@ page import="blood119.apply.vo.ApplyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
	ApplyVO vo = new ApplyVO();
	ApplyDAO applyDao = new ApplyDAO();
	List<ApplyVO> boardList = applyDao.getApplyList(vo);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신청 목록 게시판</title>
<%@include file="./common.jsp"%>
	  <link href="./resource/css/product.css" rel="stylesheet">
	<script src="./resource/js/boostrap.min.js"></script>
	<script src="./resource/js/jquery-1.12.3.js"></script>
	<script src="./resource/js/script.js"></script>
</head>
<body>
    <div class="container">
<%@include file="./header.jsp" %>

    <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-1 col-md-4 pt-1">
            <a class="text-muted" href="#"></a>
          </div>
		  	  <div class="col-10 col-md-4 text-center" style="text-align:center;">
	
   </div> 

            <div class="col-1 col-md-4 d-flex justify-content-end align-items-center">  
             <form action="#" method="get">
                <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                    <span class="input-group-btn">
                         <img class="rounded-circle"  src="./resource/img/notice.png" alt="Generic placeholder image" width="40" height="40" >
                    </span>
                    <input class="form-control" id="system-search" name="q" placeholder="Search for" required>
                    <span class="input-group-btn">
                         <img class="rounded-circle"  src="./resource/img/notice.png" alt="Generic placeholder image" width="40" height="40" >
                    </span>
                    
                </div>
            </form>
          </div>
        </div>
        <br>
	
			<div class="row">
		<div class="col-md-12">
    	 <table class="table table-list-search">
                    <thead>
                        <tr>
                            <th>분류</th>
                            <th>신청자</th>
                            <th>신청날짜</th>
                            <th>지역</th>
                            <th>반려동물이름</th>
                            <th>견종</th>
                            <th>혈액형</th>
							<th>성별</th>
							<th>나이</th>
							<th>현재상황</th>
                        </tr>
                    </thead>
                    <tbody>
						<% for(ApplyVO board: boardList) { %>
						<tr>
						<td><%=board.getApply_sort() %></td>
						<td><%=board.getApply_id()%></td>
						<td><%=board.getApply_date() %></td>
						<td><%=board.getLocation() %></td>
						<td><%=board.getAni_name() %></td>
						<td><%=board.getAni_type() %></td>
						<td><%=board.getAni_bloodtype() %></td>
						<td><%=board.getAni_gender() %></td>
						<td><%=board.getAni_age() %></td>
						<td><%=board.getResult() %></td>
						</tr>
						<% } %>
                    </tbody>
                </table>   
		</div>
	</div>
</div>

</body>
</html>

