<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>끼리끼리 임시 메인 페이지</title>
<style type="text/css">
a {
	text-decoration: none;
}

/* 로그인 성공 영역 */
.login_success_area {
	height: 62%;
	width: 80%;
	border: 2px solid #7474ad;
	border-radius: 15px;
	margin: 5% auto;
	padding-top: 5%;
}

.login_success_area>span {
	display: block;
	text-align: left;
	margin-left: 10%;
}

.login_success_area>a {
	font-size: 15px;
	font-weight: 900;
	display: inline-block;
	margin-top: 5px;
	background: #e1e5e8;
	width: 82px;
	height: 22px;
	line-height: 22px;
	border-radius: 25px;
	color: #606267;
}
/* 홈페이지 기능 네비 */
.top_gnb_area {
	width: 100%;
	height: 50px;
	background-color: #f0f0f1;
}

.top_gnb_area {
	position: relative;
}

.top_gnb_area .list {
	position: absolute;
	top: 0px;
	right: 0;
}

.top_gnb_area .list li {
	list-style: none;
	float: left;
	padding: 13px 15px 0 10px;
	font-weight: 900;
	cursor: pointer;
}
</style>
<link rel="stylesheet" href="../css/main.css">
</head>
<body>

	<div class="wrapper">
		<div class="wrap">
			<div class="top_gnb_area">
				<ul class="list">
					<c:if test="${user == null}">
						<!-- 로그인 x -->
						<li><a href="/user/login">로그인</a></li>
						<li><a href="/user/join">회원가입</a></li>
					</c:if>
					<c:if test="${user != null }">
						<!-- 로그인 o -->
						<c:if test="${user.userStatus == 2 }">
							<!-- 관리자 계정 -->
							<li><a href="/admin/main">관리자 페이지</a></li>
						</c:if>

						<li>로그아웃</li>
						<li>마이페이지</li>
					</c:if>
					<li>고객센터</li>
				</ul>

			</div>
			<div class="top_area">
				<div class="logo_area">
					<h1>logo area</h1>
				</div>
				<div class="search_area">
					<h1>Search area</h1>
				</div>
				<div class="login_area">
					<!-- 로그인 하지 않은 상태 -->
					<c:if test="${user == null }">
						<div class="login_button">
							<a href="/user/login">로그인</a>
						</div>
						<span><a href="/user/join">회원가입</a></span>
					</c:if>

					<!-- 로그인한 상태 -->
					<c:if test="${user != null}">
						<div class="login_success_area">
							<span>${user.userName }님 환영합니다!!</span> <span>닉네임 :
								${user.nickName}</span> <span>포인트 : <fmt:formatNumber
									value="${user.point }" pattern="#,###" /></span> <a
								href="/user/logout">로그아웃</a>
						</div>
					</c:if>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="navi_bar_area">
				<h1>navi area</h1>
			</div>
			<div class="content_area">
				<h1>content area</h1>
			</div>
		</div>
	</div>

</body>
</html>