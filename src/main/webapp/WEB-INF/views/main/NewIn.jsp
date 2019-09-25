<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="imagetoolbar" content="no">
	<meta name="content-language" content="kr">
	<meta name="google-site-verification" content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
	<meta name="author" content="디시인사이드">
	<meta name="title" content="호텔 델루나 갤러리">
	<meta name="description" content="국내방송2, 호텔 델루나, hoteltvn community portal dcinside">
	<title>호텔 델루나 갤러리</title>
	
	<link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/reset.css?v=1"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/common.css?190716"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/contents.css?190816"/>

<!-- 게시글 작성 form -->
	<style>
		.input_style{
			width:250px;
			height:25px;
		}
		.title_style{
			width:400px;
			height:25px;
		}
		.textarea_style{
			width:1000px;
			height:300px;
		}
	</style>



</head>
<body>
  <!--스킵 내비게이션-->
  <div class="skip">
    <a href="#search_wrap"><span>통합검색 바로가기</span></a>
    <a href="#container"><span>본문영역 바로가기</span></a>
    <a href="#gnblist_wrap"><span>상단 메뉴 바로가기</span></a>
  </div>
  <!-- //스킵 내비게이션-->
  <div id="top" class="dcwrap width1160">
    
    <!-- 상단 -->
	<header class="dcheader">
  <div class="dchead">
	<!-- 로고영역 -->
	<h1 class="dc_logo">
	  <a href="http://localhost:8090/free/board/menulist.do">
		<img src="https://nstatic.dcinside.com/dc/w/images/dcin_logo.png" alt="디시인사이드">
	  </a>
	  <a href="http://localhost:8090/free/board/listboard.do">
	  	<img src="https://nstatic.dcinside.com/dc/w/images/tit_gallery.png" alt="갤러리">
	  </a>
	</h1>
	<!-- //로고영역 -->

	<div id="search_wrap" class="wrap_search">
	  <h2 class="blind">갤러리 검색</h2> 
	   <!-- 갤러리 통합검색 -->
	  <form id="searchform" name="search_process" class="sch_smit" method="get" accept-charset="utf-8" action="" role="search" onSubmit="return globalSearch(this);" >
		<fieldset>
		  <legend class="blind">통합검색</legend>
		  <div  class="top_search clear">
			<div class="inner_search">
			  <input class="in_keyword" type="text" name="search" id="preSWord" title="검색어 입력" value="" placeholder="갤러리 & 통합검색" accesskey="f" type="search" autocomplete="off">
			</div>
			<button type="submit" class="sp_img bnt_search" id="searchSubmit"><span class="blind">검색</span></button>
		  </div>
		</fieldset>
	  </form>
	  <!-- //갤러리 통합검색 -->

	  <!-- 검색 자동완성 레이어-->
	  <div class="auto_wordwrap" style="left:0;top:45px;display:none"><!--자동완성 레어이 : display:block -->
	  </div>
	  <!-- //검색 자동완성 레이어 -->

	</div>
	<div class="area_links"> 
	  <ul> 
		<li><a href="#">m.갤러리</a></li>
		<li><a href="http://localhost:8090/free/board/MyGallog.do?nick=${nick}">갤로그</a></li>
		<li><a href="#">뉴스</a></li>
		<li><a href="#">만두몰</a></li>
		<li><a href="#">이벤트</a></li>
		 <li><a class="btn_top_loginout" href="http://localhost:8090/free/board/logout.do">로그아웃</a></li>		
	  </ul>
	</div>
  </div>
</header> 
    <!-- GNB -->
    <div class="gnb_bar">
      <nav class="gnb clear">
        <h2 class="blind">GNB</h2>
        <ul class="gnb_list clear">
          <li>
            <a class="hover_gnb link_gnb on" href="https://gall.dcinside.com" url_code="gallery">갤러리<em class="sp_img icon_depmore hover_gnb"></em></a>
			<span class="gnb_area" style="display:block;width:77px;height:12px;position:absolute;left:0;bottom:0;"></span>
            <!-- 2차메뉴 -->
            <div class="depth2" style="left:0;display:none"><!--2차메뉴 열림 : display:block -->
              <span class="sp_img depth_bg"></span>
              <ul class="depth2_list">
                <li><a href="#">게임</a></li>
                <li><a href="#">연예/방송</a></li>
                <li><a href="#">스포츠</a></li>
                <li><a href="#">교육/금융/IT</a></li>
                <li><a href="#">여행/음식/생물</a></li>
                <li><a href="#">취미/생활</a></li>
              </ul>
            </div>
            <!-- //2차메뉴 -->
          </li>
          <li><a href="#" class="link_gnb " url_code="mgallery">m.갤러리</a></li>
          <li><a href="http://localhost:8090/free/board/MyGallog.do" class="link_gnb" url_code="gallog">갤로그</a></li>
          <li><a href="#" class="link_gnb" url_code="dcnews">뉴스</a></li>
          <li><a href="#" class="link_gnb" url_code="event">이벤트</a></li>
          <li><a href="#" class="link_gnb" url_code="mandumall">만두몰</a></li>
          <li><a href="#" class="link_gnb" url_code="dcwiki">디시위키</a></li>
        </ul>

        <!-- 어제 게시글,댓글 등록 -->
        <div class="gall_exposure">
          <div class="posts">어제 <em class="num" id="total_content_count"></em> 게시글 등록</div>
          <div class="reply">어제 <em class="num" id="total_reple_count"></em> 댓글 등록</div>
        </div>
        <!-- /어제 게시글,댓글 등록 -->
      </nav>
    </div>
    <!-- //GNB -->
    
	    <main  id="container">
	<section>
	
	
<!-- 갤리명 타이틀바 ~ 이용안내 -->

<header>
  <div class="page_head clear">
	<div class="fl clear">
	  <h2><a href="http://localhost:8090/free/board/boardlist.do">호텔 델루나 갤러리</a></h2>
	  	  	  
	   
	</div>
		<div class="fr gall_issuebox">
		  <button type="button" class="relate" onclick="open_relation(23436)"><span class="new" style="display:none;"><em class="blind">NEW</em><em class="sp_img icon_new"></em></span>연관 갤러리(3/4) <span class="blind">연관 갤러리 열기</span><em class="sp_img icon_relate_more"></em></button>
	  <button type="button" class="adr_copy" onclick="copy_gall_url()">갤주소 복사</button>
	  <button type="button" class="block_setting" onclick="open_user_block()">차단설정</button>
	  	  <button type="button" class="gall_useinfo" onclick="open_user_guide()">갤러리 이용안내</button>
	   
	  	  <button type="button" class="" onclick="gt_toggle_issue(this)">
		<span class="blind">더보기</span><em class="sp_img icon_listmore"></em>
	  </button>
	  	</div>
		  </div>
</header>  
<article>
  <h2 class="blind"> 갤러리 이슈박스, 최근방문 갤러리</h2>
  <div class="issue_wrap">
	<div class="issuebox gallery_box">
	  
	  <!-- 연관갤러리 -->
	  <div id="relation_popup" class="pop_wrap type3" style="left:0;top:-2px;display:none">
	  	<div class="pop_content relation_wrap">
	  	  <div class="pop_head"><h3>연관 갤러리</h3></div>
	  	  <!-- 현갤러리 -> 타 갤러리 -->
	  	  <div class="following inner">
	  	  <div class="pop_info">
	  	    <b>호텔 델루나 갤러리 <em class="sp_img icon_right_arrow"></em>  타 갤러리(<span class="count">0</span>)</b>
	  	    <p>이 갤러리가 연관 갤러리로 추가한 갤러리</p>
	  	  </div>
	  	  
	  	  <ul class="list_box clear" ></ul>	  	  
	  	  <div class="btn_box">
	  	  <button type="button" class="btn_prev"><span class="blind">이전</span><em class="sp_img icon_prev"></em></button>
	  	  <div class="page_num">
	  	    <strong class="now_num">0</strong>/<span class="total_num">0</span>
	  	  </div>
	  	  <button type="button" class="btn_next"><span class="blind">다음</span><em class="sp_img icon_next"></em></button>
	  	  </div>
	  	  </div>
	  	  <!-- //현갤러리 -> 타 갤러리 -->
	  	
	  	  <div class="follower inner">
	  	  <div class="pop_info">
	  	    <b>타 갤러리 <em class="sp_img icon_right_arrow"></em> 호텔 델루나 갤러리(<span class="count">0</span>)</b>
	  	    <p>이 갤러리를 연관 갤러리로 추가한 갤러리</p>
	  	  </div>
	  	  
	  	  <ul class="list_box clear" ></ul>	  	  
	  	  <div class="btn_box">
	  	    <button type="button" class="btn_prev"><span class="blind">이전</span><em class="sp_img icon_prev"></em></button>
	  	    <div class="page_num">
	  	  	<strong class="now_num">0</strong>/<span class="total_num">0</span>
	  	    </div>
	  	    <button type="button" class="btn_next"><span class="blind">다음</span><em class="sp_img icon_next"></em></button>
	  	  </div>
	  	  </div>
	  	  <!-- //타 갤러리 -> 현갤러리 -->
	  	</div>
	  	<button type="button" class="poply_bgblueclose" onclick="open_relation();"><span class="blind">연관 갤러리 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
	  </div>
	  <script id="relation-tmpl" type="text/x-jquery-tmpl">
	  <li>
		<a class="{{if typeof(is_new) != 'undefined' && is_new == 'A_NEW'}}newtxt{{/if}}" href="/board/lists?id=${name}">
		  ${ko_name}{{if gallery_type == 'M'}}ⓜ{{/if}}
		</a>
	  </li>
	  </script>
	  <!-- //연관갤러리 -->
	  
	  <!-- 상단 이슈 박스 -->
	  <!-- list and view recom -->
<div id="gall_top_recom" class="concept_wrap">
	<h3 class="blind">개념글 리스트</h3>
	<div class="pageing_box">
	  <div class="page_num">
		<strong class="now_num"></strong>/<span class="total_num"></span>
	  </div>
	  <button type="button" class="btn_blueprev "><span class="blind">이전</span><em class="sp_img icon_blueprev"></em></button>
	  <button type="button" class="btn_bluenext on"><span class="blind">다음</span><em class="sp_img icon_bluenext"></em></button>
	</div>

	<ul class="concept_txtlist"></ul>
	<script id="gt_recom_txt-tmpl" type="text/x-jquery-tmpl">
	<li>
	  <a href="${url}">${title}</a>
	  <span class="writer">${name}</span>
	</li>
	</script>  

	<div class="concept_img"></div>
	  <script id="gt_recom_img-tmpl" type="text/x-jquery-tmpl">
	  <a href="${url}" class="concept_imgbox">
		<img src="{{if thumb_xl}}${thumb_xl}{{else}}${thumb}{{/if}}" alt="이미지">
	  </a>
	  <div class="concept_txtbox">
		<strong><a href="${url}">${title}</a></strong>
		<a href="${url}">${memo}</a>
		<span class="writer_info">
		  <b>작성자</b> : ${name}<a href="#" class="go_gallog"><span class="blind">고정닉</span><em class="sp_img icon_gallog_nik"></em></a>
		</span>
	  </div>
	  </script>
</div>

<script type="text/javascript">
gt_recomAjax('hoteltvn');
</script>	  
	  <!-- 차단 설정 -->
	  
<!-- 차단 설정 (리스트 내) -->
<div id="user_block" class="pop_wrap type3" style="left:50%;top:-2px;margin-left:-199px;display:none">
	<div class="pop_content block_setting_wrap">
	  <div class="pop_head bg"><h3>차단설정</h3></div>
	  <div class="pop_info">
		<p>차단설정을 통해 게시물을 걸러서 볼 수 있습니다.</p>
	  </div>
	  <div class="block_tab">
		<button type="button" class="on" onclick="ub_conf_tab(0)">전체설정</button>
		<button type="button" class="" onclick="ub_conf_tab(1)">갤러리별 설정</button>
	  </div>
	  <div class="block_setting_box">
		<div class="inner">
		  <!-- 전체 설정-->
		  <div class="tabcontent all_setting" style="display:block">
			<div class="pop_info">
			  <h4>[전체 갤러리]</h4>
			  <p>차단 기능을 사용합니다. 차단 등록은 20자 이내, 최대 10개까지 가능합니다.</p>
			  <div class="setting_onoff">
				<button type="button" class="sp_img on" onclick="ub_toggle_onoff($('#user_block .all_setting'))"><span class="blind">on</span></button>
			  </div>
			</div>
			<div class="word_wrap">
			  <div class="set_cont add_text">
				<label for="bword" class="cont_tit">차단 단어</label>
				<input name="word" type="text" id="bword" title="차단 단어 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			  <div class="set_cont add_text">
				<label for="bid" class="cont_tit">차단 ID</label>
				<input name="id" type="text" id="bid" title="차단 ID 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			  <div class="set_cont add_text">
				<label for="bnikname" class="cont_tit">차단 닉네임</label>
				<input name="nick" type="text" id="bnikname" title="차단 닉네임 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			  <div class="set_cont add_text">
				<label for="bip" class="cont_tit">차단 IP</label>
				<input name="ip" type="text" id="bip" title="차단 IP 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			</div>
		  </div>
		  <!-- //전체 설정-->

		  <!-- 갤러리별 설정-->
		  <div class="tabcontent part_setting" style="display:none">
			<div class="pop_info">
			  <h4>설정된 갤러리</h4>
			  <ul class="block_list gall"></ul>
			  
				<script id="block_parts_list-tmpl" type="text/x-jquery-tmpl">
				<li>
				  <span class="ub_block-${id}" style="cursor:pointer;" onclick="ub_apply_conf($('#user_block .part_setting'), '${conf}', '${id}')">${name}</span>
				  <button type="button" class="" onclick="ub_del_gall('${id}')"><span class="blind">차단설정 단어 삭제</span><em class="sp_img icon_bword_del"></em></button>
				</li>
				</script>
				
			</div>
			<div class="part_schbox">
			  <h4  class=" gall_sel_tit fl">갤러리 선택</h4>
			  <div class="fl">
				<span class="radiobox">
				  <input type="radio" id="gallsel" checked="checked" name="gallSel" value="gall">
				  <em class="checkmark"></em>
				  <label for="gallsel">갤러리</label>
				</span>
				<span class="radiobox">
				  <input type="radio" id="mgallsel" name="gallSel" value="mgall">
				  <em class="checkmark"></em>
				  <label for="mgallsel">마이너 갤러리</label>
				</span>
			  </div>
			  <div class="set_cont fl">
				<input type="text" title="갤러리명 검색" class="intxt" name="gallNameWord" onkeyup="if(event.keyCode==13)ub_searchGallName();">
				<button type="button" class="btn_enroll" onclick="ub_searchGallName()">검색</button>
			  </div>
				<ul class="block_sch_gall" style="display:block"></ul>
				
				<script id="sch_gall-tmpl" type="text/x-jquery-tmpl">
				<li><a href="javascript:;" onclick="ub_sel_gallery('${name}', '${ko_name}')">${ko_name}</a></li>
				</script>
				
				<p class="empty_sch_gall" style="display:none">설정할 갤러리를 선택하세요.</p><!-- 선택한 갤러리 리스트가 없을때 -->
			</div>
			<div class="pop_info">
			  <h4>[<span id="sel_gall_name">갤러리</span>]</h4>
			  <p>차단 기능을 사용합니다. <em class="font_red">전체 설정과는 별개 적용됩니다.</em></p>
			  <div class="setting_onoff">
				<button type="button" class="sp_img" onclick="ub_toggle_onoff($('#user_block .part_setting'))"><span class="blind">off</span></button>
			  </div>
			</div>
			<div class="word_wrap setting_off">
			  <div class="set_cont add_text">
				<label for="bword" class="cont_tit">차단 단어</label>
				<input name="word" type="text" id="pbword" title="차단 단어 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			  <div class="set_cont add_text">
				<label for="bid" class="cont_tit">차단 ID</label>
				<input name="id" type="text" id="pbid" title="차단 ID 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			  <div class="set_cont add_text">
				<label for="bnikname" class="cont_tit">차단 닉네임</label>
				<input name="nick" type="text" id="pbnikname" title="차단 닉네임 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			  <div class="set_cont add_text">
				<label for="bip" class="cont_tit">차단 IP</label>
				<input name="ip" type="text" id="pbip" title="차단 IP 입력" class="intxt">
				<button type="button" class="btn_enroll">등록</button>
				<ul class="block_list word"></ul>
			  </div>
			</div>
		  </div>
		  <!-- //갤러리별 설정-->
		</div>
	  </div>
	  <div class="btn_box">
		<button type="button" class="btn_cancle" onclick="close_user_block()">닫기</button>
		<button type="button" class="btn_apply" onclick="ub_save_conf()">저장</button>
	  </div>

	</div>
	<button type="button" class="poply_whiteclose" onclick="close_user_block()"><span class="blind">c차단설정 레이어 닫기</span><em class="sp_img icon_whiteclose"></em></button>
</div>
<!-- //차단 설정 -->

<script id="block_word-tmpl" type="text/x-jquery-tmpl">
<li>
	<span class="block_word">${word}</span>
	<button type="button" class="" onclick="ub_remove_text(this)"><span class="blind">차단설정 단어 삭제</span><em class="sp_img icon_bword_del"></em></button>
</li>
</script>	  
	  <div class="banner_box">
	  	  </div>
	  
	  <!-- 최근방문 갤러리 -->
	  <div id="visit_history" class="visit_history">
	<h3 class="tit">최근 방문 갤러리</h3>
	<!-- bnt_visit_prev,bnt_visit_next 버튼 활성화시 클래스 on -->
	<button type="button" class="bnt_visit_prev"><span class="blind">이전</span><em class="sp_img icon_prev"></em></button>
	
	<p class="empty_visit" style="display:none">최근 방문 갤러리가 없습니다.</p>
	<ul class="visit_list"></ul>
	<script id="lately_galls-tmpl" type="text/x-jquery-tmpl">
	<li><a href="//${link}" class="logClass" depth1="topframe" depth2="gall_lately" depth3="${id}">${name}</a><button type="button" class="btn_visit_del" data-id="${id}"><span class="blind">삭제</span><em class="icon_visit_del"></em></button></li>
	</script>
	
	<p class="empty_visit">최근 방문 갤러리가 없습니다.</p>
	
	<button type="button" class="bnt_visit_next"><span class="blind">다음</span><em class="sp_img icon_next"></em></button>
</div>

	</div>
  </div>
</article>
	<article id="write_wrap" class="clear">
	<h2 class="blind">갤러리 글쓰기 영역</h2>
	<form method="POST" name="board" action="http://localhost:8090/free/board/insertboard.do">
					<table>
						<tr height="50px">
							<td colspan="2" align="left"
								style="font-size: 15px; color: grey;">제목<input
									class="title_style" type="text" id="title" name="title" /></td>
						</tr>
						<tr>
							<td colspan="2" style="font-size: 13px;">※음란물, 차별, 비하, 혐오 및
								초상권, 저작원 침해 게시물은 민, 형사상의 책임을 질 수 있습니다. <a href="#">[저작권법 안내]</a><a
								href="#">[게시물 활용 안내]</a>
							</td>
						</tr>
						<tr height="auto">
							<td colspan="2"><textarea id="content"
									class="textarea_style" name="content" id="content"></textarea></td>
						</tr>
						<tr>
							<td class="blind" colspan="2">
							<input type="hidden" name="nick" value="${user.nick }"/>
							<input type="hidden" name="password" value="${user.password }"/>
							<input type="hidden" name="canum" value="1" /> 
							<input type="hidden" name="type" value="일반" />
							<input type="hidden" name="inqu" value="0" />
							<input type="hidden" name="reco" value="0" />
							<input type="hidden" name="appro" value="모바일" />
							<input type="hidden" name="concept" value="0" /> 
							<input type="hidden" name="nonreco" value="0" />
							<input type="hidden" name="hitnum" value="0" /> 
							<input type="hidden" name="repnum" value="0" />
							</td>
						</tr>
						<tr>
							<td colspan="2"><button type="reset" id="btn_write"
									class="btn_grey write" >취소</button>
								<button type="submit" id="btn_write" class="btn_blue write">등록</button></td>
						</tr>
					</table>
	</form>
</article>
	</section>
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
</body>
</html>
