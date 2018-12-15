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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./resource/img/favicon.ico">

    <title>공지사항 수정 페이지</title>

    <!-- Bootstrap core CSS -->
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
            <form action="updateNotice_proc.jsp?notice_index=<%=notice.getNotice_index()%>" method="post">
             <h3>공지사항 수정</h3>
              <table class="table table-bordered">
  <tbody>
    <tr>
      <th scope="row">제목</th>
      <td><input class="form-control" name="title" type="text" value=<%= notice.getTitle() %> /></td>

    </tr>
    <tr>
      <th scope="row">작성자</th>
      <td><%=notice.getWriter()%></td>
    </tr>
    <tr>
      <th scope="row">내용</th>
      <td><textarea name="contents" class="form-control" cols="40" rows="10">
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

	<td colspan="2" align="center"><input type="submit" name="btnSubmit" class="btnContact" value="수정" /></td>	
	</tr>
  </tbody>
</table>
</div>
</body>
</html>
