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
</head>
<body>
<div align="center">
<h2>글목록</h2>
<h3>미완성 페이지 <a href="logoutProc.jsp">logout</a></h3>
<form action="getNoticeList.jsp" method="post">
<table border="1" cellpadding="0" width="700">
<tr><td align="right">
	<select name="searchCondition">
	<option value="TITLE">제목</option>
	<option value="CONTENTs">내용</option>
</select>
<input name="searchKeyword" type="text"/>
<input type="submit" value="검색"/>
</td>
</tr>
</table>
</form>

<table border="1" cellpadding="0" cellspacing="0" width="900">
<tr>
<th bgcolor="orange" width="80">분류</th>
<th bgcolor="orange" width="80">신청자</th>
<th bgcolor="orange" width="80">신청일</th>
<th bgcolor="orange" width="80">지역</th>
<th bgcolor="skyblue" width="100">반려동물이름</th>
<th bgcolor="skyblue" width="100">반려동물종류</th>
<th bgcolor="skyblue" width="120">반려동물혈액형</th>
<th bgcolor="skyblue" width="100">반려동물성별</th>
<th bgcolor="skyblue" width="100">반려동물나이</th>
<th bgcolor="skyblue" width="100">현재상황</th>
</tr>
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

</table>
</div>
</body>
</html>