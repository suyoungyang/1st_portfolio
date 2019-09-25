<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="imagetoolbar" content="no">
	<meta name="content-language" content="kr">
	<title>${board.title }</title>
	<link rel="shortcut icon" href="//nstatic.dcinside.com/dc/w/images/logo_icon.ico" />
	<link rel="apple-touch-icon" href="//nstatic.dcinside.com/dc/m/img/dcinside_icon.png">
	<link rel="apple-touch-icon-precomposed" href="//nstatic.dcinside.com/dc/m/img/dcinside_icon.png">
	<link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/reset.css?v=1"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/common.css?v=1909061747"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/contents.css?190816"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/popup.css?ver=1908201051"/>
	<link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/editor_20141223.css?v=2"/>
	<link rel="stylesheet" type="text/css" href="https://nstatic.dcinside.com/dc/w/css/research.css?v=12"/>
	<link rel="manifest" href="/manifest.json">
	<script type="text/javascript" src="//nstatic.dcinside.com/dc/w/js/html5shiv.min.js"></script>
	<script type="text/javascript" src="//nstatic.dcinside.com/dgn/gallery/js/ctr_cookie.min.js"></script>
	<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="//nstatic.dcinside.com/dc/w/css/ie7.css"/>
	<![endif]-->
		<script type="text/javascript" src="//nstatic.dcinside.com/dgn/gallery/js/cross_domain.js"></script>
	<!--[if lt IE 9]>
	<script src="//nstatic.dcinside.com/dgn/gallery/js/jquery-1.7.2.min.js"></script>
	<![endif]-->
	<!--[if gte IE 9]>
	<script src="//nstatic.dcinside.com/dgn/gallery/js/jquery-3.2.1.min.js"></script>
	<![endif]-->
	<!--[if !IE]> -->
	<script src="//nstatic.dcinside.com/dgn/gallery/js/jquery-3.2.1.min.js"></script>
	<!-- <![endif]-->
	<script type="text/javascript" src="//nstatic.dcinside.com/dgn/gallery/js/jquery.tmpl.min.js"></script>
	<script type="text/javascript" src="//nstatic.dcinside.com/dgn/gallery/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/_js/jquery/jquery.matchHeight.js"></script>
	<script type="text/javascript" src="/_js/common.js?v=190813"></script> 
	<script type="text/javascript" src="/_js/favorite.js?v=180106"></script>
	<script type="text/javascript" src="/_js/gallery_top.js?190513"></script>
	<script type="text/javascript" src="/_js/user_block.js"></script>
	<script type="text/javascript" src="/_js/crossDomainStorage.js?1"></script>
	<script type="text/javascript" src="/_js/globalSearch.js?190513"></script>
	<script type="text/javascript" src="/_js/fcm/app.js?2"></script>
		<script type="text/javascript" src="/_js/navigation.js"></script>
		
	<script type="text/javascript">
		document.domain = "dcinside.com";
		var k_cnt = 0;
		var _GALLERY_TYPE_ = "G";
	</script>
	
		<script src="/_js/view.js?v=190128" type="text/javascript" charset="utf-8"></script>
<script src="/_js/recommend_box.js?v=190816" type="text/javascript" charset="utf-8"></script>
<script src="/_js/search.js?v=190213" type="text/javascript" charset="utf-8"></script>
<script src="/_js/relate_keyword.js?v=190213" type="text/javascript" charset="utf-8"></script>
<script src="/_js/comment.js?v=190423" type="text/javascript" charset="utf-8"></script>
<script src="/_js/total_singo.js?v=190213" type="text/javascript" charset="utf-8"></script>
<script src="/_js/voice_reple.js" type="text/javascript" charset="utf-8"></script>
<script src="/_js/ZeroClipboard.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/_js/vr_clipboard.js?v=190304" type="text/javascript" charset="utf-8"></script>
<script src="/_js/ad.js" type="text/javascript" charset="utf-8"></script>
<script src="/_js/dccon/dccon.js?v=190513" type="text/javascript" charset="utf-8"></script>
<script src="/_js/zzbang.js" type="text/javascript" charset="utf-8"></script>
<script src="//nstatic.dcinside.com/dgn/gallery/js/dc_common.js?v=190115" type="text/javascript" charset="utf-8"></script>
<script src="/_js/zip/jszip.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/_js/FileSaver.js?2" type="text/javascript" charset="utf-8"></script>
<script src="/_js/gallery_bottom.js" type="text/javascript" charset="utf-8"></script>
<script src="/_js/kakao.min.js" type="text/javascript" charset="utf-8"></script>
	<!-- Taboola -->
	<script type="text/javascript">
      window._taboola = window._taboola || [];
      _taboola.push({category:'auto'});
      !function (e, f, u, i) {
        if (!document.getElementById(i)){
          e.async = 1;
          e.src = u;
          e.id = i;
          f.parentNode.insertBefore(e, f);
        }
      }(document.createElement('script'),
      document.getElementsByTagName('script')[0],
      '//cdn.taboola.com/libtrc/dcinside/loader.js',
      'tb_loader_script');
      if(window.performance && typeof window.performance.mark == 'function')
      {window.performance.mark('tbl_ic');}
	</script>
    <!-- Taboola -->
    
    <script src="//neon.netinsight.co.kr/persona.js"></script>
    </head>
<body>
	<!--스킵 내비게이션-->
	<div class="skip">
		<a href="#search_wrap"><span>통합검색 바로가기</span></a> <a href="#container"><span>본문영역
				바로가기</span></a> <a href="#gnblist_wrap"><span>상단 메뉴 바로가기</span></a>
	</div>
	<!-- //스킵 내비게이션-->
	<div id="top" class="dcwrap width1160 view_wrap">

		<!-- 상단 -->
		<header class="dcheader">
			<div class="dchead">
				<!-- 로고영역 -->
				<h1 class="dc_logo">
					<a href="http://localhost:8090/free/board/menulist.do"> <img
						src="https://nstatic.dcinside.com/dc/w/images/dcin_logo.png"
						alt="디시인사이드">
					</a> <a href="http://localhost:8090/free/board/listboard.do"> <img
						src="https://nstatic.dcinside.com/dc/w/images/tit_gallery.png"
						alt="갤러리">
					</a>
				</h1>
				<!-- //로고영역 -->

				<div id="search_wrap" class="wrap_search">
					<h2 class="blind">갤러리 검색</h2>
					<!-- 갤러리 통합검색 -->
					<form id="searchform" name="search_process" class="sch_smit"
						method="get" accept-charset="utf-8" action="" role="search"
						onSubmit="return globalSearch(this);">
						<fieldset>
							<legend class="blind">통합검색</legend>
							<div class="top_search clear">
								<div class="inner_search">
									<input class="in_keyword" type="text" name="search"
										id="preSWord" title="검색어 입력" value="" placeholder="갤러리 & 통합검색"
										accesskey="f" type="search" autocomplete="off">
								</div>
								<button type="submit" class="sp_img bnt_search"
									id="searchSubmit">
									<span class="blind">검색</span>
								</button>
							</div>
						</fieldset>
					</form>
					<!-- //갤러리 통합검색 -->

					<!-- 검색 자동완성 레이어-->
					<div class="auto_wordwrap"
						style="left: 0; top: 45px; display: none">
						<!--자동완성 레어이 : display:block -->
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
						<li><a class="btn_top_loginout" href="#">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</header>
		<!-- GNB -->
		<div class="gnb_bar">
			<nav class="gnb clear">
				<h2 class="blind">GNB</h2>
				<ul class="gnb_list clear">
					<li><a class="hover_gnb link_gnb on" href="http://localhost:8090/free/board/listboard.do">갤러리<em class="sp_img icon_depmore hover_gnb"></em></a> <span
						class="gnb_area" style="display: block; width: 77px; height: 12px; position: absolute; left: 0; bottom: 0;"></span>
						<!-- 2차메뉴 -->
						<div class="depth2" style="left: 0; display: none">
							<!--2차메뉴 열림 : display:block -->
							<span class="sp_img depth_bg"></span>
							<ul class="depth2_list">
								<li><a href="#">게임</a></li>
								<li><a href="#">연예/방송</a></li>
								<li><a href="#">스포츠</a></li>
								<li><a href="#">교육/금융/IT</a></li>
								<li><a href="#">여행/음식/생물</a></li>
								<li><a href="#">취미/생활</a></li>
							</ul>
						</div> <!-- //2차메뉴 --></li>
					<li><a href="#" class="link_gnb ">m.갤러리</a></li>
					<li><a href="http://localhost:8090/free/board/myboard.do?nick=${user.nick }">갤로그</a></li>
					<li><a href="#" class="link_gnb">뉴스</a></li>
					<li><a href="#" class="link_gnb">이벤트</a></li>
					<li><a href="#" class="link_gnb">만두몰</a></li>
					<li><a href="#" class="link_gnb">디시위키</a></li>
				</ul>

				<!-- 어제 게시글,댓글 등록 -->
				<div class="gall_exposure">
					<div class="posts">
						어제 <em class="num" id="total_content_count"></em> 게시글 등록
					</div>
					<div class="reply">
						어제 <em class="num" id="total_reple_count"></em> 댓글 등록
					</div>
				</div>
				<!-- /어제 게시글,댓글 등록 -->
			</nav>
		</div>
		<!-- //GNB -->
		<div class="wrap_inner">
			<main id="container" class="clear gallery_view">
			<section>
				<!-- 갤리명 타이틀바 ~ 이용안내 -->
				<header>
					<div class="page_head clear">
						<div class="fl clear">
							<h2>
								<a href="http://localhost:8090/free/board/listboard.do">호텔
									델루나 갤러리</a>
							</h2>


						</div>
						<div class="fr gall_issuebox">
							<button type="button" class="relate"
								onclick="open_relation(23436)">
								<span class="new" style="display: none;"><em
									class="blind">NEW</em><em class="sp_img icon_new"></em></span>연관
								갤러리(3/5) <span class="blind">연관 갤러리 열기</span><em
									class="sp_img icon_relate_more"></em>
							</button>
							<button type="button" class="adr_copy" onclick="copy_gall_url()">갤주소
								복사</button>
							<button type="button" class="block_setting"
								onclick="open_user_block()">차단설정</button>
							<button type="button" class="gall_useinfo"
								onclick="open_user_guide()">갤러리 이용안내</button>

							<button type="button" class="" onclick="gt_toggle_issue(this)">
								<span class="blind">더보기</span><em class="sp_img icon_listmore"></em>
							</button>
						</div>
					</div>
				</header>
				<article>
					<h2 class="blind">갤러리 이슈박스, 최근방문 갤러리</h2>
					<div class="issue_wrap">
						<div class="issuebox gallery_box">

							<!-- 연관갤러리 -->
							<div id="relation_popup" class="pop_wrap type3"
								style="left: 0; top: -2px; display: none">
								<div class="pop_content relation_wrap">
									<div class="pop_head">
										<h3>연관 갤러리</h3>
									</div>
									<!-- 현갤러리 -> 타 갤러리 -->
									<div class="following inner">
										<div class="pop_info">
											<b>호텔 델루나 갤러리 <em class="sp_img icon_right_arrow"></em> 타
												갤러리(<span class="count">0</span>)
											</b>
											<p>이 갤러리가 연관 갤러리로 추가한 갤러리</p>
										</div>

										<ul class="list_box clear"></ul>
										<div class="btn_box">
											<button type="button" class="btn_prev">
												<span class="blind">이전</span><em class="sp_img icon_prev"></em>
											</button>
											<div class="page_num">
												<strong class="now_num">0</strong>/<span class="total_num">0</span>
											</div>
											<button type="button" class="btn_next">
												<span class="blind">다음</span><em class="sp_img icon_next"></em>
											</button>
										</div>
									</div>
									<!-- //현갤러리 -> 타 갤러리 -->

									<div class="follower inner">
										<div class="pop_info">
											<b>타 갤러리 <em class="sp_img icon_right_arrow"></em> 호텔 델루나
												갤러리(<span class="count">0</span>)
											</b>
											<p>이 갤러리를 연관 갤러리로 추가한 갤러리</p>
										</div>

										<ul class="list_box clear"></ul>
										<div class="btn_box">
											<button type="button" class="btn_prev">
												<span class="blind">이전</span><em class="sp_img icon_prev"></em>
											</button>
											<div class="page_num">
												<strong class="now_num">0</strong>/<span class="total_num">0</span>
											</div>
											<button type="button" class="btn_next">
												<span class="blind">다음</span><em class="sp_img icon_next"></em>
											</button>
										</div>
									</div>
									<!-- //타 갤러리 -> 현갤러리 -->
								</div>
								<button type="button" class="poply_bgblueclose"
									onclick="open_relation();">
									<span class="blind">연관 갤러리 레이어 닫기</span><em
										class="sp_img icon_bgblueclose"></em>
								</button>
							</div>
							<!-- //연관갤러리 -->

							
						</div>
					</div>
				</article>
				<!-- 본문 -->
				<article>
					<h2 class="blind">갤러리 본문 영역</h2>
					<div class="view_content_wrap">
						<header>
							<div class="gallview_head clear ub-content">
								<!-- 모바일에서 작성 icon_write_mbl -->
								<h3 class="title ub-word">
									<span class="title_subject">${board.title }</span>
								</h3>
								<div class="gall_writer ub-writer" data-nick="ㅇㅇ" data-uid=""
									data-ip="58.122" data-loc="view">
									<div class="fl">
										<span class='nickname'><em>${board.nick }</em></span><span
											class="gall_date">${board.date }</span>
									</div>
									<div class="fr">
										<span class="gall_count">조회 ${board.inqu}</span> <span
											class="gall_reply_num">추천 ${board.reco}</span> <span
											class="gall_comment">댓글 ${board.repnum}</span>
									</div>
								</div>
							</div>
						</header>
						<div class="inner clear">
							<div class="writing_view_box">
							<div id="zzbang_div" style="display:none" >
								<span id='zzbang_ad'>
								<script type="text/javascript" src="https://addc.dcinside.com/NetInsight/text/dcinside/gallery/auto@tv"></script>
								</span>
							</div>
							<pre></pre>
							<div id='taboola-above-article-thumbnails'></div><br>
							<div style="overflow:hidden;">
								<p>${board.content }</p></div>
							</div>
						</div>
					</div>
					<!-- 댓글 -->
			<div id="jquery_jplayer"></div>
<div class="view_comment">
	<h2 class="blind">댓글 영역</h2>
	<div id="comment_wrap_115335" class="comment_wrap" data-article-lv="10" data-sort-type='I'>
		<div class="comment_count">
			<div class="fl num_box">
				전체 리플 <em class="font_red"><span id="comment_total_115335">0</span></em>개
				<div class="select_box array_latest">
					<select name="selCommentSort">
						<option value="D">등록순</option>
						<option value="N">최신순</option>
						<option value="R">답글수</option>
					</select>
					<div class="select_area" onClick="showLayer(this, 'commentSortLayer_115335');return false;"><span class="comment_sort_txt">등록순</span><span class="blind">정렬 기준선택</span><em class="sp_img icon_option_more"></em></div>
					<ul class="option_box" id="commentSortLayer_115335" data-no="115335" style="left:-1px;top:19px;display:none">
						<!--<li class="comment_sort" data-sort="I">등록순</li>-->
						<li class="comment_sort" data-sort="D">등록순</li>
						<li class="comment_sort" data-sort="N">최신순</li>
						<li class="comment_sort" data-sort="R">답글순</li>
					</ul>
				</div>
				<button type="button" class="btn_setreply" style="display: none"><span class="blind">답글 펼침 설정</span><em class="sp_img icon_setreply"></em></button>
			</div>
			<div class="fr">
				<button type="button" class="btn_cmt_close" data-no="115335" data-loc="TOP"><span>새로고침</span></button>
			</div>
		</div>
	</div>
	
	<!-- 답글 입력 -->
	<input type="hidden" id="recommend" value="K" />
	<div class="cmt_write_box clear">
	<div class="fl">
				<div class="user_info_input">
			<label for="user_nick" class="blind">닉네임</label>
			<input type="text" id="name_115335" name = "name" placeholder="닉네임" onfocus="this.style.background='#FFFFFF'" maxlength="20" value="">
		</div>
		<div class="user_info_input">
			<label for="user_pw" class="blind">비밀번호</label>
			<input type="password" id="password_115335" name = "password" placeholder="비밀번호" onfocus="this.style.background='#FFFFFF'" maxlength = "20">
		</div>
					</div>
	<div class="cmt_txt_cont">
		<div class="cmt_write">
			<label for="cmt_textarea" class="cmt_textarea_label" onclick="$('.cmt_textarea_label').hide();$(this).siblings('textarea').focus();" >
			타인의 권리를 침해하거나 명예를 훼손하는 댓글은 운영원칙 및 관련 법률에 제재를 받을 수 있습니다.<br>
			Shift+Enter 키를 동시에 누르면 줄바꿈이 됩니다.
			</label>
			<textarea id="memo_115335" onfocus="$('.cmt_textarea_label').hide();" maxlength="400" onKeyup="javascript:reply_length_count(115335);"></textarea>
		</div>
		<div class="cmt_cont_bottm clear">
			 <div class="dccon_guidebox">
				<button type="button" class="btn_white small tx_dccon" data-no = '115335'><em class="sp_img icon_dccon"></em>디시콘</button>
				<button type="button" class="btn_dccon_guide">
				<span class="blind">디시콘이란</span><em class="sp_img icon_guide_open"></em>
				</button>
			</div>
			<div class="fr">
				<button type="button" class="btn_blue btn_svc small repley_add" data-no = "115335">등록</button>
				<button type="button" class="btn_lightblue btn_svc small repley_add_vote" data-no = "115335">등록+추천</button>
			</div>
		</div>
	</div>
</div>
<!-- 답글쓰기 -->
<script id="addReplyForm-tmpl" type="text/x-jquery-tmpl">
<li id="reply_empty_${no}">
	<div class="cmt_write_box small clear" id="cmt_write_box" data-no="${no}">
		<div class="fl">
						<div class="user_info_input">
				<label for="name_${no}" class="blind">닉네임</label>
				<input type="text" id="name_${no}" placeholder="닉네임" value="">
			</div>
			<div class="user_info_input">
				<label for="password_${no}" class="blind">비밀번호</label>
				<input type="password" id="password_${no}" placeholder="비밀번호">
			</div>
						        </div>
		<div class="cmt_txt_cont">
			<div class="cmt_write">
				<textarea id="memo_${no}" maxlength="400" onclick="reply_length_count(${no})"></textarea>
			</div>
			<div class="cmt_cont_bottm clear">
				<div class="dccon_guidebox">
				<button type="button" class="btn_white small tx_dccon" r_idx="${no}"><em class="sp_img icon_dccon"></em>디시콘</button>
				<button type="button" class="btn_dccon_guide"><span class="blind">디시콘이란</span><em class="sp_img icon_guide_open"></em></button>
			</div>
            <div class="fr">
                <!--<button class="btn_grey small comment_cancel" r_no="${no}" r-type="reply_empty_">취소</button>-->
				<button class="btn_blue btn_svc small repley_add" r_idx = "${no}">등록</button>
		    </div>
        </div>
    </div>
</li>
</script>
<!-- //수정 -->
<script id="commentModify-tmpl" type="text/x-jquery-tmpl">
<li class="modify" id="modi_${re_no}" data-type="${cmt_type}" data-no="${re_no}">
    <div id="cmt_write_box" class="cmt_write_box ${small_class} clear">
	   <div class="fl">
	       <div class="user_info_input">
	           <label for="user_nick" class="blind">${name}</label>
               <input type="text" id="user_nick" value="${name}" placeholder="${name}" readonly>
	       </div>
        </div>
	    <div class="cmt_txt_cont">
            <div class="cmt_write">
                <textarea id="memo_${re_no}" maxlength="400" onclick="reply_length_count(${re_no})">${memo}</textarea>
	        </div>
	        <div class="cmt_cont_bottm clear">
		        <div class="fr">
                    <button type="button" class="btn_grey small comment_cancel" r_no="${re_no}" r-type="modi_">취소</button>
		            <button type="button" class="btn_blue small comment_update" r_no="${re_no}">수정</button>
		        </div>
            </div>
        </div>
    </div>
</li>
</script>
</div>

					<!-- 개념글, 수정, 삭제, 글쓰기 버튼 영역-->
<div class="view_bottom_btnbox clear">
	<div class="fl">
		<button type="button" class="btn_blue concept" onclick="goList('/board/lists/?id=hoteltvn')">전체글</button>
		<button type="button" class="btn_white concept" onclick="goList('/board/lists/?id=hoteltvn&exception_mode=recommend')">개념글</button>
	</div>
	<div class="fr">
		<button type="button" class="btn_grey modify" onclick="location='http://localhost:8090/free/board/changeboard.do?num=${board.num}&title=${'수정' }'">수정</button>
		<button type="button" class="btn_grey cancle" onclick="location='http://localhost:8090/free/board/changeboard.do?num=${board.num}&title=${'삭제' }'">삭제</button>
		<button type="button" class="btn_blue write" onclick="location='http://localhost:8090/free/board/newboard.do'">글쓰기</button>
	</div>
</div>
		
<div style="text-align: center">
<script async='async' src='https://www.googletagservices.com/tag/js/gpt.js'></script>
<script>
  var googletag = googletag || {};
  googletag.cmd = googletag.cmd || [];
</script>

<script>
  googletag.cmd.push(function() {
    googletag.defineSlot('/76378310/body_reply_97090', [970, 90], 'div-gpt-ad-1524718240649-0').addService(googletag.pubads());
    googletag.pubads().enableSingleRequest();
    googletag.enableServices();
  });
</script>

	</div>
				<!-- //개념글, 수정, 삭제, 글쓰기 버튼 영역-->
				</article>
				<!-- //본문 -->
		<!-- 하단 갤러리 리스트 -->
		</section>
		<article>
			<h2 class="blind">하단 갤러리 리스트 영역</h2>
			<!-- bottom_listwrap -->
			<div id="bottom_listwrap" class="listwrap clear">
				<!-- left_content -->
				<section  class="left_content">
					<h2 class="blind">왼쪽 컨텐츠 영역</h2>
					<article>
						<h2 class="blind">갤러리 리스트 영역</h2>
						<!-- 갤러리 리스트 -->
						<div class="gall_listwrap list">
							<!-- 게시판형 갤러리 리스트-->
							<table class="gall_list">
								<caption>갤러리 리스트</caption>
								<colgroup>
									<col style="width:6%">
									<col>
									<col style="width:18%">
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
											<td class="gall_num">${row.num}</td>
											<td class="gall_tit ub-word"><a
												href="http://localhost:8090/free/board/viewboard.do?num=${row.num }">${row.title }</a></td>
											<td class="gall_writer ub-writer"><span class='nickname'
												title='ㅇㅇ'><em>${row.nick }</em></span></td>
											<td class="gall_date">${row.date}</td>
											<td class="gall_count">${row.inqu }</td>
											<td class="gall_recommend">${row.reco}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
						<!-- //갤러리 리스트 -->
					</article>
				</section>
					</div>
				<!-- //left_content -->
			<!-- right_content -->
				
<script type="text/javascript" src="/_js/gallery_right.js?v=20190213"></script>

<!-- right_content -->
<section  class="right_content">
	<h2 class="blind">오른쪽 컨텐츠 영역</h2>
<div>
					  <!-- 로그인 정보 -->
  <div id="login_box" class="login_box">
	<div class="user_info" data-alarmId="">
	  <strong style="cursor:pointer">${user.nick }님 환영합니다.</strong> 
	</div>
	<div class="user_option">
		<span><a href="http://localhost:8090/free/board/preUpdateUser.do?id=${user.id }">회원 정보 수정</a></span>
		<span><a href="http://localhost:8090/free/board/myboard.do?nick=${user.nick}&id=${user.id}">갤로그</a></span>
		<span><a class="" href="javascript:;" onclick="alarmList($('.icon_noti', this), 'new')"><em class="sp_loginout icon_noti "></em>알림</a></span>
	</div>
	
	<!-- 즐겨찾기 리스트 레이어 팝업 -->
	<div id="my_favorite" class="pop_wrap type3" style="right:-1px;top:79px;display:none">
	  <div class="pop_content favorite_list">
		<div class="pop_head"><h3>갤러리 즐겨찾기</h3></div>
		<div class="inner">
		  <div class="pop_info">
			<p>즐겨찾는 갤러리 리스트입니다.</p>
			<p>갤러리명 클릭 시 해당 갤러리로 이동합니다.</p>
		  </div>
		  
		  <p class="empty_box" style="display:none">추가한 갤러리가 없습니다.</p>
		  <ul class="list_box"></ul>
		  <script id="favorite-tmpl" type="text/x-jquery-tmpl">
		  <li>
			<button type="button" class="btn_sfavorite" onclick="myFavoriteToggle(this);" data-id="${code_id}"><span class="blind">추가</span><em class="sp_img icon_sfavorite"></em></button>
			<a href="/board/lists?id=${code_id}">${name}</a>
		  </li>
		  </script>
			
		</div>
		<div class="btn_box">
		  <button type="button" class="btn_cancle" onclick="myFavorite();">취소</button>
		  <button type="button" class="btn_apply" onclick="myFavoriteDelete();">저장</button>
		</div>
	  </div>
	  <button type="button" class="poply_bgblueclose" onclick="myFavorite();"><span class="blind">즐겨찾기 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
	</div>
	<!-- //즐겨찾기 리스트 레이어 팝업 -->
	
		
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
</main>
</div>
</div>

	<!-- 하단 -->
	<footer class="dcfoot">

		<script type="text/javascript">
			$('footer.dcfoot').addClass('type1');
		</script>

		<div class="dc_all">
			<div class="all_box">
				<div class="all_list">
					<!-- 리스트 접기 클래스: close -->
					<dl>
						<dt>게임</dt>
						<dd>
							<a
								href="https://gall.dcinside.com/board/lists/?id=leagueoflegends2">리그
								오브 레전드</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=granblue">그랑블루
								판타지</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists?id=battlegrounds">배틀그라운드</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=bd">검은사막</a>
						</dd>
						<dd>
							<a
								href="https://gall.dcinside.com/board/lists/?id=d_fighter_new1">던전앤파이터</a>
						</dd>
					</dl>
					<dl>
						<dt>연예/방송</dt>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=blackpink">블랙핑크</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=lovelyz">러블리즈</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=kdani">강다니엘</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=bts">방탄소년단</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=twice">TWICE</a>
						</dd>
					</dl>
					<dl>
						<dt>스포츠</dt>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=baseball_new8">국내야구</a>
						</dd>
						<dd>
							<a
								href="https://gall.dcinside.com/board/lists/?id=hanwhaeagles_new">한화
								이글스</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=tigers_new">KIA
								타이거즈</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=giants_new2">롯데
								자이언츠</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=football_new6">해외축구</a>
						</dd>
					</dl>
					<dl>
						<dt>교육/금융/IT</dt>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=stock_new2">주식</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=bitcoins">비트코인</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=ancheolsu">안철수</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=baduk">바둑</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=divination">역학</a>
						</dd>
					</dl>
					<dl>
						<dt>여행/음식/생물</dt>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=dog">멍멍이</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=cat">야옹이</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=fish">물고기</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=alcohol">주류</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=food">기타음식</a>
						</dd>
					</dl>
					<dl>
						<dt>취미/생활</dt>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=ib_new">인터넷방송</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=theaterM">연극,
								뮤지컬 갤러리</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=fantasy_new">판타지</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=cartoon">카툰-연재</a>
						</dd>
						<dd>
							<a href="https://gall.dcinside.com/board/lists/?id=cartoon_s">카툰-단편</a>
						</dd>
					</dl>
				</div>
				<div class="all_bottom">
					<span class="bottom_menu"> <a class="menu_link" href="#top"><em
							class="sp_img icon_up"></em>맨위로</a>
					</span>
				</div>
			</div>
		</div>
		<div class="info_policy">
			<a href="https://www.dcinside.com/company">회사소개</a> <a
				href="https://www.dcinside.com/company#recruit">인재채용</a> <a
				href="https://www.dcinside.com/company#alliance">제휴안내</a> <a
				href="https://nstatic.dcinside.com/dc/dcad/w/index.html">광고안내</a> <a
				href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">이용약관</a>
			<a href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>개인정보처리방침</b></a>
			<a href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">청소년보호정책</a>


		</div>
		<div class="copyright">Copyright ⓒ 1999 - 2019 dcinside. All
			rights reserved</div>
	</footer>
</body>
</html>
