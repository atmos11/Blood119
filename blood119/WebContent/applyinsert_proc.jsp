<%@page import="blood119.apply.dao.ApplyDAO"%>
<%@page import="blood119.apply.vo.ApplyVO"%>
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
String sort="default"; 
String s= request.getParameter("type");
String a=request.getParameter("area");
String LOCATION;
String name=request.getParameter("name");
String type=request.getParameter("kind");
String blood=request.getParameter("blood");
String gender=request.getParameter("gender");
int age=Integer.parseInt(request.getParameter("age")) ;
ApplyVO vo = new ApplyVO();
vo.setApply_id("USER1");
if(s.equals("give")){
	sort="헌혈";

}
else if(s.equals("take")){
	sort="수혈";

}
vo.setApply_sort(sort);

switch (a) {
case"Gyeonggi":  LOCATION = "경기도";
         break;
case "Gangwon":  LOCATION = "강원도";
         break;
case "Chungcheongbuk":  LOCATION = "충청북도";
         break;
case "Chungcheongnam":  LOCATION = "충청남도";
         break;
case "Jeollabuk":  LOCATION = "전라북도";
         break;
case "Jeollanam":  LOCATION = "전라남도";
         break;
case "Gyeongsangbuk":  LOCATION = "경상북도";
         break;
case "Gyeongsangnam":  LOCATION = "경상남도";
         break;
case "Seoul":  LOCATION = "서울";
         break;
case "Busan": LOCATION = "부산";
         break;
case "Daegu": LOCATION = "대전";
         break;
case "Incheon": LOCATION = "인천";
         break;
case "Ulsan": LOCATION = "울산";
		 break;
case "Sejong": LOCATION = "인천";
		 break;
default: LOCATION = "대한민국";
         break;
}
vo.setLocation(LOCATION);
vo.setAni_name(name);
vo.setAni_type(type);
vo.setAni_bloodtype(blood);
vo.setAni_gender(gender);
vo.setAni_age(age);
ApplyDAO dao = new ApplyDAO();
int index=dao.getnowsel();
vo.setApply_index(index);
vo.setResult("WATTING");
		dao.insertApply(vo);
		response.sendRedirect("joinsuccess.jsp");
	

	
%>
</body>
</html>