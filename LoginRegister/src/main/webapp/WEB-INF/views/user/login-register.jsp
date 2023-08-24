<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Soft UI - Neumorphism Style UI Kit">
<meta name="author" content="kingstudio.ro">
<!-- Favicon -->
<link rel="icon" href="../assets/images/favicon.png">
<!-- Site Title -->
<title>Soft UI - Neumorphism Style UI Kit</title>
<!-- Bootstrap 4 core CSS -->
<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom Styles -->
<link href="../assets/css/animate.css" rel="stylesheet">
<link href="../assets/css/style.css" rel="stylesheet">
<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;600;800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;600;800&display=swap"
	rel="stylesheet">
<link href="../assets/css/fontawesome-all.min.css" rel="stylesheet"
	type="text/css">
<style type="text/css">
.email_check_input {
	color: #c9d0f4;
	background-color: #f5f7fe;
	font-family: 'Nunito Sans', sans-serif;
	font-size: 1rem;
	font-weight: 600;
	line-height: 1.25rem;
	display: inline-block;
	width: 100%;
	height: 52px;
	letter-spacing: 0.05rem;
	padding: 15px 20px;
	background-image: none;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: none;
	border-radius: 8px;
	-webkit-appearance: none;
	appearance: none;
	-webkit-transition: border-color ease-in-out 0.15s, -webkit-box-shadow
		ease-in-out 0.15s;
	transition: border-color ease-in-out 0.15s, -webkit-box-shadow
		ease-in-out 0.15s;
	-o-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out
		0.15s;
	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s,
		-webkit-box-shadow ease-in-out 0.15s;
	box-shadow: 2px 2px 4px #e2e6fc, -2px -2px 4px #fff !important;
}

.email_input {
	color: #c9d0f4;
	background-color: #f5f7fe;
	font-family: 'Nunito Sans', sans-serif;
	font-size: 1rem;
	font-weight: 600;
	line-height: 1.25rem;
	display: inline-block;
	width: 100%;
	height: 52px;
	letter-spacing: 0.05rem;
	padding: 15px 20px;
	background-image: none;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: none;
	border-radius: 8px;
	-webkit-appearance: none;
	appearance: none;
	-webkit-transition: border-color ease-in-out 0.15s, -webkit-box-shadow
		ease-in-out 0.15s;
	transition: border-color ease-in-out 0.15s, -webkit-box-shadow
		ease-in-out 0.15s;
	-o-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out
		0.15s;
	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s,
		-webkit-box-shadow ease-in-out 0.15s;
	box-shadow: 2px 2px 4px #e2e6fc, -2px -2px 4px #fff !important;
}

.clearfix {
	clear: both;
}

.email_check_button {
	border: 1px solid black;
	height: 51px;
	width: 30%;
	float: right;
	line-height: 50px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
	background-color: #ececf7;
	cursor: pointer;
}

.user_input {
	color: #c9d0f4;
	background-color: #f5f7fe;
	font-family: 'Nunito Sans', sans-serif;
	font-size: 1rem;
	font-weight: 600;
	line-height: 1.25rem;
	display: inline-block;
	width: 100%;
	height: 52px;
	letter-spacing: 0.05rem;
	padding: 15px 20px;
	background-image: none;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: none;
	border-radius: 8px;
	-webkit-appearance: none;
	appearance: none;
	-webkit-transition: border-color ease-in-out 0.15s, -webkit-box-shadow
		ease-in-out 0.15s;
	transition: border-color ease-in-out 0.15s, -webkit-box-shadow
		ease-in-out 0.15s;
	-o-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out
		0.15s;
	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s,
		-webkit-box-shadow ease-in-out 0.15s;
	box-shadow: 2px 2px 4px #e2e6fc, -2px -2px 4px #fff !important;
}

.final_nickName_ck {
	display: none;
}

.final_name_ck {
	display: none;
}
</style>
</head>

<body>

	<div id="preloader">
		<div class="preloader">
			<span></span> <span></span>
		</div>
	</div>

	<a href="../index.html" class="top-logo"><img
		src="../assets/images/logo-main.png" alt=""></a>

	<div class="full-height relative p-y-30 v-center bg-img"
		style="background-image: url(../assets/images/placeholder.jpg)">
		<div class="container p-y-70">
			<div class="m-x-auto" style="max-width: 500px;">
				<div class="card mb-15">
					<div class="card-body p-x-25">
						<ul class="nav nav-tabs nav-pills text-center p-x-50"
							role="tablist">
							<li class="nav-item m-x-auto"><a
								class="nav-link active p-x-40" data-bs-toggle="tab"
								href="#tab-sign-in" role="tab"> <i
									class="fas fa-lock mr-5 va-middle"></i> <span class="va-middle">로그인</span>
							</a></li>
							<li class="nav-item nav-tabs nav-pills m-x-auto"><a
								class="nav-link p-x-40" data-bs-toggle="tab"
								href="#tab-register" role="tab"> <i
									class="fas fa-user mr-5 va-middle"></i> <span class="va-middle">회원가입</span>
							</a></li>
						</ul>
						<!-- / nav tabs -->
						<div class="tab-content">
							<div class="tab-pane fade show active mt-20 p-15"
								id="tab-sign-in" role="tabpanel">
								<form class="validation-inner" id="login-form3"
									action="/user/login-register" method="post">
									<div class="form-group">
										<input type="text" class="form-control" name="userId"
											placeholder="&#xf2bd; 아이디"
											style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400">
									</div>
									<!-- / form-group -->

									<div class="form-group">
										<input type="password" class="form-control" name="userPw"
											placeholder="&#xf11c; 비밀번호" required
											style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400">
									</div>
									<c:if test="${result == 0 }">
										<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
									</c:if>
									<!-- / form-group -->

									<div class="row v-center mt-30">
										<div class="col-lg-5 tablet-lg-top-30">
											<!-- / checkbox -->
										</div>
										<!-- / column -->
										<div class="col-lg-7 text-right">
											<button type="submit"
												class="btn btn-sm btn-primary tablet-lg-fw">
												<i class="fas fa-sign-in-alt mr-5"></i> Sign In
											</button>
										</div>
										<!-- / column -->
									</div>
									<!-- / row -->
								</form>
								<!-- / login-form -->
								<div class="pt-60 text-center">
									<p style="margin-bottom: 4px;">Sign in with:</p>
									<a href="#x" class="btn btn-sm btn-outline-facebook mt-5">
										<span class="fab fa-facebook-f mr-5"></span> <span>Facebook</span>
									</a> <a href="#x" class="btn btn-sm btn-outline-twitter mt-5">
										<span class="fab fa-twitter mr-5"></span> <span>Twitter</span>
									</a> <a href="#x" class="btn btn-sm btn-outline-warning mt-5">
										<span class="fab fa-google mr-5"></span> <span>Google</span>
									</a>
								</div>
							</div>
							<div class="tab-pane fade mt-20 p-15" id="tab-register"
								role="tabpanel">
								<form class="validation-inner" id="register-form3"
									novalidate="novalidate">


									<!-- / form-group -->
									<div class="user_wrap">
										<div class="form-group">
											<input type="text" class="user_input" name="userName"
												placeholder="&#xf2bd; Username" required=""
												style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400">
										</div>
									</div>
									<span class="final_name_ck">이름을 입력해주세요.</span>
									<!-- / form-group -->
									<div class="form-group">
										<input type="password" id="passwordRegister3"
											class="form-control" name="passwordRegister3"
											placeholder="&#xf11c; Password"
											style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400">
									</div>
									<!-- / form-group -->
									<div class="form-group">
										<input type="password" class="form-control"
											name="passwordRegisterConfirm3"
											placeholder="&#xf14a; Confirm Password" required=""
											style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400">
									</div>
									<!-- / form-group -->
									<div class="form-group">
										<input type="email" class="email_input" name="email"
											placeholder="&#xf0e0; 이메일"
											style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400">
									</div>
									<span class="final_email_ck">이메일을 입력해주세요.</span> <span
										class="email_input_box_warn"></span>

									<div class="form-group" id="email_check_input_box_false">
										<input class="email_check_input" disabled="disabled">
									</div>
									<div class="email_check_button"">
										<span>인증번호 전송</span>
									</div>
									<div class="clearfix"></div>
									<span id="email_check_input_box_warn"></span>
									<!-- / form-group -->

									<div class="row v-center mt-30">
										<div class="col-xl-7 tablet-xl-top-30">
											<div class="checkbox checkbox-primary ml-10">
												<label class="hidden"><input type="checkbox"></label>
												<input id="checkbox-register2" type="checkbox"> <label
													for="checkbox-register2"><span> Accept <a
														href="#x">Terms &amp; Conditions</a></span></label>
											</div>
											<!-- / checkbox -->
										</div>
										<!-- / column -->

										<div class="col-xl-5 text-right">
											<button type="submit"
												class="btn btn-sm btn-primary tablet-xl-fw">
												<i class="fas fa-user mr-5"></i> Register
											</button>
										</div>
										<!-- / column -->
									</div>
									<!-- / row -->
								</form>
								<!-- / register-form -->
							</div>
						</div>
						<!-- / tab-content -->
					</div>
					<!-- / card-body -->
				</div>
				<!-- / card -->
			</div>
		</div>
		<!-- / container -->
		<p class="absolute bottom-15 x-0 text-center">
			<a href="../index.html" class="text-link fs-16 m-x-15">Home</a> <a
				href="../components.html" class="text-link fs-16 m-x-15">Components</a>
			<a href="../sections.html" class="text-link fs-16 m-x-15">Sections</a>
			<a href="../templates.html" class="text-link fs-16 m-x-15">Templates</a>
		</p>
	</div>

	<!-- core JavaScript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<!-- / core JavaScript -->

	<!-- preloader -->
	<script src="../assets/js/preloader.js"></script>
	<!-- / preloader -->

	<!-- form validation -->
	<script src="../assets/js/jquery.validate.min.js"></script>
	<!-- end of form validation -->

	<!-- custom script -->
	<!-- custom script -->
	<script>
		/* 이메일 인증 코드 */
		var code = ""; //이메일전송 인증번호 저장위한 코드

		/* 유효성 검사 통과유무 변수 */
		var idCheck = false; // 아이디
		var pwCheck = false; // 비번
		var pwckCheck = false; // 비번 확인
		var pwckcorCheck = false; // 비번 확인 일치 확인
		var nickNameCheck = false; // 닉네임
		var nameCheck = false; // 이름
		var emailCheck = false; // 이메일
		var emailnumCheck = false; // 이메일 인증번호 확인

		$(document)
				.ready(
						function() {

							//아이디 중복검사
							$('.id_input').on(
									"propertychange change keyup paste input",
									function() {

										var userId = $('.id_input').val(); // .id_input에 입력되는 값
										var data = {
											userId : userId
										} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

										$.ajax({
											type : "post",
											url : "/user/userIdChk",
											data : data,
											success : function(result) {
												// 성공 여부
												if (result != 'fail') {
													$('.id_input_re_1').css(
															"display",
															"inline-block");
													$('.id_input_re_2').css(
															"display", "none");
													idCheck = true;
												} else {
													$('.id_input_re_2').css(
															"display",
															"inline-block");
													$('.id_input_re_1').css(
															"display", "none");
													idCheck = false;
												}
											} // success 종료
										}); // ajax 종료
									});// function 종료

							// 닉네임 중복검사
							$('.nickName_input')
									.on(
											"propertychange change keyup paste input",
											function() {

												var nickName = $(
														'.nickName_input')
														.val(); // .nickName_input에 입력되는 값
												var data = {
													nickName : nickName
												} // '컨트롤에 넘길 데이터 이름' : '데이터(.nickName_input에 입력되는 값)'

												$
														.ajax({
															type : "post",
															url : "/user/userNickNameChk",
															data : data,
															success : function(
																	result) {
																// 성공 여부
																if (result != 'fail') {
																	$(
																			'.nickName_input_re_1')
																			.css(
																					"display",
																					"inline-block");
																	$(
																			'.nickName_input_re_2')
																			.css(
																					"display",
																					"none");
																	nickNameCheck = true;
																} else {
																	$(
																			'.nickName_input_re_2')
																			.css(
																					"display",
																					"inline-block");
																	$(
																			'.nickName_input_re_1')
																			.css(
																					"display",
																					"none");
																	nickNameCheck = false;
																}
															} // success 종료
														}); // ajax 종료
											});// function 종료

							/* 인증번호 이메일 전송 */
							$(".email_check_button")
									.click(
											function() {

												var email = $(".email_input")
														.val(); // 입력한 이메일
												var checkBox = $(".email_check_input"); // 인증번호 입력란
												var boxWrap = $(".email_check_input_box"); // 인증번호 입력란 박스
												var warnMsg = $(".email_input_box_warn"); // 이메일 입력 경고글

												/* 이메일 형식 유효성 검사 */
												if (emailFormCheck(email)) {
													warnMsg
															.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
													warnMsg.css("display",
															"inline-block");
												} else {
													warnMsg
															.html("올바르지 못한 이메일 형식입니다.");
													warnMsg.css("display",
															"inline-block");
													return false;
												}

												$
														.ajax({

															type : "GET",
															url : "emailCheck?email="
																	+ email,
															success : function(
																	data) {

																// console.log("data : " + data);
																checkBox
																		.attr(
																				"disabled",
																				false);
																boxWrap
																		.attr(
																				"id",
																				"email_check_input_box_true");
																code = data;
															}

														});
											});

							/* 인증번호 비교 */
							$(".email_check_input")
									.blur(
											function() {
												var inputCode = $(
														".email_check_input")
														.val(); // 입력코드    
												var checkResult = $("#email_check_input_box_warn"); // 비교 결과    

												if (inputCode == code) { // 일치할 경우
													checkResult
															.html("인증번호가 일치합니다.");
													checkResult.attr("class",
															"correct");
													emailnumCheck = true; // 일치할 경우
												} else { // 일치하지 않을 경우
													checkResult
															.html("인증번호를 다시 확인해주세요.");
													checkResult.attr("class",
															"incorrect");
													emailnumCheck = false; // 일치하지 않을 경우
												}
											});

							/* 비밀번호 확인 일치 유효성 검사 */

							$('.pwck_input').on(
									"propertychange change keyup paste input",
									function() {

										var pw = $('.pw_input').val();
										var pwck = $('.pwck_input').val();
										$('.final_pwck_ck').css('display',
												'none');

										if (pw == pwck) {
											$('.pwck_input_re_1').css(
													'display', 'block');
											$('.pwck_input_re_2').css(
													'display', 'none');
											pwckcorCheck = true;
										} else {
											$('.pwck_input_re_1').css(
													'display', 'none');
											$('.pwck_input_re_2').css(
													'display', 'block');
											pwckcorCheck = false;
										}
									});
							//회원가입 버튼(회원가입 기능 작동)
							$(".join_button")
									.click(
											function() {

												/* 입력값 변수 */
												var id = $('.id_input').val(); // id 입력란
												var pw = $('.pw_input').val(); // 비밀번호 입력란
												var pwck = $('.pwck_input')
														.val(); // 비밀번호 확인 입력란
												var nickName = $(
														'.nickName_input')
														.val(); // 닉네임 입력란
												var name = $('.user_input')
														.val(); // 이름 입력란
												var email = $('.email_input')
														.val(); // 이메일 입력란

												/* 아이디 유효성 검사 */
												if (id == "") {
													$('.final_id_ck').css(
															'display', 'block');
													idCheck = false;
												} else {
													$('.final_id_ck').css(
															'display', 'none');
													idCheck = true;
												}

												/* 비밀번호 유효성 검사 */
												if (pw == "") {
													$('.final_pw.ck').css(
															'display', 'block');
													pwCheck = false;
												} else {
													$('.final_pw.ck').css(
															'display', 'block');
													pwCheck = true;
												}

												/* 비밀번호 확인 유효성 검사 */
												if (pwck == "") {
													$('.final_pwck_ck').css(
															'display', 'block');
													pwckCheck = false;
												} else {
													$('.final_pwck_ck').css(
															'display', 'none');
													pwckCheck = true;
												}

												/* 닉네임 유효성 검사 */
												if (nickName == "") {
													$('.final_nickName_ck')
															.css('display',
																	'block');
													nickNameCheck = false;
												} else {
													$('.final_nickName_ck')
															.css('display',
																	'none');
													nickNameCheck = true;
												}

												/* 이름 유효성 검사 */
												if (name == "") {
													$('.final_name_ck').css(
															'display', 'block');
													nameCheck = false;
												} else {
													$('.final_name_ck').css(
															'display', 'none');
													nameCheck = true;
												}

												/* 이메일 유효성 검사 */
												if (email == "") {
													$('.final_email_ck').css(
															'display', 'block');
													emailCheck = false;
												} else {
													$('.final_email_ck').css(
															'display', 'none');
													emailCheck = true;
												}

												/* 최종 유효성 검사 */
												if (idCheck && pwCheck
														&& pwckCheck
														&& pwckcorCheck
														&& nickNameCheck
														&& nameCheck
														&& emailCheck
														&& emailnumCheck) {

													$("#join_form").attr(
															"action",
															"/user/join");
													$("#join_form").submit();

												}

												return false;

											});
						});

		/* 입력 이메일 형식 유효성 검사 */
		function emailFormCheck(email) {
			var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			return form.test(email);
		}
	</script>
	<!-- end of custom script -->

	<!-- end of custom script -->

</body>

</html>
