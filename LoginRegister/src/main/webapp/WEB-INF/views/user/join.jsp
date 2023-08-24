<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/join.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<style>
/* 아이디 영역 */
.nickName_wrap {
	width: 100%;
	margin-top: 20px;
}

.nickName_name {
	font-size: 25px;
	font-weight: bold;
}

.nickName_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
}

.nickName_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

/* 중복닉네임 존재하지 않는경우 */
.nickName_input_re_1 {
	color: green;
	display: none;
}
/* 중복닉네임 존재하는 경우 */
.nickName_input_re_2 {
	color: red;
	display: none;
}

/* 전화번호 영역 */
.phone_wrap {
	width: 100%;
	margin-top: 20px;
}

.phone_name {
	font-size: 25px;
	font-weight: bold;
}

.phone_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
}

.phone_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

/* 메일 영역 */
.email_wrap {
	width: 100%;
	margin-top: 20px;
}

.email_name {
	font-size: 25px;
	font-weight: bold;
}

.email_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
}

.email_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
}

.email_check_wrap {
	margin-top: 20px;
}

.email_check_input_box {
	border: 1px solid black;
	height: 31px;
	padding: 10px 14px;
	width: 61%;
	float: left;
}

.email_check_input {
	width: 100%;
	height: 100%;
	border: none;
	font-size: 28px;
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

.correct {
	color: green;
}

.incorrect {
	color: red;
}

/* 유효성 검사 문구 */
.final_id_ck {
	display: none;
}

.final_pw_ck {
	display: none;
}

.final_pwck_ck {
	display: none;
}

.final_name_ck {
	display: none;
}

.final_email_ck {
	display: none;
}

.final_phone_ck {
	display: none;
}

.final_nickName_ck {
	display: none;
}

/* 비밀번호 확인 일치 유효성검사 */
.pwck_input_re_1 {
	color: green;
	display: none;
}

.pwck_input_re_2 {
	color: red;
	display: none;
}

#email_check_input_box_false {
	background-color: #ebebe4;
}

#email_check_input_box_true {
	background-color: white;
}
</style>
<body>

	<div class="wrapper">
		<form id="join_form" method="post">
			<div class="wrap">
				<div class="subjecet">
					<span>회원가입</span>
				</div>
				<div class="user_wrap">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="userName">
					</div>
					<span class="final_name_ck">이름을 입력해주세요.</span>
				</div>
				<div class="id_wrap">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="userId">
					</div>
					<span class="id_input_re_1">사용 가능한 아이디입니다.</span> <span
						class="id_input_re_2">이미 사용중인 아이디 입니다.</span> <span
						class="final_id_ck">아이디를 입력해주세요.</span>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input class="pw_input" name="userPw">
					</div>
					<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">비밀번호 확인</div>
					<div class="pwck_input_box">
						<input class="pwck_input">
					</div>
					<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span> <span
						class="pwck_input_re_1">비밀번호가 일치합니다.</span> <span
						class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
				</div>
				<div class="nickName_wrap">
					<div class="nickName_name">닉네임</div>
					<div class="nickName_input_box">
						<input class="nickName_input" name="nickName">
					</div>
					<span class="nickName_input_re_1">사용 가능한 닉네임 입니다.</span> <span
						class="nickName_input_re_2">이미 사용중인 닉네임 입니다.</span> <span
						class="final_nickName_ck">닉네임을 입력해주세요.</span>
				</div>
				<div class="phone_wrap">
					<div class="phone_name">전화번호</div>
					<div class="phone_input_box">
						<input class="phone_input" name="phone">
					</div>
					<span class="final_phone_ck">연락처를 입력해주세요.</span>
				</div>
				<div class="email_wrap">
					<div class="email_name">이메일</div>
					<div class="email_input_box">
						<input class="email_input" name="email">
					</div>
					<span class="final_email_ck">이메일을 입력해주세요.</span> <span
						class="email_input_box_warn"></span>
					<div class="email_check_wrap">
						<div class="email_check_input_box"
							id="email_check_input_box_false">
							<input class="email_check_input" disabled="disabled">
						</div>
						<div class="email_check_button">
							<span>인증번호 전송</span>
						</div>
						<div class="clearfix"></div>
						<span id="email_check_input_box_warn"></span>
					</div>
				</div>
				<div class="businessNo_wrap">
					<div class="businessNo_name">사업자 등록 번호</div>
					<div class="businessNo_input_box">
						<input class="businessNo_input" name="businessNo">
					</div>
				</div>
				<div class="join_button_wrap">
					<input type="button" class="join_button" value="가입하기">
				</div>
			</div>
		</form>
	</div>

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

</body>
</html>