<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="imagetoolbar" content="no">
	<meta name="content-language" content="kr">
	<meta name="google-site-verification" content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
	<meta name="author" content="디시인사이드">
	<meta name="title" content="호텔 델루나 갤러리">
	<meta name="description" content="국내방송2, 호텔 델루나, hoteltvn community portal dcinside">
	<meta property="og:type" content="website">
	<meta property="og:title" content="호텔 델루나 갤러리">
	<meta property="og:description" content="국내방송2, 호텔 델루나, hoteltvn community portal dcinside">
	<meta property="og:image" content="https://nstatic.dcinside.com/dc/w/images/descrip_img.png">
	<meta property="og:url" content="https://gall.dcinside.com/board/lists/?id=hoteltvn">
	<meta property="og:site_name" content="디시인사이드">
	<meta property="og:updated_time" content="2019-08-22 12:43:46">
	<meta property="og:locale" content="ko_KR">
	<title>호텔 델루나 갤러리</title>
	<link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/reset.css?v=1"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/common.css?190716"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/contents.css?190816"/>
	
</head>
<body>
	
	 <!--스킵 내비게이션-->
  <div class="skip">
    <a href="#search_wrap"><span>통합검색 바로가기</span></a>
    <a href="#container"><span>본문영역 바로가기</span></a>
    <a href="#gnblist_wrap"><span>상단 메뉴 바로가기</span></a>
  </div>
  <!-- //스킵 내비게이션-->
  <div id="top" class="dcwrap width1160 list_wrap">
    
    <!-- 상단 -->
	<header class="dcheader">
  <div class="dchead">
	<!-- 로고영역 -->
	<h1 class="dc_logo">
	  <a href="https://www.dcinside.com/">
		<img src="https://nstatic.dcinside.com/dc/w/images/dcin_logo.png" alt="디시인사이드">
	  </a>
	  <a href="https://gall.dcinside.com/">
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
		 <li><a href="http://localhost:8090/free/board/myboard.do?nick=${nick }">갤로그</a></li>
		 <li><a href="#">뉴스</a></li>
		 <li><a href="#">만두몰</a></li>
		 <li><a href="#">이벤트</a></li>
		 <li><a class="btn_top_loginout" href="">로그인</a></li>		
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
          <li><a href="#" class="link_gnb">m.갤러리</a></li>
          <li><a href="http://localhost:8090/free/board/myboard.do?nick=${nick }" class="link_gnb">갤로그</a></li>
          <li><a href="#" class="link_gnb">뉴스</a></li>
          <li><a href="#" class="link_gnb">이벤트</a></li>
          <li><a href="#" class="link_gnb">만두몰</a></li>
          <li><a href="#" class="link_gnb">디시위키</a></li>
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
        <div class="wrap_inner">
    
	   	<main id="container" class="listwrap clear">
    <!-- left_content -->
	<section  class="left_content">
	
<!-- 갤리명 타이틀바 ~ 이용안내 -->

<header>
  <div class="page_head clear">
	<div class="fl clear">
	  <h2><a href="https://gall.dcinside.com/board/lists?id=hoteltvn">호텔 델루나 갤러리</a></h2>
	  	  	  
	   
	</div>
		<div class="fr gall_issuebox">
		  <button type="button" class="relate" onclick="open_relation(23436)"><span class="new" style="display:none;"><em class="blind">NEW</em><em class="sp_img icon_new"></em></span>연관 갤러리(3/4) <span class="blind">연관 갤러리 열기</span><em class="sp_img icon_relate_more"></em></button>
	  <button type="button" class="adr_copy" onclick="copy_gall_url()">갤주소 복사</button>
	  <button type="button" class="block_setting" onclick="open_user_block()">차단설정</button>
	  	  <button type="button" class="gall_useinfo" onclick="open_user_guide()">갤러리 이용안내</button>
	   
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
	  <script type="text/javascript" src="https://addc.dcinside.com/NetInsight/js/dcinside/gallery/list@top_tv"></script>	  </div>
	  
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

<script type="text/javascript" src="/_js/lately_visit_gallery.js?v=20180917"></script>
<script type="text/javascript">
lately_gall_init('hoteltvn', '호텔 델루나', '');
</script>	  
	</div>
  </div>
</article>
	<article>
		<form name="frm">
		  	<input type="hidden" id="current_type" name="current_type" value="list">
			<input type="hidden" id="list_url" name="list_url" value="https://gall.dcinside.com/board/lists?id=hoteltvn">
			<input type="hidden" id="current_params" name="current_params" value="&page=1">
			<input type="hidden" id="exception_mode" name="exception_mode" value="all">
			<input type="hidden" id="list_num" name="list_num" value="50">
			<input type="hidden" id="page" name="page" value="1">
			<input type="hidden" id="sort_type" name="sort_type" value="N">
			<input type="hidden" id="board_type" name="board_type" value="list">
			<input type="hidden" id="search_head" name="search_head" value="">
			<input type="hidden" id="gallery_id" name="gallery_id" value="hoteltvn">
			<input type="hidden" id="no" name="gallery_no" value="">
			<input type="hidden" id="s_type" name="s_type" value="">
			<input type="hidden" id="s_keyword" name="s_keyword" value="">
			<input type="hidden" id="e_s_n_o" name="e_s_n_o" value="3eabc219ebdd65fe3eef84e0">
		</form>
		
				
	  <!--상단 탭-->
	  <h2 class="blind">갤러리 리스트 영역</h2>
<div class="list_array_option clear">
<div class="array_tab left_box">
  <button type="button" class="on" onclick="listKindTab('all','list');return false;">전체글</button>
  
    <button type="button" class="" onclick="listKindTab('recommend','list');return false;">개념글</button>
    
    
    <button type="button" class="" onclick="listKindTab('notice','list');return false;">공지</button>
  <!--<button type="button" class="" onclick="listKindTab('movie','list');return false;">동영상</button>-->
    
</div>
<div class="right_box">
<div class="output_array clear" style="display:block">
  <div class="select_box array_num">
	<select name="numbers" id="sarray_numbers">
	  	  <option value="30">30개</option>
	  <option value="50">50개</option>
	  <option value="100">100개</option>
	  	</select>
	<div class="select_area"><a href="#" onclick="showLayer(this, 'listSizeLayer');return false;">50개<span class="blind">페이지당 게시물 노출 옵션</span><em class="sp_img icon_option_more"></em></a></div>
	<ul id="listSizeLayer" class="option_box" style="left:0;top:20px;display:none">
	  	  <li><a href="javascript:listDisp(30)">30개</a></li>
	  <li><a href="javascript:listDisp(50)">50개</a></li>
	  <li><a href="javascript:listDisp(100)">100개</a></li>
	  	</ul>
  </div>
    <div class="switch_btnbox">
  			&nbsp;
  			<%
  			session.setAttribute("nick","chang");
  			session.setAttribute("password","123");
  			String nick=(String)session.getAttribute("nick");
  			System.out.println("nick>>"+nick);
  			if(nick==null){
	  			%>
	  			<a class="btn_write sp_img" href="http://localhost:8090/free/board/newboard.do"></a>
	  			<%
  			}else{
	  			%>
	  			<a class="btn_write sp_img" href="http://localhost:8090/free/board/newboardIn.do"></a>
	  			<%
  			}
  			%>
			<span class="blind">글쓰기</span>
			<em class="inner"></em><em class="inner"></em><em class="inner"></em><em class="inner"></em>
			  </div>
</div>
</div>
</div>
<!-- 갤러리 리스트 -->	  <div class="gall_listwrap list">
		<!-- 게시판형 갤러리 리스트-->
	    <table class="gall_list">
		  <caption>갤러리 리스트</caption>
		  <colgroup>
			<col style="width:6%">
			<col style="width:30%">
			<col style="width:11%">
			<col style="width:6%">
			<col style="width:6%">
			<col style="width:6%">
		  </colgroup>
		  <thead>
			<tr>
			  <th scope="col">번호</th>
			  <th scope="col">제목</th>
			  <th scope="col">글쓴이</th>
			  <th scope="col">작성일</th>
			  <th scope="col">조회</th>
			  <th scope="col">추천</th>
			</tr>
		  </thead>
		  	<tbody>
		<c:forEach var="row" items="${list}">
			<tr class="ub-content us-post">
				<td class="gall_num" >${row.num}</td>
				<td class="gall_tit ub-word">${row.title }</td>
			  	<td class="gall_writer ub-writer">
				<span class='nickname' title='ㅇㅇ'><em>${row.nick }</em></span></td>
			  <td class="gall_date" >${row.date}</td>
			  <td class="gall_count">${row.inqu }</td>
			  <td class="gall_recommend">${row.reco}</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>

	  </div>
	  <!-- //갤러리 리스트 -->
	  	  <div class="list_bottom_btnbox">
	  	<div class="fl">
        	<button type="button" class="list_bottom btn_blue" onclick="listKindTab('all','list');return false;">전체글</button>
        	<button type="button" class="list_bottom btn_white" onclick="listKindTab('recommend','list');return false;">개념글</button>	        	
        </div>
	  	<div class="fr">
	  		<%
	  		if(nick==null){
	  			%>
	  			<button type="button" id="btn_write" class="btn_blue write" onclick="window.open('http://localhost:8090/free/board/newboard.do')">글쓰기</button>
	  			<%
  			}else{
  			%>
  			<button type="button" id="btn_write" class="btn_blue write" onclick="window.open('http://localhost:8090/free/board/newboardIn.do')">글쓰기</button>
  			<%
  			}
  			%>
			</div>
			  </div>
	  	  <!-- 페이징 -->
	  <div class="bottom_paging_box">
		<em>1</em><a href="/board/lists/?id=hoteltvn&page=2">2</a><a href="/board/lists/?id=hoteltvn&page=3">3</a><a href="/board/lists/?id=hoteltvn&page=4">4</a><a href="/board/lists/?id=hoteltvn&page=5">5</a><a href="/board/lists/?id=hoteltvn&page=6">6</a><a href="/board/lists/?id=hoteltvn&page=7">7</a><a href="/board/lists/?id=hoteltvn&page=8">8</a><a href="/board/lists/?id=hoteltvn&page=9">9</a><a href="/board/lists/?id=hoteltvn&page=10">10</a><a href="/board/lists/?id=hoteltvn&page=11">11</a><a href="/board/lists/?id=hoteltvn&page=12">12</a><a href="/board/lists/?id=hoteltvn&page=13">13</a><a href="/board/lists/?id=hoteltvn&page=14">14</a><a href="/board/lists/?id=hoteltvn&page=15">15</a><a href="/board/lists/?id=hoteltvn&page=16" class="page_next">다음</a><a href="/board/lists/?id=hoteltvn&page=1110" class="page_end">끝</a>	  </div>
	  <!-- //페이징 -->
	  
	  	  
	  <!-- 갤러리 내 검색 -->
	  <form name="frmSearch" method="post">
		<fieldset>
		  <legend class="blind">갤러리 내부 검색</legend>
		  <div class="buttom_search_wrap clear">
			<div class="select_box bottom_array fl">
    			<select id="search_type" name="search_type">
    			  <option value="search_all">전체</option>
    			  <option value="search_subject">제목</option>
    			  <option value="search_memo">내용</option>
    			  <option value="search_name">글쓴이</option>
    			  <option value="search_subject_memo">제목+내용</option>
    			</select>
    			<div class="select_area" onClick="showLayer(this, 'searchTypeLayer');return false;">
    			  <span id="search_type_txt">전체</span><span class="blind">게시물 정렬 옵션</span>
    			  <span class="inner"><em class="sp_img icon_option_more"></em></span>
    			</div>
    			<ul id="searchTypeLayer" class="option_box" style="left:-1px;top:36px;display:none">
    			  <li onClick="javascript:searchTypeSel('search_all')">전체</li>
    			  <li onClick="javascript:searchTypeSel('search_subject')">제목</li>
    			  <li onClick="javascript:searchTypeSel('search_memo')">내용</li>
    			  <li onClick="javascript:searchTypeSel('search_name')">글쓴이</li>
    			  <li onClick="javascript:searchTypeSel('search_subject_memo')">제목+내용</li>
    			</ul>
		  	</div>
			<div  class="bottom_search fl clear">
			<div class="inner_search">
			  <input class="in_keyword" type="text" name="search_keyword" title="검색어 입력" value="">
			</div>
			<button class="sp_img bnt_search" onClick="search();return false;"><span class="blind">검색</span></button>
		  </div>
		</div>
		</fieldset>
	  </form>
	</article>
  </section>
  <script type="text/javascript">
  if(typeof(chk_user_block) == 'function') {
	  chk_user_block('hoteltvn');
  }
  </script>
  
  
<script type="text/javascript" src="/_js/gallery_right.js?v=20190213"></script>

<!-- right_content -->
<section  class="right_content">
	<h2 class="blind">오른쪽 컨텐츠 영역</h2>
	<script type="text/javascript" src="/_js/gallery_right_login.js"></script>
<script type="text/javascript" src="/_js/alarm_polling.js"></script>

<div>
  <!-- 로그인 정보 -->
  <div id="login_box" class="login_box">
	<div class="user_info" data-alarmId="">
	  <strong onclick="location='https://dcid.dcinside.com/join/login.php?s_url=https%3A%2F%2Fgall.dcinside.com%2Fboard%2Flists%2F%3Fid%3Dhoteltvn&s_key=550'" style="cursor:pointer">로그인을 해 주시기 바랍니다.</strong> 
	</div>
	<div class="user_option">
	  <span><a href="javascript:;" onclick="alert('로그인이 필요합니다.')">갤로그<em class="sp_loginout icon_visit"></em></a></span>
	  <span><a href="javascript:;" onclick="alert('로그인이 필요합니다.')">즐겨찾기<span class="blind">리스트 보기</span><em class="sp_loginout icon_favorites hide"></em></a></span>
	  
	  	  
	  <span><a class="" href="javascript:;" onclick="alarmList($('.icon_noti', this), 'new')"><em class="sp_loginout icon_noti "></em>알림</a></span><!-- 신규알림시 클래스 new -->
	</div>
	
	<!-- 알림 설정 -->
	<div id="alarmConf" class="pop_wrap type3" style="right:-1px;top:79px;z-index:110;display:none;">
	  <div class="pop_content notice_setting">
		<div class="pop_head"><h3>알림설정</h3></div>
		<div class="inner">
		  <div class="set_element_box">
			<p class="inner_txt">
			  <span class="set_element">한줄알림</span>알림 팝업을 ON/OFF 합니다.
			</p>
			<div class="setting_onoff">
			  <button type="button" class="sp_img on" onclick="alarmConfToggle(this);" data-id="popup"><span class="blind">on</span></button>
			</div>
		  </div>
		  <div class="set_element_box">
			<p class="inner_txt">
			  <span class="set_element">댓글알림</span>내 글에 댓글이 달린 경우 알려줍니다.
			</p>
			<div class="setting_onoff">
			  <button type="button" class="sp_img on" onclick="alarmConfToggle(this);" data-id="reply"><span class="blind">on</span></button>
			</div>
		  </div>
		  <div class="set_element_box">
			<p class="inner_txt">
			  <span class="set_element">답글알림</span>내 댓글에 답글이 달린 경우 알려줍니다.
			</p>
			<div class="setting_onoff">
			  <button type="button" class="sp_img on" onclick="alarmConfToggle(this);" data-id="reReply"><span class="blind">on</span></button>
			</div>
		  </div>
		  <div class="set_element_box">
			<p class="inner_txt">
			  <span class="set_element">힛갤알림</span>힛갤이 등록된 경우 알려줍니다.
			</p>
			<div class="setting_onoff">
			  <button type="button" class="sp_img on" onclick="alarmConfToggle(this);" data-id="hit"><span class="blind">on</span></button>
			</div>
		  </div>
		</div>
		<div class="btn_box">
		  <button type="button" class="btn_grey small" onclick="alarmConfClose();">닫기</button>
		  <button type="button" class="btn_blue small" onclick="alarmConfUpdate();">저장</button>
		</div>
	  </div>
	  <button type="button" class="poply_bgblueclose" onclick="alarmConfClose();"><span class="blind">알림 설정 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
	</div>
	<!-- //알림 설정 -->

	<!-- 알림 -->
	<div id="alarmList" class="pop_wrap type3" style="right:-1px;top:79px;display:none;">
	  <div class="pop_content notice_listwrap">
		<div class="pop_head clear">
		  <h3 class="fl">알림</h3>
		  <div class="fr">
			<button type="button" class="btn_noti_alldel" onclick="remove_all_alarm()">전체삭제</button>
			<button type="button" class="btn_noti_setting" onclick="alarmConf()">설정</button>
		  </div>
		</div>
		
		<ul class="notice_list"></ul>
		
				<script id="alarm-list-tmpl" type="text/x-jquery-tmpl">
		{{if type == 'manager'}}
		<li class="notice_mng">
		  <a {{if link}}href="${link}"{{/if}} class="notice_txt"><span>${prefix} ${content}</span>
			<span class="inner">
			{{if document.alarm_time >= alarm_new_max}}<span class="new"><em class="blind">NEW</em><em class="sp_img icon_new"></em></span>{{/if}}
			<button type="button" class="" onclick="remove_alarm($(this).closest('li'))"><span class="blind">알림삭제</span><em class="sp_img icon_bword_del"></em></button>
			</span>
		  </a>
		</li>
		{{else}}
		<li>
		  <a href="${link}" class="notice_txt">${prefix} ${content}</a>{{if document.alarm_time >= alarm_new_max}}<span class="new"><em class="blind">NEW</em><em class="sp_img icon_new"></em></span>{{/if}}
		  <button type="button" class="" onclick="remove_alarm($(this).closest('li'))"><span class="blind">알림삭제</span><em class="sp_img icon_bword_del"></em></button>
		</li>
		{{/if}}
		</script>
		
		<p class="empty_box" style="display:none;">새로운 알림이 없습니다.</p>
		
	  </div>
	  <button type="button" class="poply_bgblueclose" onclick="alarmListClose()"><span class="blind">알림 리스트 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
	</div>
	<!-- //알림 -->
	
  </div>
  <!-- //로그인 정보 -->
</div>
</section>
<script type="text/javascript">
alarm_init();
</script>		<div class="rightbanner">
	<script async='async' src='https://www.googletagservices.com/tag/js/gpt.js'></script>
<script>
  var googletag = googletag || {};
  googletag.cmd = googletag.cmd || [];
</script>

<script>
  googletag.cmd.push(function() {
    googletag.defineSlot('/76378310/list_right_300600', [300, 600], 'div-gpt-ad-1538097649334-0').addService(googletag.pubads());
    googletag.pubads().enableSingleRequest();
    googletag.enableServices();
  });
</script>
<!-- /76378310/list_right_300600 -->
<div id='div-gpt-ad-1538097649334-0' style='height:600px; width:300px;'>
<script>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1538097649334-0'); });
</script>
</div>			<div id="taboola-right-rail-thumbnails"></div>
		<script type="text/javascript">
		  window._taboola = window._taboola || [];
		  _taboola.push({
		    mode: 'thumbnails-rr_abp-mode',
		    container: 'taboola-right-rail-thumbnails',
		    placement: 'Right Rail Thumbnails',
		    target_type: 'mix'
		  });
		</script>
		</div>

<script type="text/javascript">
gr_recomAjax();
gr_newsAjax();
gr_hit();
gr_oldhit();
gr_toprecomAjax();
gr_issueZoom();
gr_wiki();gr_issueKeyword();</script>  <script type="text/javascript" src="https://addc.dcinside.com/NetInsight/js/dcinside/pv/pc@list_tv"></script>  <div class="ad_bottom_list"  style="clear:none;float:left;width:840px">
	<ins class="kakao_ad_area" style="display:none;" 
 data-ad-unit    = "DAN-urrwd9deagdd" 
 data-ad-width   = "728" 
 data-ad-height  = "90"></ins> 
<script type="text/javascript" src="//t1.daumcdn.net/adfit/static/ad.min.js" async></script></div>
</main>
</div>

    <!-- 하단 -->
    <footer class="dcfoot">
    
	<script type="text/javascript">
$('footer.dcfoot').addClass('type1');
</script>

 <div class="dc_all">
   <div class="all_box">
	 <div class="all_list"><!-- 리스트 접기 클래스: close -->
	   <dl>
		 <dt>게임</dt>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=leagueoflegends2">리그 오브 레전드</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=granblue">그랑블루 판타지</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists?id=battlegrounds">배틀그라운드</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=bd">검은사막</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=d_fighter_new1">던전앤파이터</a></dd>
	   </dl>
	   <dl>
		 <dt>연예/방송</dt>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=blackpink">블랙핑크</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=lovelyz">러블리즈</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=kdani">강다니엘</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=bts">방탄소년단</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=twice">TWICE</a></dd>
	   </dl>
	   <dl>
		 <dt>스포츠</dt>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=baseball_new8">국내야구</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=hanwhaeagles_new">한화 이글스</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=tigers_new">KIA 타이거즈</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=giants_new2">롯데 자이언츠</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=football_new6">해외축구</a></dd>
	   </dl>
	   <dl>
		 <dt>교육/금융/IT</dt>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=stock_new2">주식</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=bitcoins">비트코인</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=ancheolsu">안철수</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=baduk">바둑</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=divination">역학</a></dd>
	   </dl>
	   <dl>
		 <dt>여행/음식/생물</dt>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=dog">멍멍이</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=cat">야옹이</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=fish">물고기</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=alcohol">주류</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=food">기타음식</a></dd>
	   </dl>
	   <dl>
		 <dt>취미/생활</dt>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=ib_new">인터넷방송</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=theaterM">연극, 뮤지컬 갤러리</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=fantasy_new">판타지</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=cartoon">카툰-연재</a></dd>
		 <dd><a href="https://gall.dcinside.com/board/lists/?id=cartoon_s">카툰-단편</a></dd>
	   </dl>
	 </div>
	 <div class="all_bottom">
	   <span class="bottom_menu">
		 <a class="menu_link" href="#top"><em class="sp_img icon_up"></em>맨위로</a>
	   </span>
	 </div>
   </div>
 </div>	
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