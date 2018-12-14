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
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="title" class="form-control" placeholder="제목" value="" required/>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="writer" class="form-control" placeholder="작성자" value="" required/>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <textarea name="contents" cols="40" rows="10" class="form-control" value="" required></textarea>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="등록" />
                        </div>
                        
					</div>
                </div>
            </form>
</div>
</body>
</html>