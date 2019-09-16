<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
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
            <li><a href="http://localhost:8090/free/board/loginmenu.do?id=${user.id }&password=${user.password}">갤러리</a></li>
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
      <div class="content info_change">
        <article>
          <h2 class="blind">개인 정보 변경</h2>
          <section id="pagemenu">
            <h2 class="blind">페이지 메뉴</h2>
            <ul class="page_menu three clear">
              <li><a href="http://localhost:8090/free/userInfo01.do?id=${user.id }" class="pmenu on">개인 정보 변경</a></li>
              <li><a href="http://localhost:8090/free/move_updatePassword.do?id=${user.id }" class="pmenu">비밀번호 변경</a></li>
              <li><a href="http://localhost:8090/free/predelete_userInfo.do?id=${user.id }" class="pmenu">회원 탈퇴</a></li>
            </ul>
          </section>
          <section>
            <div class="cont_head">
              <h3 class="head_tit">기본 정보 변경</h3>
            </div>
            <div id="contbox" class="con_box brd">
              <div class="con changform_box">
                <form:form id="modifyForm1" name="submitForm1" method="post"
                        action="update_userNick.do" commandName="user">
                        <form:hidden path="id"/>
                  <fieldset>
                     <input type="hidden" id="age_type" name="age_type" value="general">
               <input type="hidden" id="gubunDate" name="gubunDate" value="2005-09-04">
                    <legend class="blind">기본 정보 변경 폼</legend>
                    <div class="form_group id">
                      <div class="form_tit">아이디</div>
                      <div class="form_txt">
                        <input type="text" class="int bg" title="아이디" value="${user.id }" readonly>
                      </div>
                    </div>
                    <div class="form_group nick">
                      <div class="form_tit">닉네임</div>
                      <div class="form_txt">
                        <div class="clear">
                          <input type="text" class="int" title="닉네임 입력" maxlength="20" name="nick" id="user_nick" value="${user.nick }" placeholder="사용할 닉네임을 입력해 주세요">
                          <div class="select_box subject_select nick_sel">
                             <select name="fixnic" id="nick_type" name="fixnic">
                             <option value="1" selected>비고정닉</option>
                             <option value="0" >고정닉</option>
                           </select>
                            <a href="#" onclick="showLayer(this, 'nickTypeLayer');return false;"><div class="select_area"><span class="selectedNickType">비고정닉</span><em class="sp_img icon_option_more"></em></div></a>
                            <ul id="nickTypeLayer" class="option_box subject_option white" style="left:0;top:34px;display:none"><!-- 옵션 펼침 display:block -->
                              <li><a href="javascript:changeNickType('1', 'nickTypeLayer');">비고정닉</a></li>
                              <li><a href="javascript:changeNickType('2', 'nickTypeLayer');">고정닉</a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="tip_msgbox">
                          <p class="tip_msg" id="nick_info">2~20자 닉네임을 입력해주세요.(띄어쓰기는 할 수 없습니다.)</p>
                          <p class="tip_msg ok" id="nick_able" style="display:none">O 사용 가능한 닉네임 입니다.</p>
                          <p class="tip_msg error" id="nick_unable" style="display:none;">X 사용할 수 없는 닉네임 입니다.</p>
                        </div>
                      </div>
                    </div>
                    <div class="form_group name">
                      <div class="form_tit">이름</div>
                      <div class="form_txt">
                        <input type="text" class="int bg" title="이름" id="dc_name" name="name"
                                    value="${user.name }" readonly>
                      </div>
                    </div>
                    <div class="form_group email">
                      <div class="form_tit">가입 인증 이메일</div>
                      <div class="form_txt">
                        <input type="text" class="int bg" title="이메일"  value="${user.mail }" id="mail" readonly >
                        <span class="deco_mail">@</span>
                        <input type="text" class="int bg" title="이메일 주소" value="${user.mail01 }" id="mail01" readonly>
                        <button type="submit" class="btn_white small btn_change" id="email_changePop" onclick="locaion.href='http://localhost:8090/free/move_updateEmail.do?id=${user.id }'">인증 이메일 변경</button>
                      </div>
                    </div>
                  </fieldset>
                  <div class="btn_box clear">
              <div class="fr">
                <input type="submit" class="btn_blue btn_ok" id="modify_info" value="확인"/>
              </div>
            </div>
                </form:form>
              </div>
            </div>
          </section>
        </article>
      </div>
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