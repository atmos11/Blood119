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

    <title>공지사항 게시물 페이지</title>

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
				<form action="updateNotice.jsp?notice_index=<%=notice.getNotice_index()%>" method="post">
                <h3>공지사항 상세보기</h3>
               	<div class="row">
               			<div class="col-md-6">
                        <div class="form-group">
                            <%=notice.getNotice_date()%>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <%=notice.getWriter()%>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <%=notice.getTitle() %>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <%=notice.getContents() %>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="수정" />
                        </div>
                        </div>
				</div>
            	</form>
            	<form action="deleteNotice_proc.jsp?notice_index=<%=notice.getNotice_index()%>" method="post">
            	<div class="col-md-6">
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="삭제" />
                        </div>
                        </div>
				</div>
            	</form>
</div>
</body>
</html>