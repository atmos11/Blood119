<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./resource/img/favicon.ico">

    <title>공지사항 작성 페이지</title>

    <!-- Bootstrap core CSS -->
    <link href="./resource/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./resource/resource/css/pricing.css" rel="stylesheet">
	 <link href="./resource/css/navbar.css" rel="stylesheet">
	  <link href="./resource/css/blog.css" rel="stylesheet">
	<script src="./resource/js/script.js"></script>
		  <link href="./resource/css/formcss.css" rel="stylesheet">
</head>
<body>
<div class="container contact-form">
            <div class="contact-image">
                <img  src="./resource/img/LOGO.png" alt="rocket_contact"/>
            </div>
            <form action="newNotice_proc.jsp" method="post">
                <h3>새 공지사항 작성</h3>
               <div class="row">
						<table class="table table-bordered">
						  <tbody>
						    <tr>
						      <th scope="row">제목</th>
						      <td><input class="form-control" name="title" type="text" /></td>
						
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
						
								<td colspan="2" align="center"><input type="submit" name="btnSubmit" class="btnContact" value="추가" /></td>	
							</tr>
						  </tbody>
						</table>
						            </form>
</div>
</body>
</html>
