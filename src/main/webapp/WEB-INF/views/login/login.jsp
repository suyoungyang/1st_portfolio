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
<meta name="author" content="����λ��̵�">
<meta name="title"
	content="We are with you all the way! IT is Life! ����λ��̵� �Դϴ�.">
<meta name="description" content="����λ��̵� �α���">
<title>ȸ�� �α���</title>
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
      alert("���̵� �Է��ϼ���.");
      return false;
      }
   if(!form.password.value){
      alert("��й�ȣ�� �Է��ϼ���.");
      return false;
      }
}
</script>
</head>
<body>
	<!--��ŵ ������̼�-->
	<div class="skip">
		<a href="#container"><span>���� ���� �ٷΰ���</span></a>
	</div>
	<!-- //��ŵ ������̼�-->
	<div id="top" class="width868 login_wrap">
		<!-- ��� -->
		<header class="dcheader bg">
			<div class="dchead">
				<!-- �ΰ��� -->
				<h1 class="dc_logo">
					<a href="https://www.dcinside.com/"> <img
						src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png"
						alt="����λ��̵�">
					</a> <a
						href="https://dcid.dcinside.com/join/login.php?s_url=http%3A%2F%2Fgall.dcinside.com%2F&s_key=333"><img
						src="https://nstatic.dcinside.com/dc/w/images/tit_login.png"
						alt="�α���"></a>
				</h1>
				<!-- //�ΰ��� -->
			</div>
		</header>
		<main id="container">
		<div class="content login">
			<article>
				<h2 class="blind">�α���</h2>
				<section>
					<h3 class="blind">�α��� ���� �Է�</h3>
					<div class="con_box login_page ">
						<div class="login_inputbox">
							<div class="inner">
								<form method="POST" action="http://localhost:8090/free/login.do"
									name="user" onsubmit="return checkValue(this)">
									<fieldset>
										<legend class="blind">�α���</legend>
										<div>
											<input name="id" type="text" class="int id bg"
												title="���̵��Է�" placeholder="���̵�" id="id" value=""
												tabindex="2"> <input name="password" type="password"
												class="int pw bg" title="��й�ȣ�Է�" placeholder="��й�ȣ" id="password"
												tabindex="3">
										</div>
										<button type="submit" class="btn_blue small btn_wfull">�α���</button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</section>
			</article>
		</div>
		</main>
		<!-- �ϴ� -->
		<footer class="dcfoot">
			<div class="info_policy">
				<a href="https://www.dcinside.com/company">ȸ��Ұ�</a> <a
					href="https://www.dcinside.com/company#recruit">����ä��</a> <a
					href="https://www.dcinside.com/company#alliance">���޾ȳ�</a> <a
					href="https://nstatic.dcinside.com/dc/dcad/w/index.html">����ȳ�</a> <a
					href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">�̿���</a>
				<a
					href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>��������ó����ħ</b></a>
				<a href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">û�ҳ⺸ȣ��å</a>
			</div>
			<div class="copyright">Copyright �� 1999 - 2019 dcinside. All
				rights reserved</div>
		</footer>
	</div>
</body>
</html>



