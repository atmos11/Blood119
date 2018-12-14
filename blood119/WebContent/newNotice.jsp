<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 작성 페이지</title>
</head>
<body>
<div align="center">
<h2>새 공지사항</h2>
<hr>
<form action="newNotice_proc.jsp" method="post">
<table border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="orange" width="70">제목</td>
		<td align="left"><input name="title" type="text" /></td>
	</tr>
	<tr>
		<td bgcolor="orange">작성자</td>
		<td align="left"><input name="writer" type="text" /></td>
	</tr>
	<tr>
		<td bgcolor="orange">내용</td>
		<td align="left"><textarea name="contents" cols="40" rows="10"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="등록"/></td>
	</tr>
</table>
</form>
<hr>
<a href="getNoticeList.jsp">Back</a>
</div>
</body>
</html>