<%@ page import="blood119.notice.dao.NoticeDAO"%>
<%@ page import="blood119.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("UTF-8");
		String notice_index = request.getParameter("notice_index");
		
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = new NoticeVO();
		vo.setNotice_index(Integer.parseInt(notice_index));		
		dao.deleteNotice(vo);
		
		response.sendRedirect("getNoticeList.jsp");	
%>