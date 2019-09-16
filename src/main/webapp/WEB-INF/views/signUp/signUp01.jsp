<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="content-language" content="kr">
<meta name="google-site-verification"
	content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
<meta name="author" content="디시인사이드">
<meta name="title" content="회원가입">
<meta name="description" content="약관동의">
<title>디시 회원가입</title>
<link rel="shortcut icon"
	href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/join.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/popup.css" />
<script type="text/javascript"
	src="//nstatic.dcinside.com/dc/w/js/html5shiv.min.js"></script>
<script type="text/javascript" src="./js/member.js?20180726"></script>
<script type="text/javascript">
	function checkValue(policyForm) {
		var chk1 = document.policyForm.personal_agree.checked;
		var chk2 = document.policyForm.service_agree.checked;
		if (chk1 == "") {
			alert("개인정보 약관에 동의하셔야 합니다.");
			return false;
		}
		if (chk2 == "") {
			alert("개인정보 약관에 동의하셔야 합니다.");
			return false;
		}
	}
</script>
</head>
<body>
	<!--스킵 내비게이션-->
	<div class="skip">
		<a href="#service_policy"><span>서비스 이용약관</span></a> <a
			href="#privacy_policy"><span>개인정보처리방침</span></a>
	</div>
	<!-- //스킵 내비게이션-->
	<div id="top" class="width868 join_wrap">
		<!-- 상단 -->
		<header class="dcheader bg">
			<div class="dchead">
				<!-- 로고영역 -->
				<h1 class="dc_logo">
					<a href="http://localhost:8090/free/board/menulist.do"><img
						src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png"
						alt="디시인사이드"></a> <a
						href="#"><img
						src="https://nstatic.dcinside.com/dc/w/images/tit_join.png"
						alt="회원가입"></a>
				</h1>
				<!-- //로고영역 -->
				<div class="area_links">
					<ul>
						<li><a href="http://localhost:8090/free/board/listboard.do">갤러리</a></li>
						<li><a href="#">m.갤러리</a></li>
						<li><a href="http://localhost:8090/free/board/myboard.do?nick=${user.nick }">갤로그</a></li>
						<li><a href="#">뉴스</a></li>
						<li><a href="#">이벤트</a></li>
						<li><a href="#">만두몰</a></li>
					</ul>
				</div>
			</div>
		</header>
		<main id="container">
		<form name="policyForm" id="policyForm" method="post"
			action="signUp.do" onsubmit="return checkValue(this)">
			<div class="content">
				<article>
					<h2 class="blind">회원가입</h2>
					<section id="joinpath">
						<h2 class="blind">페이지 경로</h2>
						<div class="sp_joinpath joinpath1">
							<p class="blind">약관동의</p>
						</div>
					</section>
					<section>
						<div class="cont_head">
							<h3 class="head_tit">회원 분류 선택</h3>
						</div>
						<div class="con_box clear">
							<div class="member_group clear">
								<h4 class="tit">
									<img
										src="//nstatic.dcinside.com/dc/w/images/txtimg_general.png"
										alt="일반회원"><span class="stxt">(만 14세 이상)</span>
								</h4>
								<span class="radiobox big"> <input type="radio"
									id="general" name="age_type" checked="checked" value="general">
									<em class="checkmark"></em> <label class="blind" for="general">일반
										회원 선택</label>
								</span>
							</div>
							<div class="member_group child">
								<h4 class="tit">
									<img src="//nstatic.dcinside.com/dc/w/images/txtimg_child.png"
										alt="어린이 회원"><span class="stxt">(만 14세 미만)</span>
								</h4>
								<span class="radiobox big"> <input type="radio"
									id="child" name="age_type" value="child"> <em
									class="checkmark"></em> <label class="blind" for="child">어린이
										회원 선택</label>
								</span>
							</div>
						</div>
					</section>
					<section>
						<div class="cont_head">
							<h3 class="head_tit">약관 동의</h3>
						</div>
						<div class="con_box policy_box">
							<!-- 서비스 이용약관 -->
							<div id="service_policy" class="con ser_policy clear">
								<h4 class="tit font_red dotred">서비스 이용약관</h4>
								<div class="scroll">
									<div class="policy_cont">
										<strong>제1조 (목적)</strong>
										<p>본 약관은 ㈜디시인사이드(이하 "회사"라 합니다)가 제공하는 디시인사이드 및 디시인사이드 관련 제반
											서비스(이하 "서비스"라 합니다)의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한
											사항을 규정함을 목적으로 합니다.</p>

										<strong>제2조 (회원의 정의)</strong>
										<ol>
											<li>① 회원이란 회사가 제공하는 서비스에 접속하여 본 약관에 따라 회사의 이용절차에 동의하고
												회사가 제공하는 서비스를 이용하는 이용자를 말합니다.</li>
										</ol>

										<strong>제3조 (회원 가입)</strong>
										<ol>
											<li>① 회원이 되고자 하는 자는 회사가 정한 가입 양식에 따라 회원정보를 기입하고 "동의",
												"확인" 등의 버튼을 누르는 방법으로 회원 가입을 신청합니다.</li>
											<li>② 회사는 제1항과 같이 회원으로 가입할 것을 신청한 자가 다음 각 호에 해당하지 않는 한
												신청한 자를 회원으로 등록합니다.
												<ol>
													<li>1. 등록 내용에 허위, 기재누락, 오기가 있는 경우</li>
													<li>2. 제6조 제2항에 해당하는 회원 자격 제한 및 정지, 상실을 한 경험이 있었던 경우</li>
													<li>3. 기타 회원으로 등록하는 것이 회사의 서비스 운영 및 기술상 현저히 지장이 있다고
														판단되는 경우</li>
												</ol>
											</li>
											<li>③ 회원가입계약의 성립시기는 회사의 승낙이 가입신청자에게 도달한 시점으로 합니다.</li>
											<li>④ 회원은 제1항의 회원정보 기재 내용에 변경이 발생한 경우, 즉시 변경사항을 정정하여
												기재하여야 합니다.</li>
										</ol>

										<strong>제4조 (서비스의 제공 및 변경)</strong>
										<ol>
											<li>① 회사는 회원에게 아래와 같은 서비스를 제공합니다.
												<ol>
													<li>1. 커뮤니티 서비스 (갤러리 등)</li>
													<li>2. 개인화 서비스 (갤로그 등)</li>
													<li>3. 검색 서비스</li>
													<li>4. 기타 회사가 자체 개발하거나 다른 회사와의 협력계약 등을 통해 회원들에게 제공할
														일체의 서비스</li>
												</ol>
											</li>
											<li>② 회사는 서비스의 내용 및 제공일자를 제7조 제2항에서 정한 방법으로 회원에게 통지하고,
												제1항에 정한 서비스를 변경하여 제공할 수 있습니다.</li>
										</ol>

										<strong>제5조 (서비스의 중단)</strong>
										<ol>
											<li>① 회사는 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한
												경우에는 서비스의 제공을 일시적으로 중단할 수 있고, 새로운 서비스로의 교체, 기타 회사가 적절하다고
												판단하는 사유에 기하여 현재 제공되는 서비스를 완전히 중단할 수 있습니다.</li>
											<li>② 제1항에 의한 서비스 중단의 경우에 회사는 제7조 제2항에서 정한 방법으로 회원에게
												통지합니다. 다만, 회사가 통제할 수 없는 사유로 인한 서비스의 중단(시스템 관리자의 고의, 과실이 없는
												디스크 장애, 시스템 다운 등)으로 인하여 사전 통지가 불가능한 경우에는 그러하지 아니합니다.</li>
										</ol>

										<strong>제6조 (회원 탈퇴 및 자격 상실 등)</strong>
										<ol>
											<li>① 회원은 회사에 언제든지 자신의 회원 등록 말소(회원 탈퇴)를 요청할 수 있으며 회사는 위
												요청을 받은 즉시 해당 회원의 회원 등록 말소를 위한 절차를 밟습니다.</li>
											<li>② 회원 탈퇴가 이루어진 경우 회원의 게시물 중 개인 영역(갤로그 서비스 중 마이로그, 방명록
												메뉴 등)에 등록된 게시물 일체는 삭제됩니다. 다만, 커뮤니티 서비스, 기타 공용 게시판 등에 등록된
												게시물은 삭제되지 않습니다.</li>
											<li>③ 회원이 다음 각 호의 사유에 해당하는 경우, 회사는 회원의 회원자격을 적절한 방법으로 제한
												및 정지, 상실시킬 수 있습니다.
												<ol>
													<li>1. 가입 신청 시에 허위 내용을 등록한 경우</li>
													<li>2. 다른 사람의 서비스 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는
														경우</li>
													<li>3. 서비스를 이용하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우</li>
												</ol>
											</li>
											<li>④ 회사가 회원의 회원자격을 상실시키기로 결정한 경우에는 회원등록을 말소합니다.</li>
											<li>⑤ 이용자가 본 약관에 의해서 회원 가입 후 서비스를 이용하는 도중, 연속하여 1년 동안
												서비스를 이용하기 위해 로그인 기록이 없는 경우, 회사는 회원의 회원자격을 상실시킬 수 있습니다.</li>
										</ol>

										<strong>제7조 (회원에 대한 통지)</strong>
										<ol>
											<li>① 회사가 특정 회원에게 서비스에 관한 통지를 하는 경우 회원정보에 등록된 메일주소를 사용할
												수 있습니다.</li>
											<li>② 회사가 불특정다수 회원에 대한 통지를 하는 경우 7일 이상 공지사항 게시판에 게시함으로써
												개별 통지에 갈음할 수 있습니다.</li>
										</ol>

										<strong>제8조 (회원의 개인정보)</strong>
										<p>회사는 서비스를 제공하기 위하여 관련 법령의 규정에 따라 회원으로부터 필요한 개인정보를 수집합니다.
											(개인정보에 대한 개별 항목은 개인정보처리방침에서 고지)</p>

										<strong>제9조 (회사의 의무)</strong>
										<ol>
											<li>① 회사는 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 본 약관이 정하는
												바에 따라 지속적이고, 안정적으로 서비스를 제공하기 위해서 노력합니다.</li>
											<li>② 회사는 회원이 안전하고 편리하게 서비스를 이용할 수 있도록 시스템을 구축합니다.</li>
											<li>③ 회사는 회원이 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</li>
											<li>④ 회사는 회원이 서비스를 이용함에 있어 회원에게 법률적인 증명이 가능한 고의 또는 중대한
												과실을 입힐 경우 이로인한 손해를 배상할 책임이 있습니다.</li>
										</ol>

										<strong>제10조 (회원의 ID 및 비밀번호에 대한 의무)</strong>
										<ol>
											<li>① 회사가 관계법령, "개인정보보호정책"에 의해서 그 책임을 지는 경우를 제외하고, 자신의
												ID와 비밀번호에 관한 관리책임은 각 회원에게 있습니다.</li>
											<li>② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.</li>
											<li>③ 회원은 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는
												바로 회사에 통보하고 회사의 안내가 있는 경우에는 그에 따라야 합니다.</li>
										</ol>

										<strong>제11조 (회원의 의무)</strong>
										<ol>
											<li>① 회원은 다음 각 호의 행위를 하여서는 안됩니다.
												<ol>
													<li>1. 회원가입신청 또는 변경시 허위내용을 등록하는 행위</li>
													<li>2. 회사 및 제3자의 지적재산권을 침해하거나 회사의 권리와 업무 또는 제3자의 권리와
														활동를 방해하는 행위</li>
													<li>3. 다른 회원의 ID를 도용하는 행위</li>
													<li>4. 관련 법령에 의하여 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 등)의 게시 또는
														전송하는 행위</li>
													<li>5. 회사의 직원 또는 서비스의 관리자를 가장하거나 타인의 명의를 도용하여 정보를 게시,
														전송하는 행위</li>
													<li>6. 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로
														고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나
														전송하는 행위</li>
													<li>7. 스토킹(stalking) 등 다른 회원을 괴롭히는 행위</li>
													<li>8. 다른 회원에 대한 개인정보를 그 동의 없이 수집, 저장, 공개하는 행위</li>
													<li>9. 불특정 다수의 자를 대상으로 하여 광고 또는 선전을 게시하거나 음란물을 게시하는 행위</li>
													<li>10. 회사가 제공하는 갤로그 및 관련 서비스에 게시된 공지사항 규정을 위반하는 행위</li>
												</ol>
											</li>
											<li>② 제1항에 해당하는 행위를 한 회원이 있을 경우 회사는 본 약관 제6조 제2, 3항에서 정한
												바에 따라 회원의 회원자격을 적절한 방법으로 제한 및 정지, 상실시킬 수 있습니다.</li>
											<li>③ 회원은 그 귀책사유로 인하여 회사나 다른 회원이 입은 손해를 배상할 책임이 있습니다.</li>
										</ol>

										<strong>제12조 (공개게시물의 삭제 또는 이용제한)</strong>
										<ol>
											<li>① 회원의 공개게시물의 내용이 다음 각 호에 해당하는 경우 회사는 해당 공개게시물에 대한
												접근을 임시적으로 차단하는 조치를 취할 수 있고, 7일 이내에 각 호의 동일 사례가 2회 이상 반복되는 경우
												해당 게시물을 삭제 또는 해당 회원의 회원 자격을 제한, 정지 또는 상실시킬 수 있습니다.
												<ol>
													<li>1. 다른 회원 또는 제3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용</li>
													<li>2. 음란물, 욕설 등 공서양속에 위반되는 내용의 정보, 문장, 도형 등을 유포하는 내용</li>
													<li>3. 범죄행위와 관련이 있다고 판단되는 내용</li>
													<li>4. 다른 회원 또는 제3자의 저작권 등 기타 권리를 침해하는 내용</li>
													<li>5. 종교적, 정치적 분쟁을 야기하는 내용으로서, 이러한 분쟁으로 인하여 회사의 업무가
														방해되거나 방해되리라고 판단되는 경우</li>
													<li>6. 타인의 개인정보, 사생활을 침해하거나 명예를 손상시키는 경우</li>
													<li>7. 동일한 내용을 중복하여 다수 게시하는 등 게시의 목적에 어긋나는 경우</li>
													<li>8. 불필요하거나 승인되지 않은 광고, 판촉물을 게재하는 경우</li>
												</ol>
											</li>
											<li>② 회원의 공개게시물로 인한 법률상 이익 침해를 근거로, 다른 회원 또는 제3자가 회원 또는
												회사를 대상으로 하여 민형사상의 법적 조치(예:고소, 가처분신청, 손해배상청구소송)를 취하는 동시에 법적
												조치와 관련된 게시물의 삭제를 요청해오는 경우, 회사는 동 법적 조치의 결과(예: 검찰의 기소, 법원의
												가처분결정, 손해배상판결)가 있을 때까지 관련 게시물에 대한 접근을 잠정적으로 제한할 수 있습니다.</li>
										</ol>


										<strong>제13조 (저작권의 귀속 및 게시물의 이용)</strong>
										<ol>
											<li>① 회사가 작성한 저작물에 대한 저작권, 기타 지적재산권은 회사에 귀속합니다.</li>
											<li>② 회원은 회사가 제공하는 서비스를 이용함으로써 얻은 정보를 회사의 사전승낙 없이 복제,
												전송, 출판, 배포, 방송, 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는
												안됩니다.</li>
											<li>③ 회원이 서비스 내에 게시한 게시물의 저작권은 게시한 회원에게 귀속됩니다. 단, 회사는
												서비스의 운영, 전시, 전송, 배포, 홍보의 목적으로 회원의 별도의 허락 없이 무상으로 저작권법에 규정하는
												공정한 관행에 합치되게 합리적인 범위 내에서 다음과 같이 회원이 등록한 게시물을 사용할 수 있습니다.
												<ol>
													<li>1. 서비스 내에서 회원 게시물의 복제, 수정, 개조, 전시, 전송, 배포 및 저작물성을
														해치지 않는 범위 내에서의 편집 저작물 작성</li>
													<li>2. 미디어, 통신사 등 서비스 제휴 파트너에게 회원의 게시물 내용을 제공, 전시 혹은
														홍보하게 하는 것. 단, 이 경우 회사는 별도의 동의 없이 회원의 이용자ID 외에 회원의 개인정보를
														제공하지 않습니다.</li>
												</ol>
											</li>
											<li>3. 회사는 전항 이외의 방법으로 회원의 게시물을 이용하고자 하는 경우, 전화, 팩스,
												전자우편 등의 방법을 통해 사전에 회원의 동의를 얻어야 합니다.</li>
										</ol>

										<strong>제14조 (광고게재 및 광고주와의 거래)</strong>
										<ol>
											<li>① 회사가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의 일부는 광고게재를 통한
												수익으로부터 나옵니다. 회원은 회원이 등록한 게시물의 내용을 활용한 광고게재 및 기타 서비스상에 노출되는
												광고게재에 대해 동의합니다.</li>
											<li>② 회사는 서비스상에 게재되어 있거나 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신
												또는 거래를 함으로써 발생하는 손실과 손해에 대해 책임을 지지 않습니다</li>
										</ol>


										<strong>제15조 (약관의 개정)</strong>
										<ol>
											<li>① 회사는 약관의규제등에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률 등
												관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.</li>
											<li>② 다만, 개정 내용이 회원에게 불리할 경우에는 적용일자 30일 이전부터 적용일자 전일까지
												공지합니다.</li>
											<li>③ 회원은 변경된 약관에 대해 거부할 권리가 있습니다. 회원은 변경된 약관이 공지된 후 15일
												이내에 거부의사를 표명할 수 있습니다. 회원이 거부하는 경우 회사는 당해 회원과의 계약을 해지할 수
												있습니다. 만약 회원이 변경된 약관이 공지된 후 15일 이내에 거부의사를 표시하지 않는 경우에는 동의하는
												것으로 간주합니다.</li>
										</ol>

										<strong>제16조 (재판관할)</strong>
										<p>회사와 회원간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로
											인한 소는 민사소송법상의 관할을 가지는 대한민국의 법원에 제기합니다.</p>
										<p>부칙 (2013년 1월18일 공고)</p>
										<p>본 약관은 2013년 2월 18일부터 적용하고, 2012년 4월 5일부터 적용되던 종전의 약관은 본
											약관으로 대체합니다.</p>
									</div>
								</div>
								<div class="policy_check">
									<span class="checkbox"> <input type="checkbox"
										id="service_agree" name="service_agree" value=""> <em
										class="checkmark"></em> <label for="service_agree">내용을
											확인하였으며, 동의합니다.</label>
									</span>
								</div>
							</div>
							<!-- //서비스 이용약관 -->
							<!-- 개인정  보 수집 및 이용 약관 -->
							<div id="privacy_policy" class="con pri_policy clear">
								<h4 class="tit font_red dotred">개인정보처리방침</h4>
								<div class="scroll">
									<div class="policy_cont">
										<p>㈜디시인사이드(이하 "회사"라 함)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 회사의
											디시인사이드 및 관련 서비스(이하 "서비스"라 함)를 이용함과 동시에 온라인상에서 회사에 제공한 개인정보가
											보호 받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 정보통신서비스제공자가 준수하여야 하는 대한민국의
											관계 법령 및 개인정보보호, 정보보호에 관한 규정을 준수하고 있습니다. 회사는 개인정보처리방침을 통하여
											이용자들이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가
											취해지고 있는지 알려드립니다</p>
										<div class="navlist">
											<ol class="list">
												<li><a href="#1">1 개인정보의 수집목적 및 이용목적</a></li>
												<li><a href="#2">2 개인정보 수집항목 및 수집방법</a></li>
												<li><a href="#3">3 개인정보 수집에 대한 동의</a></li>
												<li><a href="#4">4 개인정보의 제공 및 공유</a></li>
												<li><a href="#5">5 개인정보 열람, 정정</a></li>
												<li><a href="#6">6 개인정보의 보유 및 이용기간</a></li>
												<li><a href="#7">7 개인정보의 파기절차 및 방법</a></li>
											</ol>
											<ol class="list">
												<li><a href="#8">8 개인정보의 처리위탁</a></li>
												<li><a href="#9">9 개인정보 보관 및 보호를 위한 기술적, 관리적 대책</a></li>
												<li><a href="#10">10 만 14세 미만 아동의 개인정보</a></li>
												<li><a href="#11">11 이용자 및 법정대리인의 권리와 그 행사방법</a></li>
												<li><a href="#12">12 개인정보 자동 수집 장치의 설치와 운영 및 거부에 관한
														사항</a></li>
												<li><a href="#13">13 개인정보보호 책임자</a></li>
												<li><a href="#14">14 부칙</a></li>
											</ol>
										</div>

										<ol>
											<li id="1"><strong>1. 개인정보의 수집목적 및 이용목적</strong>
												<p>개인정보란 생존하는 개인에 관한 정보로서 해당 이용자 개인을 식별할 수 있는 정보(당해
													정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함함)를
													말합니다</p></li>
											<strong class="stit">개인정보 수집목적</strong>
											<p>회사가 이용자 개인의 정보를 수집하는 목적은 이용자에게 최적의 서비스를 제공하기 위한 것입니다.</p>
											<p>회사는 각종의 콘텐츠를 유/무료로 서비스하고 있습니다. 이때 이용자가 제공한 개인정보를 바탕으로
												이용자에게 보다 더 유용한 정보를 선택적으로 제공하는 것이 가능하게 됩니다. 회사는 보다 나은 서비스를
												제공하기 위해서 광고를 게재합니다. 이때에도 이용자 개인에 대한 정보를 바탕으로 좀더 유용한 정보로서의
												가치가 있는 광고를 선별적으로 전달할 수 있게 됩니다.</p>
											<strong>개인정보 이용</strong>
											<p>회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지,
												가입 의사 확인, 만14세 미만 아동 개인정보 수집 시 법정 대리인 정보 및 동의여부 확인, 불만처리,
												민원처리, 고지사항 전달, 기타 의사소통을 위한 절차 및 이벤트, 개인맞춤서비스, 연령별 서비스,
												인구통계학적 분석 등 정보의 전달을 위한 절차에 이용될 수 있습니다.</p>

											<li id="2"><strong>2. 개인정보 수집항목 및 수집방법</strong>
												<p>회사는 원활한 서비스 제공을 위해 최소한의 개인정보를 수집하고 있습니다.</p>
												<p>이용자는 회원 가입 시(약관동의 필수) 또는 서비스 이용 과정에 따라 최소한의 정보가 수집될 수
													있으며 해당 내용은 아래와 같습니다.</p> <strong class="stit">개인정보
													수집항목</strong>
												<p>
													<회원가입 시>
												</p>
												<p>- 이름, 아이디, 비밀번호, 닉네임, 이메일, 만 14세 미만의 경우 법정대리인
													정보(개인식별용 키값)</p>
												<p>
													<서비스 이용 시>
												</p>
												<p>- 서비스 이용 기록, 쿠키, IP주소, 결제내역, 불량 이용 기록, 기기정보, 성별, 성인
													인증 값, 이벤트 응모(전화번호, 이름 등), 회원정보 수정 등</p>
												<p>
													<게시물 신고 시>
												</p>
												<p>이용자의 문의/답변 내용에 포함된 개인정보, 저작권/개인정보침해 신고 시 사업자등록증 사본/개인
													신분증 사본/위임장 정보(대리인 정보) 등</p>
												<p>
													<이벤트 경품 배송시>
												</p>
												<p class="mb5">- 아이디, 이름, 이메일, 전화번호</p></li>

											<li id="3"><strong>3. 개인정보 수집에 대한 동의</strong>
												<p>회사는 이용자가 회원가입을 할 경우(이하 “회원”이라 함) 개인정보 수집에 대하여 동의를 받고
													있습니다.</p>
												<p>회원가입 절차 중 이용약관 및 개인정보처리방침에 개인정보 수집 동의절차에서 해당 이용약관
													동의란에 체크하게 되면 개인정보 수집에 대해 동의한 것으로 간주합니다.</p></li>

											<li id="4"><strong>4. 개인정보의 제공 및 공유</strong>
												<p class="mb5">회사는 회원의 실명인증에 필요한 개인정보를 "NICE신용평가(주)"(구
													"한국신용평가정보")와 "KG모빌리언스"에 입력과 수집을 일임하고 있으며 해당 개인정보는 일임된 업체에서
													관리합니다. 회사는 그 외 회원의 동의가 있거나 법률의 규정에 의한 경우를 제외하고는 어떠한 경우에도
													"2. 개인정보 수집항목 및 수집방법"에서 고지한 범위를 넘어서 개인정보를 이용하거나 타인 또는 타기업,
													기관에게 제공하지 않습니다.</p>
												<p class="mb5">
													회사는 회원의 개인정보를 제3자에게 제공하거나 공유하는 경우에는 사전에 회원에게 개인정보를 제공받거나
													공유하게 될 자가 누구이며, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 공유되어야
													하는지, 그리고 언제까지 어떻게 보호, 관리되는지에 대해 개별적으로 전자우편 또는 회사 서비스 내의
													공지사항을 통해 고지하여 동의를 구하는 절차를 거치거나, 회원가입 시 별도로 동의를 구할 수도 있습니다.
													회원이 동의하지 않는 경우에는 개인정보를 제공하거나 공유하지 않습니다.<br>제공관계에 변화가
													있거나 제공관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다.
												</p>
												<p class="mb5">다만, 다음의 경우에는 예외적으로 동의 없이 개인정보를 제공할 수
													있습니다.</p>
												<ul>
													<li>- 법령의 규정에 의거하거나, 수사상 목적으로 법령에 정해진 절차와 방법에 따라 관련기관의
														요구가 있는 경우</li>
													<li>- 통계작성, 학술연구 또는 시장조사를 위하여 개인을 식별할 수 없는 형태로 제공하는 경우</li>
												</ul></li>

											<li id="5"><strong>5. 개인정보 열람, 정정</strong>
												<p>회원은 언제든지 등록되어 있는 회원의 개인정보를 열람하거나 정정을 요청할 수 있습니다. 회원
													개인 정보의 열람 및 정정은 회사 서비스 로그인 후 '회원정보' 메뉴를 통하여 직접 열람 또는 정정할 수
													있습니다. 회사는 개인정보의 오류에 대한 정정을 요청할 경우에는 정정을 완료하기 전까지 당해 개인정보를
													이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를
													제3자에게 지체 없이 통지하여 정정이 이루어지도록 조치하겠습니다.</p></li>

											<li id="6"><strong>6. 개인정보의 보유 및 이용기간</strong>
												<p class="mb5">회사는 회원가입일로부터 회원탈퇴와 같은 개인정보 수집, 이용, 제공에 대한
													동의 철회 시까지 회원의 개인정보를 보유 및 이용하게 됩니다. 동의철회는 회사 서비스의 로그인 후
													'회원정보' 메뉴 내의 '탈퇴'를 클릭한 다음 정해진 순서에 따라 동의철회를 하면 즉시 회원탈퇴가 완료되며
													회원의 개인정보를 파기하는 등 필요한 조치를 취합니다.</p>
												<p class="mb5">단, 다음의 정보에 대해서는 내부 방침 및 관계법령에 따라 명시한 기간
													동안 보관 후 파기합니다.</p>
												<ol class="mb5">
													<li>
														<p>1) 불법적 사용자에 대한 관련 기관 수사 협조 및 부정이용 관련하여 최대 3개월간 보관 후
															파기합니다.</p>
														<p class="mb5">- 아이디, 닉네임, 이름, 이메일, 개인식별용 키값(본인인증한 경우)</p>
														<p>- 서비스를 불법적/부정한 형태로 이용한 기록</p>
													</li>
													<li>
														<p class="mb5">2) 관계법령의 규정에 의하여 보관할 필요가 있는 경우 회사는 아래와
															같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관 후 파기합니다.</p>
														<p class="mb5">- 서비스 이용기록(저작물 작성 시 IP), 이용자 접속 정보(회원
															가입 시 IP, 최종 접속 시간): 3개월 (통신비밀보호법)</p>
														<p class="mb5">- 표시/광고에 관한 기록: 6개월 (전자상거래등에서의 소비자보호에
															관한 법률)</p>
														<p class="mb5">- 계약 또는 청약철회 등에 관한 기록: 5년 (전자상거래등에서의
															소비자보호에 관한 법률)</p>
														<p class="mb5">- 대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래등에서의
															소비자보호에 관한 법률)</p>
														<p class="mb5">- 소비자의 불만 또는 분쟁처리에 관한 기록: 3년 (전자상거래등에서의
															소비자보호에 관한 법률)</p>
													</li>
												</ol></li>

											<li id="7"><strong>7. 개인정보의 파기절차 및 방법</strong> 회사의 개인정보
												파기절차 및 방법은 다음과 같습니다. <strong class="stit">파기절차</strong>
												<ul>
													<li>- 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로
														옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(개인정보의
														보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.</li>
													<li>- 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지
														않습니다.</li>
												</ul> <strong class="stit">파기방법</strong>
												<ul>
													<li>- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여
														삭제합니다.</li>
													<li>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</li>
												</ul></li>

											<li id="8"><strong>8. 개인정보의 처리위탁</strong>
												<p class="mb5">회사는 서비스 제공을 위해서 아래와 같이 개인정보 처리업무를 외부 업체에
													위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을
													규정하고 있습니다.</p>
												<p>[서비스 제공 수탁업체]</p>
												<table class="policy_table">
													<caption class="blind">서비스 제공 수탁업체 테이블</caption>
													<colgroup>
														<col style="width: 33%">
														<col style="width: 33%">
														<col style="width: 34%">
													</colgroup>
													<thead>
														<tr>
															<th scope="col">수탁업체</th>
															<th scope="col">위탁업무</th>
															<th scope="col">개인정보 보유 및 이용기간</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>NICE신용평가정보㈜<br> KG모빌리언스
															</td>
															<td>
																<p>실명확인</p>
																<p>본인인증</p>
															</td>
															<td>해당업체에서 이미 보유하고 있는<br> 개인정보이기 때문에 별도 저장하지 않음
															</td>
														</tr>
														<tr>
															<td>NHN한국사이버결제</td>
															<td>
																<p>휴대폰 결제</p>
																<p>신용카드 결제</p>
															</td>
															<td>회원탈퇴 시 혹은 위탁계약 종료 시 까지</td>
														</tr>
													</tbody>
												</table>

												<p class="mb5">[제3자 정보 제공 안내]</p>
												<p>회사는 이용자들의 개인정보를 수집 당시 동의 받은 범위 내에서만 사용하며, 이용자의 사전 동의
													없이는 해당 범위를 초과하여 개인정보를 이용하거나 외부에 공개 또는 제공하지 않습니다.</p>
												<table class="policy_table">
													<colgroup>
														<col style="width: 25%">
														<col style="width: 25%">
														<col style="width: 25%">
														<col style="width: 25%">
													</colgroup>
													<thead>
														<tr>
															<th scope="col">서비스명</th>
															<th scope="col">제공받는자</th>
															<th scope="col">목적</th>
															<th scope="col">개인정보항목</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>웹툰</td>
															<td>㈜ 탑코</td>
															<td>서비스 및 성인컨텐츠 제공<br>목적
															</td>
															<td>
																<p>아이디 값</p>
																<p>성인 인증 값</p>
															</td>
														</tr>
														<tr>
															<td>충전소</td>
															<td>㈜ 핀크럭스</td>
															<td>서비스 제공 목적</td>
															<td>
																<p>아이디 값</p>
															</td>
														</tr>
														<tr>
															<td>기프티샵</td>
															<td>㈜ 원큐브마케팅</td>
															<td>서비스 제공 목적</td>
															<td>
																<p>아이디 값</p>
															</td>
														</tr>
														<tr>
															<td>영화</td>
															<td>㈜ KT Hitel</td>
															<td>서비스 및 성인컨텐츠 제공<br>목적
															</td>
															<td>
																<p>아이디 값</p>
																<p>성인 인증 값</p>
															</td>
														</tr>
														<tr>
															<td>디시골드라이브</td>
															<td>㈜ 센클라우드</td>
															<td>서비스 및 성인컨텐츠 제공<br>목적
															</td>
															<td>
																<p>아이디 값</p>
																<p>성인 인증 값</p>
																<p>닉네임</p>
															</td>
														</tr>
													</tbody>
												</table></li>

											<li id="9"><strong>9. 개인정보 보관 및 보호를 위한 기술적, 관리적
													대책</strong>
												<p class="mb5">회원의 개인정보 중 개인식별용 키값과 "2. 개인정보 수집항목 및
													수집방법"에서 고지한 정보 이외의 개인정보는 "4. 개인정보의 제공 및 공유"에 고지한 내용에 따라 해당
													업체에서 관리합니다.</p>
												<p class="mb5">회원의 개인정보는 비밀번호에 의해 보호되고 있습니다. 회원 계정의
													비밀번호는 오직 본인만이 알 수 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만
													가능합니다. 따라서 회원의 비밀번호는 누구에게도 알려주면 안됩니다. 또한 작업을 완료한 후
													로그아웃(log-out)을 하고 해당 서비스를 사용한 프로그램(웹브라우저, 앱, 관련 프로그램 등)을
													종료하는 것이 바람직합니다. 특히 본인이 사용하는 기기(PC, 스마트폰, 태블릿 등 서비스 사용이 가능한
													기기)를 다른 사람과 공유하여 사용하거나 공공장소에서 이용한 경우 개인정보가 다른 사람에게 알려지는 것을
													막기 위해서 이와 같은 절차가 더욱 필요하다고 하겠습니다.</p>
												<p class="mb5">회사는 개인정보 처리 직원을 최소한으로 제한하고 담당직원에 대한 수시
													교육을 통하여 본 정책의 준수를 강조하고 있으며, 내부적인 점검을 통해 본 정책의 이행사항 및 담당직원의
													준수여부를 확인하여 문제가 발견될 경우 바로 시정조치하고 있습니다. 회사의 개인정보보호를 위한 기술적,
													관리적 대책은 다음과 같습니다.</p>

												<ol>
													<li>1) 컴퓨터 바이러스에 의한 개인정보의 침해를 방지하기 위하여 백신프로그램을 이용하며
														주기적인 업데이트를 통해 새로운 바이러스에 대비하고 있습니다.</li>
													<li>2) 개인정보에 대한 직접적인 접근을 방지하기 위하여 데이터베이스의 보안기능을 이용하여
														일부 정보는 열람할 수 없도록 하고 있습니다.</li>
													<li>3) 인터넷망을 통한 해커의 불법적 침입에 대비하여 방화벽과 침입탐지 시스템을 사용하여
														보안에 만전을 기하고 있습니다.</li>
													<li>4) 개인정보에 대한 접근권한을 개인정보보호 책임자 등 개인정보관리업무를 수행하는 자,
														기타 업무상 개인정보의 처리가 불가피한 자로 제한하며, 그 이외의 인원이 개인정보에 접근하는 것을
														허용하지 않습니다.</li>
													<li>5) 개인정보와 일반 데이터를 혼합하여 탑재하지 않으며, 별도의 계정을 통하여 관리하고
														있습니다.</li>
													<li>6) 시스템적으로 보안성을 확보하기 위해 가능한 모든 기술적 장치를 갖추려 노력하고
														있습니다.</li>
												</ol></li>

											<li id="10"><strong>10. 만 14세 미만 아동의 개인정보</strong>
												<p>회사는 만 14세 미만의 아동의 회원 가입 시 법정대리인의 동의를 확인하기 위하여 필요한
													최소한의 정보(법정 대리인의 개인정보)를 수집, 이용할 수 있습니다. 회사는 수집된 법정대리인의 개인정보를
													해당 법정대리인의 동의 여부를 확인하는 목적 외의 용도로 이용하거나 제3자에게 제공하지 않습니다.</p></li>

											<li id="11"><strong>11. 이용자 및 법정대리인의 권리와 그 행사방법</strong>
												<p>이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의
													개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다. 이용자 혹은 만 14세 미만
													아동의 개인정보 조회, 수정을 위해서는 사이트 초기 페이지의 '개인정보수정'을, 가입해지(동의철회)를
													위해서는 개인정보수정 화면 하단의 '회원탈퇴'를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정
													또는 탈퇴가 가능합니다. 혹은 개인정보보호 책임자에게 서면, 전화 또는 이메일로 연락하면 지체 없이
													조치하겠습니다. 이용자가 개인정보의 오류에 대한 정정을 요청할 경우에는 정정을 완료하기 전까지 당해
													개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3 자에게 이미 제공한 경우에는 정정
													처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다. 회사는 이용자 혹은 법정 대리인의
													요청에 의해 해지 또는 삭제된 개인정보는 "6. 동의철회 및 파기절차"에 명시된 바에 따라 처리하고 그
													외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</p></li>

											<li id="12"><strong>12. 개인정보 자동 수집 장치의 설치와 운영 및
													거부에 관한 사항</strong>
												<p>회사는 이용자들에게 특화된 맞춤서비스를 제공하기 위해서 이용자들의 정보를 저장하고 수시로
													불러오는 '쿠키(cookie)'를 사용합니다. 쿠키란 웹사이트를 운영하는데 이용되는 서버가 이용자의
													웹브라우저에게 보내는 소량의 텍스트 정보로 이용자들이 사용하는 기기(PC, 스마트폰, 태블릿 등 서비스
													사용이 가능한 기기 중 쿠키 설정이 가능한 기기)에 저장되기도 합니다.</p> <strong>1)
													쿠키를 통한 맞춤화 서비스 제공</strong> <strong style="margin-top: 0">쿠키의
													사용 목적</strong>
												<p>- 이용자들의 접속 빈도나 방문 시간 등 이용형태와 자취 등을 추적해 이용자들의 취향과
													관심분야를 파악하여 이용자에게 최적화된 맞춤형 정보를 제공하기 위함</p> <strong class="stit">쿠키
													설치, 운영 및 거부</strong>
												<ul>
													<li>- 이용자들은 쿠키 사용에 대한 선택권을 가지고 있으며, 웹브라우저의 설정에 따라 모든
														쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도
														있습니다.</li>
													<li>- 쿠키 설정을 거부하는 방법으로는 이용자가 사용하는 웹브라우저의 옵션을 선택함으로써 모든
														쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.</li>
													<li>단, 쿠키 설치를 거부하였을 경우 일부 서비스 이용에 어려움이 있을 수 있습니다.</li>
												</ul> <strong class="stit">쿠키 설정방법 예</strong>
												<ol>
													<li>1) Internet Explorer - 웹 브라우저 상단의 도구 > 인터넷 옵션 >
														개인정보</li>
													<li>2) Chrome - 웹 브라우저 우측의 설정 메뉴 > 화면 하단의 고급 설정 > 개인정보
														및 보안 > 사이트 설정 > 쿠키</li>
												</ol> <strong>2) 구글 애널리틱스를 통한 로그 분석</strong>
												<p>- 회사는 구글 애널리틱스(Google Analytics)를 이용하여 로그 분석을 하고
													있습니다. 이용자를 식별할 수 없으며 전체적인 로그 분석에만 이용합니다. 이용자는 구글 애널리틱스 수집을
													거부할 수 있습니다. ('쿠키 설정 차단' 혹은 '구글 애널리틱스 차단 브라우저 부가 기능' 사용)</p> <strong>3)
													앱 사용 시 서비스 이용 기록 분석</strong>

												<p>- 앱 사용 시 원활하고 정상적인 서비스를 위해 앱스토어 또는 광고사 등에서 다음과 같은 정보가
													수집될 수 있습니다.</p>
												<p>- 구글 광고 ID, Android ID(안드로이드 OS만 해당), 단말기 정보(모델명,
													OS버전, 고유식별번호)</p>
												<p>- 광고 식별자에 대해서는 아래와 같은 방법으로 수집을 거부할 수 있습니다.</p>
												<p>- Android인 경우 [설정 > Google > 광고] 또는 [설정 > 일반 > 계정 및
													동기화 > Google > 개인정보 및 개인정보보호 > 광고 설정]</p>
												<p>- iOS인 경우 [설정 > 개인정보보호 > 광고]</p></li>

											<li id="13"><strong>13. 개인정보보호 책임자</strong>
												<p>이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 회사는 개인정보보호
													책임자를 두고 있습니다. 이용자의 개인정보와 관련한 문의사항이 있으시면 아래의 개인정보보호 책임자 또는
													개인정보보호 담당자에게 연락 바랍니다.</p>
												<div class="manager_info">
													<div class="manager_cont">
														<strong>개인정보보호 책임자</strong>
														<p>이 름 : 김지선</p>
														<p>소 속 : 웹관리팀</p>
														<p>직 위 : 팀장</p>
														<p>
															메 일 : <a href="mailto:login@dcinside.com">login@dcinside.com</a>
														</p>
														<p>팩 스 : 02-3448-5839</p>
													</div>
													<div class="manager_cont">
														<strong>개인정보보호 담당자</strong>
														<p>이 름 : 홍예림</p>
														<p>소 속 : 웹관리팀</p>
														<p>직 위 : 과장</p>
														<p>
															메 일 : <a href="mailto:login@dcinside.com">login@dcinside.com</a>
														</p>
														<p>팩 스 : 02-3448-5839</p>
													</div>
												</div>
												<p class="mb5">기타 개인정보침해에 대한 신고나 상담이 필요한 경우 아래 기관에 문의하기
													바랍니다.</p>
												<ul>
													<li>- 개인정보침해신고센터 (<a href="https://privacy.kisa.or.kr"
														target="_blank">https://privacy.kisa.or.kr</a> / 국번없이 118)
													</li>
													<li>- 대검찰청 사이버수사과 (<a href="https://www.spo.go.kr"
														target="_blank">https://www.spo.go.kr</a> / 국번없이 1301)
													</li>
													<li>- 경찰청 사이버안전국 (<a
														href="https://cyberbureau.police.go.kr" target="_blank">https://cyberbureau.police.go.kr</a>
														/ 국번없이 182)
													</li>
												</ul></li>

											<li id="14"><strong>14. 부칙</strong>
												<p class="mb5">이 개인정보처리방침은 2019년 07월 15일부터 적용되며, 본
													개인정보처리방침의 내용 추가, 삭제 및 수정이 있을 경우 개정 최소 7일전에 회사 서비스 내의 공지사항을
													통하여 고지할 것 입니다. 다만, 수집하는 개인정보의 항목, 이용목적의 변경 등과 같이 이용자 권리의
													중대한 변경이 발생할 때에는 최소 30일 전에 공지하며, 이 때 변경 내용에 대해 동의하지 않는 회원에
													대해 회원 탈퇴를 할 수 있는 안내를 포함합니다.</p>
												<ul>
													<li>- 개인정보처리방침 공고일자 : 2019년 07월 08일</li>
													<li>- 개인정보처리방침 시행일자 : 2019년 07월 15일</li>
												</ul></li>
										</ol>
									</div>
								</div>
								<div class="policy_check">
									<span class="checkbox"> <input type="checkbox"
										id="personal_agree" name="personal_agree" value=""> <em
										class="checkmark"></em> <label for="personal_agree">내용을
											확인하였으며, 동의합니다.</label>
									</span>
								</div>
							</div>
							<!-- //개인정보 수집 및 이용 약관 -->
							<div class="btn_box clear">
								<div class="fr">
									<button type="submit" id="policy_agree"
										class="btn_grey small bnt_next">다음</button>
								</div>
							</div>
						</div>
					</section>

				</article>
			</div>
		</form>
		</main>
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

