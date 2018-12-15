<%@ page import="blood119.apply.dao.ApplyDAO"%>
<%@ page import="blood119.apply.vo.ApplyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	ApplyVO vo = new ApplyVO();
	ApplyDAO applyDao = new ApplyDAO();
	ApplyVO apply = applyDao.getApply(vo);
	String apply_index = request.getParameter("apply_index");
	vo.setApply_index(Integer.parseInt(apply_index));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="./common.jsp"%>
	<script src="./resource/js/script.js"></script>
		  <link href="./resource/css/formcss.css" rel="stylesheet">
</head>
<body>
<div class="container contact-form">
            <div class="contact-image">
                <img  src="./resource/img/LOGO.png" alt="rocket_contact"/>
            </div>
            <form action="updateApply_proc.jsp?index=<%=vo.getApply_index()%>" method="post">
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
						 <select  class="form-control" id="result" name="result" required >
						  <option value="">STATUS</option>
			                  <option value="WAITING">WAITING</option>
							  <option value="COMPLETE">COMPLETE</option>
							  <option value="CANCEL">CANCEL</option>
                          </select>
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="상태 수정" />
                        </div>
					
					</div>
            </form>
</div>
</body>

</html>