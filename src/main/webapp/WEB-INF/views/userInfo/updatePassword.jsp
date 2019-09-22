<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="content-language" content="kr">
  <meta name="google-site-verification" content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
  <meta name="author" content="디시인사이드">
  <meta name="title" content="디시 회원정보">
  <meta name="description" content="약관동의">
  <!-- <meta property="og:type" content="website">
  <meta property="og:title" content="회원가입">
  <meta property="og:description" content="약관동의">
  <meta property="og:image" content="//nstatic.dcinside.com/dc/w/images/descrip_img.png">
  <meta property="og:url" content="//www.dcinside.com/"> -->
  <title>디시 회원정보</title>
  <link rel="shortcut icon" href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/login.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/common.css"/>
  <script type="text/javascript" src="//nstatic.dcinside.com/dc/w/js/html5shiv.min.js"></script>
  <script type="text/javascript" src="./js/member.js?190104"></script>
  <!--[if IE 7]>
    <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/ie7.css"/>
  <![endif]-->
 <script type="text/javascript">
 function checkValue(user)
 {
    var form = document.user;
    
    if(!form.password.value){
        alert("비밀번호를 입력하세요.");
        return false;
        }
    if(!form.newpassword.value){
        alert("변경하실 비밀번호를 입력하세요.");
        return false;
        }
    if(!form.newpasswordcheck.value){
        alert("비밀번호 확인은 필수 입니다.");
        return false;
        }
     if(form.newpassword.value != form.newpasswordcheck.value){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
        }
	}
</script>
</head>
<body>
  <!--스킵 내비게이션-->
  <div class="skip">
    <a href="#pagemenu"><span>페이지메뉴 영역 바로가기</span></a>
    <a href="#contbox"><span>본문 영역 바로가기</span></a>
  </div>
  <!-- //스킵 내비게이션-->
  <div id="top" class="width868 login_wrap">
    <!-- 상단 -->
    <header class="dcheader bg">
      <div class="dchead">
        <!-- 로고영역 -->
        <h1 class="dc_logo">
          <a href="http://localhost:8090/free/board/menulist.do">
            <img src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png" alt="디시인사이드">
          </a>
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
<form:form method="post" action="update_password.do" name="user" commandName="user" onsubmit="return checkValue(this)">
<form:hidden path="id"/>
      <div class="content repw">
        <article>
          <h2 class="blind">비밀번호 변경</h2>
          <section id="pagemenu">
            <h2 class="blind">페이지 메뉴</h2>
            <ul class="page_menu three clear">
               <li><a href="http://localhost:8090/free/userInfo01.do?id=${user.id }" class="pmenu">개인 정보 변경</a></li>
              <li><a href="http://localhost:8090/free/move_updatePassword.do?id=${user.id }" class="pmenu on">비밀번호 변경</a></li>
              <li><a href="http://localhost:8090/free/predelete_userInfo.do?id=${user.id }" class="pmenu">회원 탈퇴</a></li>
            </ul>
          </section>
          <section>
            <div class="cont_head">
              <h3 class="head_tit">비밀번호 변경</h3>
            </div>
            <div id="contbox" class="con_box brd">
              <!-- 비밀번호 변경 입력 -->
              
              <div class="con innerbox">
                <h4 class="tit font_red dotred">비밀번호는 주기적으로 변경하여 주시기 바랍니다.</h4>
                <div class="info_txt">
                  <p><em class="tip_deco_dot"></em>이용하는 아이디와 비밀번호는 가급적 다르게 설정해 주시기 바랍니다.</p>
                  <p><em class="tip_deco_dot"></em>비밀번호는 영문, 숫자 6~20자 조합으로 설정해 주시기 바랍니다.</p>
                  <p><em class="tip_deco_dot"></em>최소 3개월에 한번씩은 주기적으로 비밀번호를 변경해 주시기 바랍니다.</p>

                </div>
                <div class="bg_box">
                  <div class="form_box">
                    <input type="password" class="int" title="현재 비밀번호 입력" placeholder="현재 비밀번호" id="pw_pre" name="password" maxlength="20">
                    <input type="password" class="int" title="새 비밀번호 입력" placeholder="새 비밀번호" id="dc_pw" name="newpassword" maxlength="20">
                    <div class="tip_msgbox">
                      <p class="tip_msg" id="pw_info">사용할 비밀번호를 입력해주세요</p>
                      <p class="tip_msg ok" id="pw_able" style="display:none">O 사용 가능한 비밀번호입니다.</p>
                      <p class="tip_msg error" id="pw_unable"  style="display:none">X 사용 불가능한 비밀번호입니다.</p>
                    </div>
                    <input type="password" class="int" title="새 비밀번호 확인 입력" placeholder="새 비밀번호 확인 "  id="dc_pwc" name="newpasswordcheck" maxlength="20">
                   
                    <input type="submit" class="btn_blue small btn_wrfull" value="확인"/>
                  </div>
                </div>
              </div>
             
              <!-- //비밀번호 변경 입력 -->
            </div>
          </section>

        </article>
      </div>
       </form:form>
</main>
  	    <footer class="dcfoot">
     <div class="info_policy">
       <a href="https://www.dcinside.com/company">회사소개</a>
       <a href="https://www.dcinside.com/company#recruit">인재채용</a>
       <a href="https://www.dcinside.com/company#alliance">제휴안내</a>
       <a href="https://nstatic.dcinside.com/dc/dcad/w/index.html">광고안내</a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">이용약관</a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>개인정보처리방침</b></a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">청소년보호정책</a>
     </div>
     <div class="copyright">Copyright ⓒ 1999 - 2019 dcinside. All rights reserved</div>
    </footer>
  </div>
</body>
</html>