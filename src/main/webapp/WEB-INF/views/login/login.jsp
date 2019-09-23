<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<meta name="content-language" content="kr">
<meta name="google-site-verification"
	content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
<meta name="author" content="디시인사이드">
<meta name="title"
	content="We are with you all the way! IT is Life! 디시인사이드 입니다.">
<meta name="description" content="디시인사이드 로그인">
<title>회원 로그인</title>
<link rel="shortcut icon"
	href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/login.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/popup.css" />
<script type="text/javascript"
	src="https://nstatic.dcinside.com/dc/w/js/html5shiv.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/member_.js?201807191401"></script>
<script type="text/javascript">
function checkValue(user)
{
   var form = document.user;
   
   if(!form.id.value){
      alert("아이디를 입력하세요.");
      return false;
      }
   if(!form.password.value){
      alert("비밀번호를 입력하세요.");
      return false;
      }
}
</script>
</head>
<body>
	<!--스킵 내비게이션-->
	<div class="skip">
		<a href="#container"><span>본문 영역 바로가기</span></a>
	</div>
	<!-- //스킵 내비게이션-->
	<div id="top" class="width868 login_wrap">
		<!-- 상단 -->
		<header class="dcheader bg">
			<div class="dchead">
				<!-- 로고영역 -->
				<h1 class="dc_logo">
					<a href="https://www.dcinside.com/"> <img
						src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png"
						alt="디시인사이드">
					</a> <a
						href="https://dcid.dcinside.com/join/login.php?s_url=http%3A%2F%2Fgall.dcinside.com%2F&s_key=333"><img
						src="https://nstatic.dcinside.com/dc/w/images/tit_login.png"
						alt="로그인"></a>
				</h1>
				<!-- //로고영역 -->
			</div>
		</header>
		<main id="container">
		<div class="content login">
			<article>
				<h2 class="blind">로그인</h2>
				<section>
					<h3 class="blind">로그인 정보 입력</h3>
					<div class="con_box login_page ">
						<div class="login_inputbox">
							<div class="inner">
								<form method="POST" action="http://localhost:8090/free/login.do"
									name="user" onsubmit="return checkValue(this)">
									<fieldset>
										<legend class="blind">로그인</legend>
										<div>
											<input name="id" type="text" class="int id bg"
												title="아이디입력" placeholder="아이디" id="id" value=""
												tabindex="2"> <input name="password" type="password"
												class="int pw bg" title="비밀번호입력" placeholder="비밀번호" id="password"
												tabindex="3">
										</div>
										<button type="submit" class="btn_blue small btn_wfull">로그인</button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</section>
			</article>
		</div>
		</main>
		<!-- 하단 -->
		<footer class="dcfoot">
			<div class="info_policy">
				<a href="https://www.dcinside.com/company">회사소개</a> <a
					href="https://www.dcinside.com/company#recruit">인재채용</a> <a
					href="https://www.dcinside.com/company#alliance">제휴안내</a> <a
					href="https://nstatic.dcinside.com/dc/dcad/w/index.html">광고안내</a> <a
					href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">이용약관</a>
				<a
					href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>개인정보처리방침</b></a>
				<a href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">청소년보호정책</a>
			</div>
			<div class="copyright">Copyright ⓒ 1999 - 2019 dcinside. All
				rights reserved</div>
		</footer>
	</div>
</body>
</html>



