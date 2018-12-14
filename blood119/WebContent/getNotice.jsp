<%@ page import="blood119.notice.dao.NoticeDAO"%>
<%@ page import="blood119.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String notice_index = request.getParameter("notice_index");
	NoticeVO vo = new NoticeVO();
	vo.setNotice_index(Integer.parseInt(notice_index));
	NoticeDAO noticeDao = new NoticeDAO();
	NoticeVO notice = noticeDao.getNotice(vo);
	noticeDao.updatecnt(notice);
	notice= noticeDao.getNotice(vo);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 게시글 보기</title>
<%@include file="./common.jsp"%>
	  <link href="./resource/css/product.css" rel="stylesheet">
	<script src="./resource/js/boostrap.min.js"></script>
	<script src="./resource/js/jquery-1.12.3.js"></script>
	<script src="./resource/js/script.js"></script>
</head>
<body>
    <div class="container">
<%@include file="./header.jsp" %>
<div align="center">
<h2>글 상세보기</h2>
<hr>
<form action="updateNotice.jsp?notice_index=<%=notice.getNotice_index()%>" method="post">
<table class="table table-bordered">
  <tbody>
    <tr>
      <th scope="row">제목</th>
      <td><%=notice.getTitle() %></td>

    </tr>
    <tr>
      <th scope="row">작성자</th>
      <td><%=notice.getWriter()%></td>
    </tr>
    <tr>
      <th scope="row">내용</th>
      <td><textarea name="contents" class="form-control" cols="40" rows="10" readonly>
		<%=notice.getContents() %></textarea></td>

    </tr>
        <tr>
      <th scope="row">등록일</th>
      <td><%=notice.getNotice_date()%></td>
    </tr>
    <tr>
		<td>조회수</td>
		<td align="left"><%=notice.getNotice_hits()%></td>
	</tr>
	<tr>
		<%String Id= (String)session.getAttribute("id");
            if(Id==null){
            	Id="member";
            }
            	else if(Id.equals(notice.getWriter())){%>
		<td colspan="2" align="center"><input type="submit" value="글수정"/></td>	
		<%} %>
	</tr>
  </tbody>
</table>

</form>
</div>
</body>
</html>