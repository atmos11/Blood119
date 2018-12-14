<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 작성 페이지</title>
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
<form action="newNotice_proc.jsp" method="post">
<table class="table table-bordered">
  <tbody>
    <tr>
      <th scope="row">제목</th>
      <td><input name="title" type="text" /></td>

    </tr>
    <tr>
      <th scope="row">작성자</th>
      <td><%=session.getAttribute("id")%></td>
    </tr>
    <tr>
      <th scope="row">내용</th>
      <td><textarea name="contents" class="form-control" cols="40" rows="10"></textarea></td>

    </tr>
   
	<tr>

		<td colspan="2" align="center"><input type="submit" value="추가"/></td>	
	</tr>
  </tbody>
</table>

</form>
</div>
</body>
</html>