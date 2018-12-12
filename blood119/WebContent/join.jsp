<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="./common.jsp"%>

    <!-- Custom styles for this template -->
    <link href="./resource/css/form-validation.css" rel="stylesheet">
	<script src="./resource/js/script.js"></script>
  </head>

  <body class="bg-light">

    <div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="./resource/img/LOGO.png" alt="" width="72" height="72">
        <h2>회원가입</h2>
        <p class="lead">회원가입을하면 헌혈 및 수혈을 할 수 있습니다.</p>
      </div>

      <div class="row">
        
        <div class="col-md-12 order-md-1">
          <h4 class="mb-3">기본정보</h4>
          <form  action="join_proc.jsp" method="post" class="needs-validation" novalidate >
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="Name">이름</label>
                <input type="text" class="form-control" id="name" placeholder="" name="name"required>
                <div class="invalid-feedback">
                  이름을 입력해주세요
                </div>
              </div>
			      
              <div class="col-md-6 mb-3">
                <label for="number">아이디</label>
                <input type="text" class="form-control" id="number" placeholder="" name="number" required>
                <div class="invalid-feedback">
                  학번을 입력해주세요
                </div>
              </div>
            </div>
			<div class="row">
            <div class="col-md-6 mb-3">
              <label for="username">비밀번호</label>


                <input type="password" class="form-control" id="password" name="password" required>
                <div class="invalid-feedback" style="width: 100%;">
                  비밀번호를 입력해주세요
                </div>
            </div>
             <div class="col-md-6 mb-3">
              <label for="username_check">비밀번호확인</label>
                <input type="password" class="form-control" id="password" name="password_check" required>
                <div class="invalid-feedback" style="width: 100%;">
                  비밀번호를 입력해주세요
                </div>
            </div>
          


                
			</div>

            <div class="row">
            					<div class="col-md-12 mb-3">
              <label for="address">전화번호</label>
              <input type="text" class="form-control" id="phone" placeholder="010********" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' name="phone" required>
              <div class="invalid-feedback">
                	전화번호를 입력해주세요
              </div>
            </div>
             
             
              </div>
               
         
            <hr class="mb-4">
            <input class="btn btn-outline-info btn-lg btn-block" type="submit" value="회원가입"/>
			<br>
			<br>
			<br>
          </form>
        </div>
      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="./resource/js/jquery-slim.min.js"><\/script>')</script>
    <script src="./resource/js/vendor/popper.min.js"></script>
    <script src="./resource/js/bootstrap.min.js"></script>
    <script src="./resource/js/vendor/holder.min.js"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  </body>
</html>
