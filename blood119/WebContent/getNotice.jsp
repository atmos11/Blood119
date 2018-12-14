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
 <link href="./resource/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./resource/resource/css/pricing.css" rel="stylesheet">
	 <link href="./resource/css/navbar.css" rel="stylesheet">
	  <link href="./resource/css/blog.css" rel="stylesheet">
	<script src="./resource/js/script.js"></script>
		  <link href="./resource/css/formcss.css" rel="stylesheet">
</head>
<body>
<div class="container contact-form">
            <div class="contact-image">
                <img  src="./resource/img/LOGO.png" alt="rocket_contact"/>
            </div>
<form action="updateNotice.jsp?notice_index=<%=notice.getNotice_index()%>" method="post">
 <h3>공지사항 조회</h3>
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
            	<td colspan="2" align="center">
            	<div class="row">
            	<div class="col-md-6">
            	<input type="submit" name="btnSubmit" class="btnContact" value="수정" /></div>
            	<div class="col-md-6">
		<a class="btn btnContact" href="deleteNotice_proc.jsp?notice_index=<%=notice.getNotice_index()%>"  role="button">삭제</a></div></div><br></td>
			
		<%} %>
	</tr>
  </tbody>
</table>

</form>
</div>
</body>
</html>