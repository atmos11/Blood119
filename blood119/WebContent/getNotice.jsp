
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 게시글 보기</title>
</head>
<body>
<div align="center">
<h2>글 상세보기</h2>
<a href = "logoutProc.jsp">logout</a>
<hr>
<form action="updateNotice_Proc.jsp" method="post">

<table border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="orange" width="70">제목</td>
		<td align="left"><input name="title"type="text"value=<%=notice.getTitle()%>></td>
	</tr>
	<tr>
		<td bgcolor="orange">작성자</td>
		<td align="left"><%=notice.getWriter()%></td>
	</tr>
	<tr>
		<td bgcolor="orange" width="70">내용</td>
		<td align="left">
		<textarea name="contents" cols="40" rows="10">
		<%=notice.getContents() %>
		</textarea></td>
	</tr>
	<tr>
		<td bgcolor="orange">등록일</td>
		<td align="left"><%=notice.getNotice_date()%></td>
	</tr>
	<tr>
		<td bgcolor="orange">조회수</td>
		<td align="left"><%=notice.getNotice_hits()%></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="글수정"/></td>	
	</tr>
</table>
</form>
</div>
</body>
</html>