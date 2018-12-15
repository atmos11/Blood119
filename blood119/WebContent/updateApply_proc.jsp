<%@ page import="blood119.apply.dao.ApplyDAO"%>
<%@ page import="blood119.apply.vo.ApplyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String index = request.getParameter("index");
	String result = request.getParameter("result");

	ApplyDAO dao = new ApplyDAO();
	ApplyVO vo = new ApplyVO();
	vo.setResult(result);
	vo.setApply_index(Integer.parseInt(index));
	dao.updateApply(vo);
	
	response.sendRedirect("getApplyList.jsp");
%>