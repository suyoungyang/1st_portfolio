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
  <meta name="author" content="����λ��̵�">
  <meta name="title" content="��� ȸ������">
  <meta name="description" content="�������">
  <title>��� ȸ������</title>
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
  <!--��ŵ ������̼�-->
  <div class="skip">
    <a href="#pagemenu"><span>�������޴� ���� �ٷΰ���</span></a>
    <a href="#contbox"><span>���� ���� �ٷΰ���</span></a>
  </div>
  <!-- //��ŵ ������̼�-->
  <div id="top" class="width868 login_wrap">
    <!-- ��� -->
    <header class="dcheader bg">
      <div class="dchead">
        <!-- �ΰ��� -->
        <h1 class="dc_logo">
          <a href="http://localhost:8090/free/board/menulist.do">
            <img src="https://nstatic.dcinside.com/dc/w/images/dcin_logo2.png" alt="����λ��̵�">
          </a>
        </h1>
        <!-- //�ΰ��� -->
        <div class="area_links">
          <ul>
            <li><a href="http://localhost:8090/free/board/loginmenu.do?id=${user.id }&password=${user.password}">������</a></li>
            <li><a href="#">m.������</a></li>
            <li><a href="http://localhost:8090/free/board/myboard.do?nick=${user.nick }">���α�</a></li>
            <li><a href="#">����</a></li>
            <li><a href="#">�̺�Ʈ</a></li>
            <li><a href="#">���θ�</a></li>
          </ul>
        </div>
      </div>
    </header>
    <main id="container">
      <div class="content info_change">
        <article>
          <h2 class="blind">���� ���� ����</h2>
          <section id="pagemenu">
            <h2 class="blind">������ �޴�</h2>
            <ul class="page_menu three clear">
              <li><a href="http://localhost:8090/free/userInfo01.do?id=${user.id }" class="pmenu on">���� ���� ����</a></li>
              <li><a href="http://localhost:8090/free/move_updatePassword.do?id=${user.id }" class="pmenu">��й�ȣ ����</a></li>
              <li><a href="http://localhost:8090/free/predelete_userInfo.do?id=${user.id }" class="pmenu">ȸ�� Ż��</a></li>
            </ul>
          </section>
          <section>
            <div class="cont_head">
              <h3 class="head_tit">�⺻ ���� ����</h3>
            </div>
            <div id="contbox" class="con_box brd">
              <div class="con changform_box">
                <form:form id="modifyForm1" name="submitForm1" method="post"
                        action="update_userNick.do" commandName="user">
                        <form:hidden path="id"/>
                  <fieldset>
                     <input type="hidden" id="age_type" name="age_type" value="general">
               <input type="hidden" id="gubunDate" name="gubunDate" value="2005-09-04">
                    <legend class="blind">�⺻ ���� ���� ��</legend>
                    <div class="form_group id">
                      <div class="form_tit">���̵�</div>
                      <div class="form_txt">
                        <input type="text" class="int bg" title="���̵�" value="${user.id }" readonly>
                      </div>
                    </div>
                    <div class="form_group nick">
                      <div class="form_tit">�г���</div>
                      <div class="form_txt">
                        <div class="clear">
                          <input type="text" class="int" title="�г��� �Է�" maxlength="20" name="nick" id="user_nick" value="${user.nick }" placeholder="����� �г����� �Է��� �ּ���">
                          <div class="select_box subject_select nick_sel">
                             <select name="fixnic" id="nick_type" name="fixnic">
                             <option value="1" selected>�������</option>
                             <option value="0" >������</option>
                           </select>
                            <a href="#" onclick="showLayer(this, 'nickTypeLayer');return false;"><div class="select_area"><span class="selectedNickType">�������</span><em class="sp_img icon_option_more"></em></div></a>
                            <ul id="nickTypeLayer" class="option_box subject_option white" style="left:0;top:34px;display:none"><!-- �ɼ� ��ħ display:block -->
                              <li><a href="javascript:changeNickType('1', 'nickTypeLayer');">�������</a></li>
                              <li><a href="javascript:changeNickType('2', 'nickTypeLayer');">������</a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="tip_msgbox">
                          <p class="tip_msg" id="nick_info">2~20�� �г����� �Է����ּ���.(����� �� �� �����ϴ�.)</p>
                          <p class="tip_msg ok" id="nick_able" style="display:none">O ��� ������ �г��� �Դϴ�.</p>
                          <p class="tip_msg error" id="nick_unable" style="display:none;">X ����� �� ���� �г��� �Դϴ�.</p>
                        </div>
                      </div>
                    </div>
                    <div class="form_group name">
                      <div class="form_tit">�̸�</div>
                      <div class="form_txt">
                        <input type="text" class="int bg" title="�̸�" id="dc_name" name="name"
                                    value="${user.name }" readonly>
                      </div>
                    </div>
                    <div class="form_group email">
                      <div class="form_tit">���� ���� �̸���</div>
                      <div class="form_txt">
                        <input type="text" class="int bg" title="�̸���"  value="${user.mail }" id="mail" readonly >
                        <span class="deco_mail">@</span>
                        <input type="text" class="int bg" title="�̸��� �ּ�" value="${user.mail01 }" id="mail01" readonly>
                        <button type="submit" class="btn_white small btn_change" id="email_changePop" onclick="locaion.href='http://localhost:8090/free/move_updateEmail.do?id=${user.id }'">���� �̸��� ����</button>
                      </div>
                    </div>
                  </fieldset>
                  <div class="btn_box clear">
              <div class="fr">
                <input type="submit" class="btn_blue btn_ok" id="modify_info" value="Ȯ��"/>
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
       <a href="https://www.dcinside.com/company">ȸ��Ұ�</a>
       <a href="https://www.dcinside.com/company#recruit">����ä��</a>
       <a href="https://www.dcinside.com/company#alliance">���޾ȳ�</a>
       <a href="https://nstatic.dcinside.com/dc/dcad/w/index.html">����ȳ�</a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">�̿���</a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>��������ó����ħ</b></a>
       <a href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">û�ҳ⺸ȣ��å</a>
     </div>
     <div class="copyright">Copyright �� 1999 - 2019 dcinside. All rights reserved</div>
    </footer>
  </div>
</body>
</html>