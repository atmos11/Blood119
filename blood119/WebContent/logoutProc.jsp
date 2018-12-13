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
	
	 HttpSession sess =request.getSession(false);
	 if(sess==null||sess.getAttribute("id")==null) {
		 out.println("<script>alert('세션이 만료되었습니다 다시로그인해주세요');location.href='index.jsp';</script>");
		 
	 }
	 else {
		 sess.invalidate();
		 out.println("<script>alert('로그아웃을 완료하였습니다');location.href='index.jsp';</script>");				
	 }
	 out.close();
%>
</body>
</html>