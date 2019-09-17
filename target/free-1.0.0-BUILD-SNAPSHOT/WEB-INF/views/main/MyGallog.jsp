<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="content-language" content="kr">
  <meta name="google-site-verification" content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
  <meta name="author" content="디시인사이드">
  <meta name="title" content="디시인사이드 갤로그">
  <meta name="description" content="디시인사이드 갤러리의 게시물을 보다 쉽게 관리할 수 있게 지원하는 서비스">
 
  <title>디시인사이드 갤로그</title>
  <link rel="shortcut icon" href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/reset.css?v=3"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/common.css?v=3"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/gallog.css"/>
  <link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/popup.css"/>

</head>
<body>

	<script type="text/javascript">
	var img = new Image();
	img.src = "";
	img.onload = function() { $('body').css('background', 'url('+ img.src +') repeat 0 0'); }
	img.onerror = function() { $('body').css('background', '#F1F1F1'); }
	</script>
	
	<div class="innerbox">
	  <!--스킵 내비게이션-->
	  <div class="skip">
		  <a href="#container"><span>본문영역 바로가기</span></a>
	  </div>
	
	  <!-- //스킵 내비게이션-->
	  <div id="top" class="gallog_wrap width1160">
	    <!-- 상단 -->
		<div class="headbox">
		  <div class="dchead">
			<a href="http://localhost:8090/free/board/menulist.do" class="dcmain_go">디시인사이드 메인가기<em class="sp_img icon_dcmain_go"></em></a>
			<div class="area_links">
			  <ul>
				<li><a href="http://localhost:8090/free/board/loginmenu.do?id=${user.id }&password=${user.password}">갤러리</a></li>
				<li><a href="#">m.갤러리</a></li>
				<li><a href="#">뉴스</a></li>
				<li><a href="#">만두몰</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a class="btn_top_loginout" href="#">로그아웃</a></li>			
			  </ul>
			</div>
		  </div>
		</div>
	    <div class="top_bar">
	      <div id="test" class="bar clear" style="background:url() repeat 0 0">
	        <div class="galler_info">
	          <strong class="nick_name">${user.nick}</strong> 님의 갤로그입니다.
	        </div>
	        <div class="tright_box clear">
		        <div class="visitors_num rbox">
		          <span class="today_num">Today <em>1</em></span>
		          <span class="total_num">Total <em>4</em></span>
		        </div>
		        <div class="calendar_wrap rbox">
	              <button type="button" id="btn_calendar" class="btn_calendar">
	                <em class="sp_img icon_calendar"></em><span class="blind">달력</span>
	              </button>
	              <div id="calendar_layer" class="inner" style="display:none"></div>
	            </div>
	            <div class="gallog_set_box rbox">  
	              <button type="button" id="btn_gallog_conf" class=" btn_gallog_setting">
	                <em class="sp_img icon_gallog_setting"></em><span class="txt">설정</span>
	              </button>
	              
	              <script src="/_upload/js/vendor/jquery.ui.widget.js"></script>
<script src="/_upload/js/jquery.iframe-transport.js"></script>
<script src="/_upload/js/jquery.fileupload.js"></script>
<script src="/_upload/js/jquery.fileupload-process.js"></script>
<script src="/_upload/js/jquery.fileupload-validate.js"></script>
<script src="/_upload/js/jquery.fileupload-ui.js"></script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="/_upload/js/fileupload/cors/jquery.xdr-transport.js"></script>
<![endif]-->

<script type="text/javascript" src="/_js/gallog_config.js?v=181120"></script>

<div id="gallog_config_layer" class="pop_wrap type3" style="right:-1px;top:30px;display:none">
	<div class="pop_content gallog_setting">
	  <div class="pop_head bg"><h3>갤로그 설정</h3></div>
	  <div class="tab_menubox gallogset_tab">
		<button type="button" class="on">비공개 콘텐츠</button>
		<button type="button">배경 이미지</button>
	  </div>
	  <!-- gallog_setbox -->
	  <div class="inner"><!-- 181017 div추가-->
	  
		<!-- 비공개 설정 -->
		<div class="tabcontent gallog_blockset">
			<div class="pop_info">
			  <p>비공개할 콘텐츠를 등록합니다.</p>
			</div>
			<div class="setting_box">
			  <div class="setting_cont">
				<div class="set_cont">
				  <div class="inner">
					<span class="cont_tit">내 게시글 / 내 댓글</span>
					<div class="option_sort  gallog_set">
					  <div class="select_box select_arraybox">
						<div class="select_area"><span class="placeholder">선택해주세요.</span><em class="sp_img icon_option_more"></em></div>
						
						<ul id="conf_sel_gall" class="option_box" style="left:-1px;top:28px;display:none"></ul>
			      		<script id="conf_sel_gall-tmpl" type="text/x-jquery-tmpl">
						<li data-value="${no}|${ko_name}">
							${ko_name}
						</li>
						</script>
						
					  </div>
					</div>
					<button type="button" class="btn_enroll">등록</button>
				  </div>
				  
				  <ul class="set_gall_list"></ul>
			      <script id="gall_list-tmpl" type="text/x-jquery-tmpl">
		  		  <li data-no="${code}">
				  	<span class="gall_name">${ko_name}</span>
				  	<button type="button" class="btn_del" onclick="$(this).parent().remove()"><span class="blind">설정 갤러리 삭제</span><em class="sp_img icon_del"></em></button>
		  		  </li>
		  		  </script>
				  
				</div>
				<div class="set_cont">
				  <div class="inner">
					<span class="cont_tit">스크랩</span>
					<p class="scr_settxt">비공개 설정을 합니다.</p>
					<div class="setting_onoff">
					  <button id="btn_scrap_toggle" type="button" class="sp_img"><span class="blind">off</span></button>
					</div>
				  </div>
		
				</div>
			  </div>
			</div>
		</div>

		<!-- 배경 설정 -->
		<div class="tabcontent gallog_bgset" style="display:none">
		  <div class="pop_info">
			<p>배경 이미지를 설정할 수 있습니다.(이미지는 jpg, png 최대3MB 가능)</p>
		  </div>
		  <div class="setting_box">
			<div class="setting_cont">
			  <div class="set_cont">
				<!-- 상단 이미지 -->
				<div class="inner">
				  <span class="cont_tit">상단 이미지</span>
				  <div class="gallog_set topbg_img clear">
					<div class="fl">
					  <div class="up_bgimg">
                        <img data-src="" alt="">
                      </div>
                    </div>
					<div class="fl bg_fileup">
					  <input type="file" name="top" title="상단 배경이미지 올리기">
					  <button type="button" class="btn_fileup">찾기</button>
					</div>
					
					<button type="button" class="del" style="display:none;">삭제</button>
					<script type="text/javascript">
					var img = new Image();
					img.src = "";
					img.onload = function() { $('.topbg_img .up_bgimg img').attr('src', ''); $('.topbg_img button.del').show(); }
					img.onerror = function() { $('.topbg_img .up_bgimg img').attr('src', $('.topbg_img .up_bgimg img').attr('data-src')); }
					</script>
				  </div>
				  <div class="setting_onoff">
					<span class="tit">이미지 반복</span>
					<button id="btn_repeat_toggle" type="button" class="sp_img on"><span class="blind">on</span></button>
				  </div>
				</div>
				<!-- 상단 이미지 -->
			  </div>
			  <div class="set_cont">
				<!-- 배경 이미지 -->
				<div class="inner">
				  <span class="cont_tit">배경 이미지</span>
				  <div class="gallog_set bg_img clear">
					<div class="fl">
					  <div class="up_bgimg">
                        <img data-src="" alt="">
                      </div>
                    </div>
					<div class="fl bg_fileup">
					  <input type="file" name="bg" title="배경이미지 올리기">
					  <button type="button" class="btn_fileup">찾기</button>
					</div>
					
					<button type="button" class="del" style="display:none;">삭제</button>
					<script type="text/javascript">
					var img = new Image();
					img.src = "";
					img.onload = function() { $('.bg_img .up_bgimg img').attr('src', ''); $('.bg_img button.del').show(); }
					img.onerror = function() { $('.bg_img .up_bgimg img').attr('src', $('.bg_img .up_bgimg img').attr('data-src')); }
					</script>
				  </div>
				</div>
				<!-- //배경 이미지 -->
				<!-- 배경 색상 -->
				<div class="inner bg_colorbox">
				  <span class="cont_tit">배경 색상</span>
				  <div class="gallog_set bg_color clear">
					<div class="fl int">
					  <span class="deco">#</span>
					  <input type="text" value="F1F1F1">
					</div>
					<div class="palette">
					  <ul class="clear">
						<li class="color"><button type="button" style="background-color:#f1f1f1"></button></li>
						<li class="color"><button type="button" style="background-color:#999999"></button></li>
						<li class="color"><button type="button" style="background-color:#ff6666"></button></li>
						<li class="color"><button type="button" style="background-color:#ff9966"></button></li>
						<li class="color"><button type="button" style="background-color:#ffff99"></button></li>
						<li class="color"><button type="button" style="background-color:#99ff99"></button></li>
						<li class="color"><button type="button" style="background-color:#6699cc"></button></li>
						<li class="color"><button type="button" style="background-color:#ff99cc"></button></li>
						<li class="color"><button type="button" style="background-color:#cc99ff"></button></li>
						<li class="color"><button type="button" style="background-color:#000000"></button></li>
						<li class="color"><button type="button" style="background-color:#c00000"></button></li>
						<li class="color"><button type="button" style="background-color:#ff0000"></button></li>
						<li class="color"><button type="button" style="background-color:#ffcc33"></button></li>
						<li class="color"><button type="button" style="background-color:#99cc66"></button></li>
						<li class="color"><button type="button" style="background-color:#009966"></button></li>
						<li class="color"><button type="button" style="background-color:#0099ff"></button></li>
						<li class="color"><button type="button" style="background-color:#003366"></button></li>
						<li class="color"><button type="button" style="background-color:#7030a0"></button></li>
					  </ul>
					</div>
				  </div>
	
				</div>
			  </div>
			</div>
		  </div>
		</div>
	
	  </div>
	  <div class="btn_box">
		<button type="button" class="btn_cancle">닫기</button>
		<button type="button" class="btn_apply">저장</button>
	  </div>
	</div>
	<button type="button" class="poply_whiteclose" onclick="toggle_layer($('#gallog_config_layer'))"><span class="blind">설정 레이어 닫기</span><em class="sp_img icon_whiteclose"></em></button><!-- 181017 텍스트수정 -->
</div>	              
	            </div>
	            	            
	        </div>
	      </div>
	    </div>
<!-- //상단 -->
<main id="container">
			<article>
				<h2 class="blind">갤로그 홈</h2>
				<div class="conent_wrap">
					<ul class="gallog_menu">
						<li class="home"><a href="/moonreia">갤로그 홈</a></li>
						<li class="posting"><a href="/moonreia/posting">내 게시글</a></li>
						<li class="comment"><a href="/moonreia/comment">내 댓글</a></li>
						
						<li class=""><a href="/moonreia/scrap">스크랩</a></li>						
						<li class="guestbook">
						  <a href="/moonreia/guestbook">방명록</a>
						</li>
						
												
						
					</ul>
					<script>$('.gallog_menu .home').addClass('on');</script>
<section>

<div class="gallog_cont">
  <header>
	<div class="cont_head clear">
	  <h2 class="tit">내 게시글</h2>
	  <a href="/moonreia/posting" class="btn_blue smallest go">전체보기</a>
	</div>
	<!-- 게시판형 갤러리 리스트-->
	    <table style="width:100%;">
		  <caption>갤러리 리스트</caption>
		  <colgroup>
			<col style="width:6%">
			<col style="width:30%">
			<col style="width:11%">
			<col style="width:6%">
			<col style="width:6%">
		  </colgroup>
		  <thead>
			<tr>
			  <th scope="col">번호</th>
			  <th scope="col">제목</th>
			  <th scope="col">작성일</th>
			  <th scope="col">조회</th>
			  <th scope="col">추천</th>
			</tr>
		  </thead>
		  <tbody>
				<c:forEach var="row" items="${myboard}">
					<tr>
						<td align="center">${row.num}</td>
						<td align="center" >${row.title }</td>
						<td align="center" >${row.date}</td>
						<td align="center" >${row.inqu }</td>
		  				<td align="center" >${row.reco}</td>
					</tr>
				</c:forEach>
		 	</tbody>
		</table>
  </header>
</div>

</section>
<!-- //내 게시글 -->

<!-- 내 댓글 -->
<section>
<div class="gallog_cont">
  <header>
	<div class="cont_head clear">
	  <h2 class="tit">내 댓글<span class="num">(0)</span></h2>
	  <a href="/moonreia/comment" class="btn_blue smallest go">전체보기</a>
	</div>
  </header>
  <div class="cont_box">
  
	
<div class="gallog_empty small">
  등록된 댓글이 없습니다.</div>
	
  </div>
</div>
</section>
<!-- //내 댓글 -->

<!-- 스크랩 -->
<section>
<div class="gallog_cont">
  <header>
	<div class="cont_head clear">
	  <h2 class="tit">스크랩<span class="num">(0)</span></h2>
	  <a href="/moonreia/scrap" class="btn_blue smallest go">전체보기</a>
	</div>
  </header>
  <div class="cont_box">
  
	
<div class="gallog_empty small">
  스크랩된 글이 없습니다.</div>
	
  </div>
</div>
</section>

<!-- 방명록 -->
<section>
<div class="gallog_cont guestbook">
  <header>
	<div class="cont_head clear">
	  <h2 class="tit">방명록<span class="num">(0)</span></h2>
	  <a href="/moonreia/guestbook" class="btn_blue smallest go">전체보기</a>
	</div>
  </header>
  <div class="cont_box">
  
		
		<div class="gallog_empty small">
                  등록된 방명록이 없습니다. 
    </div>
        
  </div>
</div>			
				  </section>
				</div>
			</article>
	 </main>
	    <!-- 하단 -->
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
	    <!-- //하단 -->
	    	  </div>
	  
	  	</div>
</body>
</html>
