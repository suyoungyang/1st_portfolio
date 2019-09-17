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
  <meta name="title" content="회원가입">
  <meta name="description" content="약관동의">
  <title>디시 회원가입</title>
  <link rel="shortcut icon" href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/join.css"/>
    <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/common.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/popup.css"/>
  <script type="text/javascript" src="//nstatic.dcinside.com/dc/w/js/html5shiv.min.js"></script>
  <script type="text/javascript" src="./js/member.js?20180726"></script>
  <!--[if IE 7]>
    <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/ie7.css"/>
  <![endif]-->
  <script type="text/javascript">
   function checkValue(user)
   {
      var form = document.user;
      var email = form.mail.value;
      var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
      
      if(!form.id.value){
         alert("아이디를 입력하세요.");
         return false;
         }
      if(!form.password.value){
         alert("비밀번호를 입력하세요.");
         return false;
         }
      if(form.password.value != form.passwordcheck.value){
         alert("비밀번호를 동일하게 입력하세요.");
         return false;
         }
      if(!form.name.value){
         alert("이름를 입력하세요.");
         return false;
         }
      if(!form.mail.value){
         alert("메일를 입력하세요.");
         return false;
     	 }
  
         
         //아이디 유효성 검사 (영문소문자, 숫자만 허용)
        for (var i = 0; i < form.id.value.length; i++) {
             ch = form.id.value.charAt(i)
             if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')) {
                 alert("아이디는 영문 소문자, 숫자만 입력가능합니다.")
                 form.id.focus();
                 form.id.select();
                 return false;
             }
         }
         //아이디에 공백 사용하지 않기
         if (form.id.value.indexOf(" ") >= 0) {
             alert("아이디에 공백을 사용할 수 없습니다.")
             form.id.focus();
             form.id.select()
             return false;
         }
         //아이디 길이 체크 (4~12자)
        if (form.id.value.length<5 || form.id.value.length>20) {
             alert("아이디를 5~20자까지 입력해주세요.")
             form.id.focus();
             form.id.select();
             return false;
         }
        
         if (form.password.value == form.id.value) {
             alert("아이디와 비밀번호가 같습니다.")
             form.password.focus();
             return false;
         }
         //비밀번호 길이 체크(4~8자 까지 허용)
         if (form.password.value.length<6 || form.password.value.length>20) {
             alert("비밀번호를 6~20자까지 입력해주세요.")
             form.password.focus();
             form.password.select();
             return false;
         }
         
         if (regex.test(mail) === false) {
             alert("잘못된 이메일 형식입니다.");
             form.mail.value=""
             form.mail.focus();
             return false;
         }
  
         for (var i = 0; i < form.mail.value.length; i++) {
             chm = form.mail.value.charAt(i)
             if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')&&!(chm >= 'A' && chm <= 'Z')) {
                 alert("이메일은 영문 대소문자, 숫자만 입력가능합니다.")
                 form.mail.focus();
                 form.mail.select();
                 return false;
             }   
         }
   }
   //취소버튼 클릭시 첫화면 으로 이동(url 수영이랑 맞출것!)
   //function goFirstForm() {
   //   location.href="메인화면.do"
   //}
   
   //id 중복체크 화면 열기
   function openIdChk(){
      window.name = "parentForm";
      window.open("signUp/IdCheckForm.jsp", "chkForm", "width=500, height=300, resizable = no, scrollbars= no");
      }

   function inputIdChk(){
      document.user.idDuplication.value = "idUnCheck";
      }
</script>
</head>
<body>
<!--스킵 내비게이션-->
  <div class="skip">
    <a href="#container"><span>본문영역 바로가기</span></a>
  </div>
  <!-- //스킵 내비게이션-->
  <div id="top" class="width868 join_wrap">
    <!-- 상단 -->
<header class="dcheader bg">
   <div class="dchead">
      <!-- 로고영역 -->
      <h1 class="dc_logo">
         <a href="http://localhost:8090/free/board/menulist.do"><img src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png" alt="디시인사이드"></a>
             <a href="#"><img src="https://nstatic.dcinside.com/dc/w/images/tit_join.png" alt="회원가입"></a>
      </h1>
      <!-- //로고영역 -->
      <div class="area_links">
         <ul>
            <li><a href="http://localhost:8090/free/board/listboard.do">갤러리</a></li>
            <li><a href="#">m.갤러리</a></li>
            <li><a href="http://localhost:8090/free/board/myboard.do?${nick=user.nick }">갤로그</a></li>
            <li><a href="#">뉴스</a></li>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">만두몰</a></li>
         </ul>
      </div>
   </div>
</header>    <main id="container">
      <form:form name="user" method="POST" commandName="user" action = "add/signUp.do" onsubmit="return checkValue(this)">
     <input type="hidden" id="age_type" name="age_type" value="general">
     <input type="hidden" id="GET_GDI" name="GET_GDI" value="">
     <input type="hidden" id="s_url" name="s_url" value="">
      <div class="content">
        <article>
          <h2 class="blind">회원가입</h2>
          <section>
            <h2 class="blind">페이지 경로</h2>
            <div class="sp_joinpath joinpath2">
              <p class="blind">기본 정보 입력</p>
            </div>
          </section>
          <section>
            <div class="cont_head">
              <h3 class="head_tit">기본 정보 입력</h3>
            </div>
            <div class="con_box brd">
              <div class="con joinform_box">
               
                  <fieldset>
                    <legend class="blind">회원가입 폼</legend>
                    <div class="form_group id">
                      <div class="form_tit">아이디 입력</div>
                      <div class="form_txt">
                        <input type="text" class="int" id="user_id" name="id" maxlength="20" title="아이디 입력" placeholder="사용할 아이디를 입력해 주세요">
                        <div class="tip_msgbox">
                          <p class="tip_msg" id="id_info">5~20자 영문, 숫자로 입력해 주세요</p>
                          <p class="tip_msg ok" id="id_able" style="display:none">O 사용 가능한 아이디 입니다.</p>
                          <p class="tip_msg error" id="id_unable" style="display:none">X 이미 사용중인 아이디 입니다.</p>
                        </div>
                      </div>
                    </div>
                    <div class="form_group nick">
                      <div class="form_tit">닉네임 만들기</div>
                      <div class="form_txt">
                        <div class="clear">
                          <input type="text" class="int" id="user_nick" name="nick" maxlength="20" title="닉네임 입력" placeholder="사용할 닉네임을 입력해 주세요">
                          
                             
                           
                            <select name = "fixnic" class="option_box subject_option white" style="width:100px;height: 35px;" id="nick_type_lyr" name="fixnic">
                              <option value="1">비고정닉</option>
                              <option value="0">고정닉</option>
                            </select>
                          
                        </div>
                        <div class="tip_msgbox">
                          <p class="tip_msg" id="nick_info">2~20자 닉네임을 입력해주세요.(띄어쓰기는 할 수 없습니다.)</p>
                          <p class="tip_msg ok" id="nick_able" style="display:none">O 사용 가능한 닉네임 입니다.</p>
                          <p class="tip_msg error" id="nick_unable" style="display:none">X 사용할 수 없는 닉네임 입니다.</p>
                        </div>
                      </div>
                    </div>
                    <div class="form_group pw">
                      <div class="form_tit">비밀번호 입력</div>
                      <div class="form_txt">
                        <input type="password" class="int" id="dc_pw" name="password" title="비밀번호 입력" maxlength="20" placeholder="사용할 비밀번호를 입력해 주세요">
                        <input type="password" class="int pw_check" id="dc_pwc" name="passwordcheck" title="비밀번호 확인 입력" maxlength="20" placeholder="사용할 비밀번호를 재확인해 주세요">
                        <div class="tip_msgbox">
                          <p class="tip_msg" id="pw_info">영문, 숫자 조합 6-20자</p>
                          <p class="tip_msg ok" id="pw_able_same" style="display:none">O 비밀번호가 일치합니다.</p>
                          <p class="tip_msg ok" id="pw_able" style="display:none">O 사용 가능한 비밀번호입니다.</p>
                          <p class="tip_msg error" id="pw_unable_not_used" style="display:none">X 사용 불가능한 비밀번호입니다.</p>
                          <p class="tip_msg error" id="pw_unable" style="display:none">X 비밀번호가 일치 하지 않습니다.</p>
                          <p class="tip_msg error" id="pw_unable_recheck" style="display:none"> X 사용할 비밀변호를 재확인해 주세요</p>
                          
                        </div>
                      </div>
                    </div>
                    <div class="form_group name">
                      <div class="form_tit">이름</div>
                      <div class="form_txt">
                        <input type="text" class="int" id="dc_name" name="name" title="이름 입력" placeholder="이름을 입력해 주세요">
                        <div class="tip_msgbox">
                          <p class="tip_msg">ID/PW 분실 시 가입 정보를 통해 찾을 수 있으므로 정확히 입력해 주시기 바랍니다.</p>
                        </div>
                      </div>
                    </div>
                    <div class="form_group email">
                      <div class="form_tit">가입 인증 이메일</div>
                      <div class="form_txt id">
                      <div class="clear">
                        <input type="text" class="int" name="mail" id="email1" title="이메일 입력" value="" maxlength="20">
                        <span class="deco_mail">@</span>
                       
                         
                          
                          <select name="mail01" class="option_box subject_option white" id="email_host_lyr" style="width:200px;height:35px;">
                            <option value="self"  >이메일 선택</option>
                            <option value="gmail.com" >gmail.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="daum.net">daum.net</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="korea.com">korea.com</option>
                            <option value="naver.com">naver.com</option>
                            <option value="yahoo.com">yahoo.com</option>
                            <option value="nate.com" >nate.com</option>
                            <option value="inst">직접 입력</option>
                          </select>
                        </div>
                        </div>
                        <div class="tip_msgbox">
                          <p class="tip_msg" id="email_info">사용할 이메일을 입력해 주세요</p>
                          <p class="tip_msg ok" id="email_able" style="display:none;">O 사용 가능한 이메일 입니다.</p>
                          <p class="tip_msg error" id="email_unable" style="display:none;">X 사용할 수 없는 이메일 입니다.</p>
                        </div>
                      </div>
                    </div>
                      <div class="btn_box clear">
              <div class="fr">
                <input type="submit" class="btn_grey small bnt_next"  value="다음"/>
              </div>
            </div>
                  </fieldset>
               
              </div>
            </div>
          </section>
        </article>
      </div>
      </form:form>
      <form name="confirmEmail" id="confirmEmail" method="post">
      <input type="hidden" name="e_no" id="e_no">
      <input type="hidden" name="email" id="email">
      <input type="hidden" name="availableTime" id="availableTime">
      <input type="hidden" name="testLink" id="testLink">
      </form>
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