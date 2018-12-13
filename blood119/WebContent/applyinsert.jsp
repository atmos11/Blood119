<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <form method="post" action="applyinsert_proc.jsp">
                <h3>헌혈/수혈 신청FORM</h3>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
						 <select  class="form-control" id="type" name="type" required >
						  <option value="">헌혈/수혈 선택</option>
                  <option value="give">헌혈</option>
				  <option value="take">수혈</option>
                          </select>
                        </div>
                       
                    </div>
                    
					<div class="col-md-6">
					 <div class="form-group">
                          <select  class="form-control" id="area" name="area" required >
						  <option value="">지역</option>
                  <option value="Gyeonggi">경기도</option>
				  <option value="Gangwon">강원도</option>
				  <option value="Chungcheongbuk">충청북도</option>
				  <option value="Chungcheongnam">충청남도</option>
				  <option value="Jeollabuk">전라북도</option>
				  <option value="Jeollanam">전라남도</option>
				  <option value="Gyeongsangbuk">경상북도</option>
				  <option value="Gyeongsangnam">경상남도</option>
				  <option value="Seoul">서울특별시</option>
				  <option value="Busan">부산광역시</option>
				  <option value="Daegu">대구광역시</option>
				  <option value="Incheon">인천광역시</option>
				  <option value="Ulsan">울산광역시</option>
				  <option value="Sejong">세종특별자치시</option>
                          </select>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="text" id="name" name="name" class="form-control" placeholder="강아지이름" value="" required/>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="text" id="kind" name="kind" class="form-control" placeholder="강아지품종" value="" required/>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
						 <select  class="form-control" id="blood" name="blood" required >
						  <option value="">혈액형</option>
                  <option value="ect">모름/여러개</option>
				  <option value="1.1">1.1</option>
				  <option value="1.2">1.2</option>
				  <option value="1.3">1.3</option>
				  <option value="1">1-</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
				  <option value="5">5</option>
				  <option value="6">6</option>
				  <option value="7">7</option>
				  <option value="8">8</option>
                          </select>
                        </div>
                 </div>
				 <div class="col-md-6">
                        <div class="form-group">
						 <select  class="form-control" id="gender" name="gender" required >
						  <option value="">강아지성별</option>
                  <option value="MAIL">남자</option>
				  <option value="FEMAIL">여자</option>
                          </select>
                        </div>   
                    </div>
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="age" name="age" class="form-control" placeholder="나이" value="" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' required/>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                        </div>
					
					</div>
					
								<h6>혈액검사는 병원에서 다시 검사할 예정이니 편하게 체크해주세요</h6>
			<h6>강아지품종이 믹스일경우 '믹스'라고 적으시거나 가장 가까운품종으로 적어주세요</h6>
                </div>
            </form>

</div>
</body>

</html>