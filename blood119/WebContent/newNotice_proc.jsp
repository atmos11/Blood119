<%@ page import="blood119.notice.dao.NoticeDAO"%>
<%@ page import="blood119.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String title=request.getParameter("title");
	String writer=request.getParameter("writer");
	String content=request.getParameter("contents");
	
	NoticeVO vo = new NoticeVO();
	vo.setTitle(title);
	vo.setWriter(writer);
	vo.setContents(content);
	NoticeDAO dao = new NoticeDAO();
	dao.insertNotice(vo);
	
	response.sendRedirect("getNoticeList.jsp");
%>