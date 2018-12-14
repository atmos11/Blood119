<%@ page import="java.util.List"%>
<%@ page import="blood119.notice.dao.NoticeDAO"%>
<%@ page import="blood119.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	NoticeVO vo = new NoticeVO();
	NoticeDAO noticeDao = new NoticeDAO();
	List<NoticeVO> boardList = noticeDao.getNoticeList(vo);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
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
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
						<% for(NoticeVO board: boardList) { %>
						<tr>
						<td><%=board.getNotice_index() %></td>
						<td align="left"><a href="getNotice.jsp?notice_index=<%=board.getNotice_index() %>"><%=board.getTitle() %></a></td>
						<td><%=board.getWriter() %></td>
						<td><%=board.getNotice_date() %></td>
						<td><%=board.getNotice_hits() %></td>
						</tr>
						<% } %>
                    </tbody>
                </table> 
                <br>
				<a href="newNotice.jsp">등록</a>  
		</div>
	</div>
</div>
</body>
</html>
