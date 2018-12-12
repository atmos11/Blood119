<%@page import="java.sql.SQLException"%>
<%@page import="blood119.user.dao.UserDAO"%>
<%@page import="blood119.user.vo.UserVO"%>
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
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");
String number=request.getParameter("number");
String password=request.getParameter("password");
String password_check=request.getParameter("password_check");
int phone=Integer.parseInt(request.getParameter("phone"));
UserVO vo = new UserVO();
vo.setId(number);
vo.setPassword(password);
vo.setName(name);
vo.setPhone(phone);
UserDAO dao = new UserDAO();
if(password.equals(password_check)) {
	try{
		dao.registerUser(vo);
		response.sendRedirect("joinsuccess.jsp");
	
		}
	catch(SQLException e){System.out.println(e);
	 out.println("<script>alert('이미 가입되어있는 학번입니다.아닐경우 개발자에게 문의주세요');location.href='join.jsp';</script>");
	}
}
else {
	 out.println("<script>alert('비밀번호 확인을 다시해주세요');location.href='join.jsp';</script>");
}
%>
</body>
</html>