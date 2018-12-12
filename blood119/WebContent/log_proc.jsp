<%@page import="blood119.user.vo.UserVO"%>
<%@page import="blood119.user.dao.UserDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String pw=request.getParameter("pw");
UserDAO dao= new UserDAO();
UserVO vo = new UserVO();
vo.setId(id);
vo.setPassword(pw);
try {
	UserVO uvo=dao.getUser(vo);
	if(uvo!=null){
		session.setAttribute("id", id);
		 out.println("<script>alert('로그인을 완료했습니다');location.href='index.jsp';</script>");
	}
	else{
		 out.println("<script>alert('ID와 비밀번호가 존재하지 않습니다.');location.href='login.jsp';</script>");
	 
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>