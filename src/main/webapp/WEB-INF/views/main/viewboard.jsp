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
<meta name="google-site-verification"
	content="8_SyZg2Wg3LNnCmFXzETp7ld4yjZB8ny17m8QsYsLwk">
<title>게시글</title>


<link rel="stylesheet" type="text/css"
	href="//nstatic.dcinside.com/dc/w/css/reset.css?v=1" />
<link rel="stylesheet" type="text/css"
	href="https://nstatic.dcinside.com/dc/w/css/common.css?v=1908231747" />
<link rel="stylesheet" type="text/css"
	href="https://nstatic.dcinside.com/dc/w/css/contents.css?190816" />


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
					<a href="https://www.dcinside.com/"> <img
						src="https://nstatic.dcinside.com/dc/w/images/dcin_logo.png"
						alt="디시인사이드">
					</a> <a href="https://gall.dcinside.com/"> <img
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
						<li><a
							href="http://localhost:8090/free/board/myboard.do?nick=${nick }">갤로그</a></li>
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
					<li><a class="hover_gnb link_gnb on"
						href="https://gall.dcinside.com">갤러리<em
							class="sp_img icon_depmore hover_gnb"></em></a> <span
						class="gnb_area"
						style="display: block; width: 77px; height: 12px; position: absolute; left: 0; bottom: 0;"></span>
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
					<li><a href="#" class="link_gnb">m.갤러리</a></li>
					<li><a
						href="http://localhost:8090/free/board/myboard.do?nick=${nick }"
						class="link_gnb">갤로그</a></li>
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

			<main id="container" class="clear gallery_view"> <!-- 갤리명 타이틀바 ~ 이용안내 -->

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
							<span class="new" style="display: none;"><em class="blind">NEW</em><em
								class="sp_img icon_new"></em></span>연관 갤러리(3/5) <span class="blind">연관
								갤러리 열기</span><em class="sp_img icon_relate_more"></em>
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
								<button type="button" class="btn_blueprev ">
									<span class="blind">이전</span><em class="sp_img icon_blueprev"></em>
								</button>
								<button type="button" class="btn_bluenext on">
									<span class="blind">다음</span><em class="sp_img icon_bluenext"></em>
								</button>
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

						<!-- 차단 간편 설정 (본문 내) -->
						<div id="user_block" class="pop_wrap type3"
							style="left: 50%; top: 140px; margin-left: -210px; display: none">
							<div class="pop_content block_setting_wrap">
								<div class="pop_head bg">
									<h3>차단하기</h3>
								</div>
								<div class="view_block_setting">
									<div class="pop_info">
										<p>차단설정을 통해 게시물을 걸러서 볼 수 있습니다.</p>
									</div>
									<h4 class="block_gallname">[호텔 델루나 갤러리]</h4>
									<div class="inner">
										<div class="set_cont">
											<label for="bword" class="cont_tit">차단 닉네임</label> <input
												type="text" id="bword" title="차단 닉네임 입력" class="intxt"
												value="ㅇㅇ">
											<button type="button" class="btn_enroll"
												onclick="ub_save_conf_one('hoteltvn','호텔 델루나','nick',$('#bword').val())">등록</button>
										</div>

										<div class="set_cont">
											<label for="bip" class="cont_tit">차단 IP</label> <input
												type="text" id="bip" title="차단 IP 입력" class="intxt"
												value="211.194">
											<button type="button" class="btn_enroll"
												onclick="ub_save_conf_one('hoteltvn','호텔 델루나','ip',$('#bip').val())">등록</button>
										</div>

									</div>
								</div>
							</div>
							<button type="button" class="poply_whiteclose"
								onclick="close_user_block()">
								<span class="blind">차단설정 레이어 닫기</span><em
									class="sp_img icon_whiteclose"></em>
							</button>
						</div>
						<!-- //차단 설정 -->
						<div class="banner_box"></div>

						<!-- 최근방문 갤러리 -->
						<div id="visit_history" class="visit_history">
							<h3 class="tit">최근 방문 갤러리</h3>
							<!-- bnt_visit_prev,bnt_visit_next 버튼 활성화시 클래스 on -->
							<button type="button" class="bnt_visit_prev">
								<span class="blind">이전</span><em class="sp_img icon_prev"></em>
							</button>

							<p class="empty_visit" style="display: none">최근 방문 갤러리가 없습니다.</p>
							<ul class="visit_list"></ul>
							<script id="lately_galls-tmpl" type="text/x-jquery-tmpl">
	<li><a href="//${link}" class="logClass" depth1="topframe" depth2="gall_lately" depth3="${id}">${name}</a><button type="button" class="btn_visit_del" data-id="${id}"><span class="blind">삭제</span><em class="icon_visit_del"></em></button></li>
	</script>

							<p class="empty_visit">최근 방문 갤러리가 없습니다.</p>

							<button type="button" class="bnt_visit_next">
								<span class="blind">다음</span><em class="sp_img icon_next"></em>
							</button>
						</div>

						<script type="text/javascript"
							src="/_js/lately_visit_gallery.js?v=20180917"></script>
						<script type="text/javascript">
							lately_gall_init('hoteltvn', '호텔 델루나', '');
						</script>
					</div>
				</div>
			</article>
	</main>
			<!-- 본문 -->
			<article>
				<div class="view_content_wrap">
					<c:forEach var="row" items="${view}">
						<header>
							<div class="gallview_head clear ub-content">
									<!-- 모바일에서 작성 icon_write_mbl -->
									<h3 class="title ub-word">
										<span class="title_subject">${row.title }</span><em
											class="blind">${row.appro }</em><em
											class="sp_img icon_write_mbl"></em>
									</h3>
									<div class="gall_writer ub-writer">
										<div class="fl">
											<span class='nickname'>${row.nick }</span><span
												class="gall_date">${row.date }</span>
										</div>
										<div class="fr">
											<span class="gall_count">조회 ${row.inqu }</span> <span
												class="gall_reply_num">추천 ${row.reco }</span> <span
												class="gall_comment">댓글 ${row. repnum}</span>
										</div>
									</div>
							</div>
						</header>
						<div class="gallview_contents">
							<div class="inner clear">
								<div class="writing_view_box">
									<div id="zzbang_div" style="display: none">
										<span id='zzbang_ad'><iframe
												src='https://nstatic.dcinside.com/ad/2017/passback/auto_336280.html'
												scrolling='no' frameborder='0' width='336' height='280'></iframe></span>
									</div>
									<pre></pre>
									<div id='taboola-above-article-thumbnails'></div>
									<br>
									<div style="overflow: hidden;">
										<div>
											${row.content }
										</div>
										<br>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<!-- 댓글 -->
				<div id="jquery_jplayer"></div>
				<div class="view_comment">
					<h2 class="blind">댓글 영역</h2>
					<div id="comment_wrap_107279" class="comment_wrap"
						data-article-lv="10" data-sort-type='I'>
						<div class="comment_count">
							<div class="fl num_box">
								전체 리플 <em class="font_red"><span id="comment_total_107279">0</span></em>개
								<div class="select_box array_latest">
									<select name="selCommentSort">
										<option value="D">등록순</option>
										<option value="N">최신순</option>
										<option value="R">답글수</option>
									</select>
									<div class="select_area"
										onClick="showLayer(this, 'commentSortLayer_107279');return false;">
										<span class="comment_sort_txt">등록순</span><span class="blind">정렬
											기준선택</span><em class="sp_img icon_option_more"></em>
									</div>
									<ul class="option_box" id="commentSortLayer_107279"
										data-no="107279" style="left: -1px; top: 19px; display: none">
										<!--<li class="comment_sort" data-sort="I">등록순</li>-->
										<li class="comment_sort" data-sort="D">등록순</li>
										<li class="comment_sort" data-sort="N">최신순</li>
										<li class="comment_sort" data-sort="R">답글순</li>
									</ul>
								</div>
								<button type="button" class="btn_setreply" style="display: none">
									<span class="blind">답글 펼침 설정</span><em
										class="sp_img icon_setreply"></em>
								</button>
							</div>
							<div class="fr">
								<button type="button" class="btn_cmt_close" data-no="107279"
									data-loc="TOP">
									<span>댓글닫기</span><em class="sp_img icon_cmt_more"></em>
								</button>
								<button type="button" class="btn_cmt_refresh" data-no="107279"
									data-sort="">새로고침</button>
							</div>
						</div>
					</div>

					<!-- 답글 입력 -->
					<input type="hidden" id="recommend" value="0" /> <input
						type="hidden" name="gallery_no" id="gallery_no" value="23436" />

					<input type="hidden" name="clickbutton" id="clickbutton" value="N" />

					<input type='hidden' name='check_6' id='check_6'
						value='a16d1caa0103b45bbaff5a51c75bf6f46746e06439f57691104bed071ae1f590069b796da41a50c1045f778d8438e5c41accc1dc2c85bc881a3704e816d329135b636f1f20cf0f99e00b0be81ab37f0646a5f36633068a004a8afc5d2eac' />
					<input type='hidden' name='check_7' id='check_7' value='7d' /> <input
						type='hidden' name='check_8' id='check_8' value='ae5837a50035' />
					<input type='hidden' name='check_9' id='check_9'
						value='7fec8168b48b6ce83fef8ffb478477' /> <input type="hidden"
						id="cur_t" name="cur_t" value="1567397171"> <input
						type="hidden" id="user_ip" name="user_ip" value="118.41.185.2">
					<input type="hidden" name="ehqo_C" id="ehqo_C" value="spam_key" />
					<input type="hidden" name="spam_key" id="spam_key"
						value="rhkdrhgkwlak!!" /> <input type="hidden"
						name="e08880180e28704304c464d3da623b728a376e656f65abcaf0f85edf56ca127d68481fd84561ed356e84549285920b"
						id="e08880180e28704304c464d3da623b728a376e656f65abcaf0f85edf56ca127d68481fd84561ed356e84549285920b"
						value="b9d2c24a5165311c4f89299fdc6134654cef8a63f3e58c5c11a1cc9abcf700dcfaa93cd844d581f7825e8e817826a4" />
					<input type='hidden' name="service_code"
						value="21ac6d96ad152e8f15a05b7350a2475909d19bcedeba9d4face8115e9bc2f94d5d913dbcdaa7f1c0bd051297b6903650056b29305ad0234abcbad7986c3a25f956ee82f68d9a8b3d1a9020fd3aaf42179f639a8ee26a776b6a2f6aa91bda642eb7d15e0f6139ce888fbe50b7475ee4097723e7984cef913e61bca73dd48f54fe69573522ffb9b2cda7eb588b34284167d4bb9b4f3ebd0a37546a91e75ec73f30766b9cd51372aca1ae28a70006afba5d66c3d52149e776f440ea25fe78183ac8b427c63b09ef54" />
					<div class="cmt_write_box clear">
						<div class="fl">
							<div class="user_info_input">
								<label for="user_nick" class="blind">닉네임</label> <input
									type="text" id="name_107279" name="name" placeholder="닉네임"
									onfocus="this.style.background='#FFFFFF'" maxlength="20"
									value="">
							</div>
							<div class="user_info_input">
								<label for="user_pw" class="blind">비밀번호</label> <input
									type="password" id="password_107279" name="password"
									placeholder="비밀번호" onfocus="this.style.background='#FFFFFF'"
									maxlength="20">
							</div>
						</div>
						<div class="cmt_txt_cont">
							<div class="cmt_write">
								<label for="cmt_textarea" class="cmt_textarea_label"
									onclick="$('.cmt_textarea_label').hide();$(this).siblings('textarea').focus();">
									타인의 권리를 침해하거나 명예를 훼손하는 댓글은 운영원칙 및 관련 법률에 제재를 받을 수 있습니다.<br>
									Shift+Enter 키를 동시에 누르면 줄바꿈이 됩니다.
								</label>
								<textarea id="memo_107279"
									onfocus="$('.cmt_textarea_label').hide();" maxlength="400"
									onKeyup="javascript:reply_length_count(107279);"></textarea>
							</div>
							<div class="cmt_cont_bottm clear">
								<div class="dccon_guidebox">
									<button type="button" class="btn_white small tx_dccon"
										data-no='107279'>
										<em class="sp_img icon_dccon"></em>디시콘
									</button>
									<button type="button" class="btn_dccon_guide">
										<span class="blind">디시콘이란</span><em
											class="sp_img icon_guide_open"></em>
									</button>
								</div>
								<div class="fr">
									<button type="button" class="btn_blue btn_svc small repley_add"
										data-no="107279">등록</button>
									<button type="button"
										class="btn_lightblue btn_svc small repley_add_vote"
										data-no="107279">등록+추천</button>
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
					<!-- 앨범형 댓글쓰기 -->
					<script id="albumCommentWriteForm-tmpl" type="text/x-jquery-tmpl">
<div class="cmt_write_box clear" id="cmt_write_box_${no}" data-no="${no}">
    <div class="fl">
				<div class="user_info_input">
            <label for="name_${no}" class="blind">닉네임</label>
            <input type="text" id="name_${no}" placeholder="닉네임">
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
				<button type="button" class="btn_white small tx_dccon" data-no="${no}"><em class="sp_img icon_dccon"></em>디시콘</button>
				<button type="button" class="btn_dccon_guide"><span class="blind">디시콘이란</span><em class="sp_img icon_guide_open"></em></button>
			</div>
            <div class="fr">
				<button class="btn_blue btn_svc small repley_add" data-no="${no}">등록</button>
                <button class="btn_lightblue btn_svc small repley_add_vote" data-no="${no}">등록+추천</button>
            </div>
		</div>
	</div>
</div>
</script>
					<!-- //앨범형 댓글쓰기 -->
					<script id="icon_guide-tmpl" type="text/x-jquery-tmpl">
<!-- 디시콘 이용안내 레이어팝업 -->
<div id="dccon_guide_lyr" class="pop_wrap type2" style="left:115px;top:0;">
	<div class="pop_content dccon_guide">
		<div class="pop_head dashed"><h3>디시콘 이용안내</h3></div>
		<ul class="guide_txtbox">
		<li>디시콘은 로그인/비로그인 전부 이용 가능합니다.</li>
		<li>비로그인 시 디시콘은 제공되는 기본 디시콘만 사용 가능합니다.</li>
		<li>로그인 후 디시콘샵에서 유료/무료 디시콘을 구매하여 사용 가능합니다.</li>
		<li>
			디시콘은 목록에서 최대 10개까지 노출 가능하며, 목록 순서는<br>
			[디시콘 관리]메뉴에서 자유롭게 변경하실 수 있습니다.<br>
			(단, ‘디시콘 관리’ 메뉴는 로그인 후 사용 가능합니다.)
		</li>
		<li>
			본인이 직접 디시콘을 제작/판매하여 사용하실 수 있습니다.
			<p><a href="https://mall.dcinside.com/?from=A08&url=https://dccon.dcinside.com/guide/regist_guide" class="font_red" target ="_blank">디시콘 제작 바로가기</a></p>
		</li>
		<li>
			디시콘 이미지 등록/판매/사용 시 저작권, 음란물, 초상권 및 기타 법적<br>
			사항에 위배되는 경우 관련 법령에 따라 처벌 될 수 있으며, 별도 통보 없이<br>
			판매중지/삭제 됩니다.
		</li>
		</ul>
	</div>
	<button type="button" class="under poply_close"><span class="blind"> 레이어 닫기</span><em class="sp_img icon_lyclose"></em></button>
</div>
<!--//디시콘 이용안내 레이어팝업 -->
</script>

				</div>

				<script id="reply-setting-tmpl" type="text/x-jquery-tmpl">
<div id="reply_setting_lyr" class="pop_wrap type3" style="left:-1px;top:38px;display:">
<div class="pop_content setting_reply">
  <div class="pop_head"><h3>답글기본펼침</h3></div>
  <div class="pop_info">
	<p>답글을 기본 펼침으로 볼 수 있습니다.</p>
  </div>
  <div class="inner">
	<div class="setting_option">
	  <p>현재 갤러리</p>
	  <div class="setting_onoff">
		<button type="button" id="reply_set_gall_data" class="btn_reply_set_onoff sp_img ${cur_on_off}" data-id="${gall_id}" data-set="${cur_on_off}"><span class="blind">${cur_on_off}</span></button>
	  </div>
	</div>
	<div class="setting_option">
	  <p>전체 갤러리</p>
	  <div class="setting_onoff">
		<button type="button" id="reply_set_all_data" class="btn_reply_set_onoff sp_img ${all_on_off}" data-id="all" data-set="${all_on_off}"><span class="blind">${all_on_off}</span></button>
	  </div>
	</div>
  </div>
  <div class="btn_box">
	<button type="button" class="btn_grey small btn_reply_setting_close">닫기</button>
	<button type="button" class="btn_blue small btn_reply_setting_save">저장</button>
  </div>
</div>
<button type="button" class="poply_bgblueclose btn_reply_setting_close"><span class="blind">알림 설정 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
</div>
</script>
				<script type="text/javascript">
					var _r = _d('Qgq5PM0Gdou4dgntdMUvPM=Hd4u4QMUDdTuFQgytQ+WFPM=EdTuwRyKK');
					$(document).data('t_vch2', '');
					$(document).data('gallery_id', 'hoteltvn');
					$(document).data('article_no', '107279');
					$(document).data('comment_id', 'hoteltvn');
					$(document).data('comment_no', '107279');
					viewComments(1, 'VIEW_PAGE');
				</script>
				<!-- 개념글, 수정, 삭제, 글쓰기 버튼 영역-->
				<div class="view_bottom_btnbox clear">
					<div class="fl">
						<button type="button" class="btn_blue concept"
							onclick="goList('/board/lists/?id=hoteltvn')">전체글</button>
						<button type="button" class="btn_white concept"
							onclick="goList('/board/lists/?id=hoteltvn&exception_mode=recommend')">개념글</button>
					</div>
					<div class="fr">
						<button type="button" class="btn_grey modify"
							onclick="goModify('https://gall.dcinside.com/board/modify/?id=hoteltvn&no=107279')">수정</button>
						<button type="button" class="btn_grey cancle"
							onclick="goDelete('https://gall.dcinside.com/board/delete/?id=hoteltvn&no=107279')">삭제</button>
						<button type="button" class="btn_blue write"
							onclick="goWrite('https://gall.dcinside.com/board/write/?id=hoteltvn')">글쓰기</button>
					</div>
				</div>
				<!-- //개념글, 수정, 삭제, 글쓰기 버튼 영역-->
			</article>
			<!-- //본문 --> <!-- 하단 갤러리 리스트 -->
			<article>
				<h2 class="blind">하단 갤러리 리스트 영역</h2>
				<!-- bottom_listwrap -->
				<div id="bottom_listwrap" class="listwrap clear">
					<!-- left_content -->
					<section class="left_content">
						<h2 class="blind">왼쪽 컨텐츠 영역</h2>
						<article>
							<h2 class="blind">갤러리 리스트 영역</h2>
							<!-- 갤러리 리스트 -->
							<div class="gall_listwrap list">
								<!-- 게시판형 갤러리 리스트-->
								<table class="gall_list">
									<caption>갤러리 리스트</caption>
									<colgroup>
										<col style="width: 6%">
										<col style="width: 30%">
										<col style="width: 11%">
										<col style="width: 6%">
										<col style="width: 6%">
										<col style="width: 6%">
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
												<td class="gall_writer ub-writer"><span
													class='nickname' title='ㅇㅇ'><em>${row.nick }</em></span></td>
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
				
					<!-- //left_content -->
					<!-- right_content -->

					<script type="text/javascript"
						src="/_js/gallery_right.js?v=20190213"></script>

					<!-- right_content -->
					<section class="right_content">
						<h2 class="blind">오른쪽 컨텐츠 영역</h2>
						<script type="text/javascript" src="/_js/gallery_right_login.js"></script>
						<script type="text/javascript" src="/_js/alarm_polling.js"></script>

						<div>
							<!-- 로그인 정보 -->
							<div id="login_box" class="login_box">
								<div class="user_info" data-alarmId="">
									<strong
										onclick="location='https://dcid.dcinside.com/join/login.php?s_url=https%3A%2F%2Fgall.dcinside.com%2Fboard%2Fview%2F%3Fid%3Dhoteltvn%26no%3D107279%26page%3D1&s_key=759'"
										style="cursor: pointer">로그인을 해 주시기 바랍니다.</strong>
								</div>
								<div class="user_option">
									<span><a href="javascript:;"
										onclick="alert('로그인이 필요합니다.')">갤로그<em
											class="sp_loginout icon_visit"></em></a></span> <span><a
										href="javascript:;" onclick="alert('로그인이 필요합니다.')">즐겨찾기<span
											class="blind">리스트 보기</span><em
											class="sp_loginout icon_favorites hide"></em></a></span> <span><a
										class="" href="javascript:;"
										onclick="alarmList($('.icon_noti', this), 'new')"><em
											class="sp_loginout icon_noti "></em>알림</a></span>
									<!-- 신규알림시 클래스 new -->
								</div>

								<!-- 즐겨찾기 리스트 레이어 팝업 -->
								<div id="my_favorite" class="pop_wrap type3"
									style="right: -1px; top: 79px; display: none">
									<div class="pop_content favorite_list">
										<div class="pop_head">
											<h3>갤러리 즐겨찾기</h3>
										</div>
										<div class="inner">
											<div class="pop_info">
												<p>즐겨찾는 갤러리 리스트입니다.</p>
												<p>갤러리명 클릭 시 해당 갤러리로 이동합니다.</p>
											</div>

											<p class="empty_box" style="display: none">추가한 갤러리가 없습니다.</p>
											<ul class="list_box"></ul>
											<script id="favorite-tmpl" type="text/x-jquery-tmpl">
		  <li>
			<button type="button" class="btn_sfavorite" onclick="myFavoriteToggle(this);" data-id="${code_id}"><span class="blind">추가</span><em class="sp_img icon_sfavorite"></em></button>
			<a href="/board/lists?id=${code_id}">${name}</a>
		  </li>
		  </script>

										</div>
										<div class="btn_box">
											<button type="button" class="btn_cancle"
												onclick="myFavorite();">취소</button>
											<button type="button" class="btn_apply"
												onclick="myFavoriteDelete();">저장</button>
										</div>
									</div>
									<button type="button" class="poply_bgblueclose"
										onclick="myFavorite();">
										<span class="blind">즐겨찾기 레이어 닫기</span><em
											class="sp_img icon_bgblueclose"></em>
									</button>
								</div>
								<!-- //즐겨찾기 리스트 레이어 팝업 -->


								<!-- 알림 설정 -->
								<div id="alarmConf" class="pop_wrap type3"
									style="right: -1px; top: 79px; z-index: 110; display: none;">
									<div class="pop_content notice_setting">
										<div class="pop_head">
											<h3>알림설정</h3>
										</div>
										<div class="inner">
											<div class="set_element_box">
												<p class="inner_txt">
													<span class="set_element">한줄알림</span>알림 팝업을 ON/OFF 합니다.
												</p>
												<div class="setting_onoff">
													<button type="button" class="sp_img on"
														onclick="alarmConfToggle(this);" data-id="popup">
														<span class="blind">on</span>
													</button>
												</div>
											</div>
											<div class="set_element_box">
												<p class="inner_txt">
													<span class="set_element">댓글알림</span>내 글에 댓글이 달린 경우 알려줍니다.
												</p>
												<div class="setting_onoff">
													<button type="button" class="sp_img on"
														onclick="alarmConfToggle(this);" data-id="reply">
														<span class="blind">on</span>
													</button>
												</div>
											</div>
											<div class="set_element_box">
												<p class="inner_txt">
													<span class="set_element">답글알림</span>내 댓글에 답글이 달린 경우 알려줍니다.
												</p>
												<div class="setting_onoff">
													<button type="button" class="sp_img on"
														onclick="alarmConfToggle(this);" data-id="reReply">
														<span class="blind">on</span>
													</button>
												</div>
											</div>
											<div class="set_element_box">
												<p class="inner_txt">
													<span class="set_element">힛갤알림</span>힛갤이 등록된 경우 알려줍니다.
												</p>
												<div class="setting_onoff">
													<button type="button" class="sp_img on"
														onclick="alarmConfToggle(this);" data-id="hit">
														<span class="blind">on</span>
													</button>
												</div>
											</div>
										</div>
										<div class="btn_box">
											<button type="button" class="btn_grey small"
												onclick="alarmConfClose();">닫기</button>
											<button type="button" class="btn_blue small"
												onclick="alarmConfUpdate();">저장</button>
										</div>
									</div>
									<button type="button" class="poply_bgblueclose"
										onclick="alarmConfClose();">
										<span class="blind">알림 설정 레이어 닫기</span><em
											class="sp_img icon_bgblueclose"></em>
									</button>
								</div>
								<!-- //알림 설정 -->

								<!-- 알림 -->
								<div id="alarmList" class="pop_wrap type3"
									style="right: -1px; top: 79px; display: none;">
									<div class="pop_content notice_listwrap">
										<div class="pop_head clear">
											<h3 class="fl">알림</h3>
											<div class="fr">
												<button type="button" class="btn_noti_alldel"
													onclick="remove_all_alarm()">전체삭제</button>
												<button type="button" class="btn_noti_setting"
													onclick="alarmConf()">설정</button>
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

										<p class="empty_box" style="display: none;">새로운 알림이 없습니다.</p>

									</div>
									<button type="button" class="poply_bgblueclose"
										onclick="alarmListClose()">
										<span class="blind">알림 리스트 레이어 닫기</span><em
											class="sp_img icon_bgblueclose"></em>
									</button>
								</div>
								<!-- //알림 -->
							</div>
							
						</div>
					</section>
				
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
												<a
													href="https://gall.dcinside.com/board/lists?id=battlegrounds">배틀그라운드</a>
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
												<a
													href="https://gall.dcinside.com/board/lists/?id=blackpink">블랙핑크</a>
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
												<a
													href="https://gall.dcinside.com/board/lists/?id=baseball_new8">국내야구</a>
											</dd>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=hanwhaeagles_new">한화
													이글스</a>
											</dd>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=tigers_new">KIA
													타이거즈</a>
											</dd>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=giants_new2">롯데
													자이언츠</a>
											</dd>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=football_new6">해외축구</a>
											</dd>
										</dl>
										<dl>
											<dt>교육/금융/IT</dt>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=stock_new2">주식</a>
											</dd>
											<dd>
												<a href="https://gall.dcinside.com/board/lists/?id=bitcoins">비트코인</a>
											</dd>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=ancheolsu">안철수</a>
											</dd>
											<dd>
												<a href="https://gall.dcinside.com/board/lists/?id=baduk">바둑</a>
											</dd>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=divination">역학</a>
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
												<a
													href="https://gall.dcinside.com/board/lists/?id=fantasy_new">판타지</a>
											</dd>
											<dd>
												<a href="https://gall.dcinside.com/board/lists/?id=cartoon">카툰-연재</a>
											</dd>
											<dd>
												<a
													href="https://gall.dcinside.com/board/lists/?id=cartoon_s">카툰-단편</a>
											</dd>
										</dl>
									</div>
									<div class="all_bottom">
										<span class="bottom_menu"> <a class="menu_link"
											href="#top"><em class="sp_img icon_up"></em>맨위로</a>
										</span>
									</div>
								</div>
							</div>
							<div class="info_policy">
								<a href="https://www.dcinside.com/company">회사소개</a> <a
									href="https://www.dcinside.com/company#recruit">인재채용</a> <a
									href="https://www.dcinside.com/company#alliance">제휴안내</a> <a
									href="https://nstatic.dcinside.com/dc/dcad/w/index.html">광고안내</a>
								<a
									href="https://nstatic.dcinside.com/dc/w/policy/policy_index.html">이용약관</a>
								<a
									href="https://nstatic.dcinside.com/dc/w/policy/privacy_index.html"><b>개인정보처리방침</b></a>
								<a
									href="https://nstatic.dcinside.com/dc/w/policy/youth_policy.html">청소년보호정책</a>


							</div>
							<div class="copyright">Copyright ⓒ 1999 - 2019 dcinside.
								All rights reserved</div>
						</footer>
						<!-- //하단 -->
				</div>
				</article>
				<div id="div_con" class="pop_wrap type3"
					style="left: 0; top: 38px; display: none">
					<div class="pop_content dcconlayer">
						<div class="blind">
							<h3>디시콘 리스트</h3>
						</div>
						<!-- dccon_list_wrap -->
						<div class="dccon_list_wrap clear">
							<!-- 디시콘 목록 -->
							<div class="inner">
								<div class="dccon_tab_btnbox fl clear">
									<button class="btn_dccon_prev">
										<span class="blind">이전</span><em
											class="sp_img icon_dccon_prev"></em>
									</button>
									<!-- tab_btnlist -->
									<ul class="tab_btnlist clear">
										<li class="recent_li">
											<button type="button" class="dccon_btn recent">
												<span class="blind">최근사용 디시콘</span><em
													class="sp_img icon_dccon_recent"></em>
											</button> <span class="frame"></span>
										</li>
				<script id="dccon_icon-tmpl" type="text/x-jquery-tmpl">
				<li class = "li_pack">
					<button type="button" class="dccon_btn no_btn" package_idx = "${package_idx}" title= "${title}">
					<img src="${main_img_url}" alt="${title}">
					</button>
					<span class="frame"></span>
				</li>
				</script>
									</ul>
									<!-- //tab_btnlist -->
									<button class="btn_dccon_next">
										<span class="blind">다음</span><em
											class="sp_img icon_dccon_next"></em>
									</button>
								</div>
								<div class="fr clear">
									<button type="button" class="btn_dccon_hot">
										<span class="blind">인기 디시콘</span><em
											class="sp_img icon_dccon_hot"></em>
									</button>
									<button type="button" class="btn_dccon_setting">
										<span class="blind">디시콘 관리</span><em
											class="sp_img icon_dccon_setting"></em>
									</button>
								</div>
							</div>
							<!-- //디시콘 목록 -->

							<!-- 디시콘 리스트 dccon_list_box -->
							<div class="dccon_list_box dcconlist" style="display: none;"></div>

							<script id="dccon_list-tmpl" type="text/x-jquery-tmpl">
		<ul class="dccon_list clear page_${page}_index_${index}" >
			{{each detail}}
			{{if ($index < list_page) }}
			<li class = "list_${parseInt($index / list_page) + 1} list_li" >
			{{else}}
			<li class = "list_${parseInt($index / list_page) + 1} list_li" style = "display:none;">
			{{/if}}
			<button type="button" class="img_dccon" detail_idx="${detail_idx}" package_idx="${package_idx}" title="${title}"><img src="${list_img}" alt="${title}"></button></li>
			{{/each}}
			<li>
				<div class="btn_box dccon_list_paging">
				<button type="button" class="btn_prev ${btn_prev_on}"><span class="blind">이전</span><em class="sp_img icon_prev"></em></button>
				<div class="page_num">
					<strong class="now_num">1</strong>/<span class="total_num">${detail_page}</span>
				</div>
				<button type="button" class="btn_next ${btn_next_on}"><span class="blind">다음</span><em class="sp_img icon_next"></em></button>
				</div>
			</li>
		</ul>
		</script>
							<script id="recent_list-tmpl" type="text/x-jquery-tmpl">
		<li><button type="button" class="img_dccon" detail_idx="${idx}" package_idx="${package_idx}" title="${title}"><img src="${list_img}" alt="${title}"></button></li>
		</script>
							<!-- //디시콘 리스트 dccon_list_box -->

							<!-- 인기 디시콘 -->
							<div class="dccon_list_box hot" style="display: none">
								<div class="box layer_dccon_info" style="display: block">
									<div class="hot_inner dw_hot">
										<div class="clear">
											<h4 class="pop_dccon_tit">디시콘</h4>
											<h4 class="pop_dccon_tit sch_txt" style="display: none;">
												디시콘 검색결과<span class="dccon_sch_num">(0)</span>
											</h4>
											<form id="f_sch_dccon">
												<div class="option_sort fr dccon">
													<div class="select_box select_arraybox">
														<div class="select_area">
															디시콘명<span class="blind">정렬 기준선택</span><em
																class="sp_img icon_option_more"></em>
														</div>
														<ul class="option_box"
															style="left: -1px; top: 23px; display: none">
															<!-- 옵션 펼침 display:block -->
															<li data-value="title">디시콘명</li>
															<li data-value="nick_name">닉네임</li>
															<li data-value="tags">태그</li>
														</ul>
													</div>
													<script>
														ul_selectric(
																$('#f_sch_dccon .select_arraybox'),
																'type', 'title');
													</script>
													<div class="dccon_search_wrap">
														<fieldset>
															<legend class="blind">디시콘 검색</legend>
															<div class="dccon_search_box ">
																<div class="dccon_search clear">
																	<div class="inner_search">
																		<input class="in_keyword" title="검색어 입력" type="text"
																			name="keyword" value="">
																	</div>
																	<button class="sp_img bnt_dccon_search" type="submit">
																		<span class="blind">검색</span>
																	</button>
																</div>
															</div>
														</fieldset>
													</div>
												</div>
											</form>
										</div>
										<div class="dw_hotcon">
											<div class="tabbox_btn red">
												<button type="button" class="btn_tab daily on">일간
													인기 디시콘</button>
												<button type="button" class="btn_tab weekly ">주간 인기
													디시콘</button>
											</div>
										</div>
									</div>
									<div class="hot_inner hots">
										<div class="clear">
											<h4 class="pop_dccon_tit">인기 디시콘</h4>
											<div class="hotcon_paging_btn">
												<button class="btn_hotcon_prev">
													<span class="blind">이전</span><em
														class="sp_img icon_hotcon_prev"></em>
												</button>
												<button class="btn_hotcon_next on">
													<span class="blind">다음</span><em
														class="sp_img icon_hotcon_next"></em>
												</button>
											</div>
										</div>
									</div>
									<script id="dccon_shop-tmpl" type="text/x-jquery-tmpl">
				{{each(i,item) list}}
				{{if parseInt(i % 5) == 0}}
				<ul class="dccon_shop_list clear ${addclass}" style="display:none;">
				{{/if}}
					<li>
					  <a class="link_product" href="javascript:;" target="_blank">
						<img class="thumb_img written_dccon" src="${main_img_url}" alt="${title}" width="100" height="100">
						<strong class="dcon_name">${title}</strong>
						<span class="dcon_seller">${nick_name}</span>
						<span class="dcon_cash">만두 ${price}개</span>
						<span class="dcon_frame red_brd div_package" reqpath="/dccon" data-type="wrLayer"></span>
					  </a>
					</li>
				{{if parseInt(i % 5) == 4}}
				</ul>
				{{/if}}
				{{/each}}
				</script>
									<div class="dccon_search_none" style="display: none;">
										<p class="txt">
											<span class="font_red">[<em></em>]
											</span>로 검색된 디시콘이 없습니다.
										</p>
									</div>
									<button class="btn_blue small"
										onclick="window.open('https://mall.dcinside.com/?from=A08&url=https%3A%2F%2Fdccon.dcinside.com')">디시콘
										더보기</button>
									<div class="bottom_paging_box" style="display: none;"></div>
								</div>
							</div>
							<!-- //인기 디시콘 -->

							<!-- 디시콘 보관함 사용 / 미사용 리스트-->
							<div class="dccon_list_box setting" style="display: none">
							</div>
							<!-- //디시콘 보관함 사용 / 미사용 리스트-->
						</div>
						<div class="loading_layertype"
							style="position: absolute; left: 50%; top: 50%; margin-top: -9.5px; margin-left: -19.5px; display: none;">
							<img src="https://nstatic.dcinside.com/dc/w/images/l_load_1.gif"
								alt="">
						</div>
						<!-- //dccon_list_wrap -->
					</div>
				</div>
				<!-- 디시콘 정보 레이어팝업	-->
				<div id="data_info"></div>
				<script id="dccon_detail-tmpl" type="text/x-jquery-tmpl">
<div class="pop_wrap type3" id = "package_detail" style="left: 109px;top:20px;">
 <div class="pop_content dccon_popinfo">
	 <div class="pop_head clear">
		<h3 >디시콘 정보</h3>
	</div>
	<div class="info_viewbox clear">
		<div class="info_viewimg">
		<img src="//dcimg5.dcinside.com/dccon.php?no=${info['main_img_path']}" alt="${info['title']}" width="140" height="140">
		</div>
		<div class="info_viewtxt">
		<div class="viewtxt_top clear">
			<h4 class="font_blue con_title">${info['title']}</h4>
			<span class="font_red">(금액: 만두 ${info['mandoo']}개)</span>
			{{if info['register']}}
			<span class="useday fr">남은 사용일: -일</span>
			{{else (info['residual']) }}
			<span class="useday fr">남은 사용일: ${info['residual']}일</span>	
			{{else}}
			<button type="button" class="btn_blue small btn_buy" reqpath="/dccon">구매하기</button>
			{{/if}}
		</div>
		<div class="viewtxt_cont">
			<p class="inner_txt">
			${info['description']}
			</p>
			<div class="inner_info">
			<span class="tbox">제작</span>
			<span class="seller_name">${info['seller_name']}</span>
			<span class="makeday">${info['reg_date_short']}</span>
			</div>
			<div class="inner_info">
			<span class="tbox">태그</span>
			<span class="seller_name">
			{{each(i,item) tags}}
			{{if i != 0}},{{/if}}
			${tag}
			{{/each}}
			</span>
			</div>
		</div>
		</div>
	</div>
	<!-- dccon_list_wrap -->
	<div class="dccon_list_wrap clear">
	 <!-- 디시콘 리스트 dccon_list_box -->
	<div class="dccon_list_box popinfo">
		<ul class="dccon_list clear">
		{{each detail}}
			<li><span class="img_dccon"><img src="//dcimg5.dcinside.com/dccon.php?no=${path}" alt="${title}" title ="${title}"></span></li>
		{{/each}}
		</ul>
	</div>
	<!-- //디시콘 리스트 dccon_list_box -->
	</div>
	<!-- //dccon_list_wrap -->
	<div class="dccon_infobox">
		<p>디시콘은 구매 후 1년 동안 사용 가능하며, 환불이 불가합니다.</p>
		<p>음란물을 디시콘으로 등록하는 경우 사이버수사대에 즉각 신고합니다.</p>
		<p>서비스 이용에 부적절하거나, 저작권에 위반된 저작물일 경우 별도 통보 없이 판매중지될 수 있습니다.</p>
	</div>
	</div>
 <button type="button" class="poply_bgblueclose package_close" ><span class="blind">디시콘 정보 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>

 <!-- 디시콘 구매하기 레이어팝업 -->
 <div class="pop_wrap type3" style="left:136px;top:197px;display:none" id ="package_buy">
	 <div class="pop_content dccon_buy">
	 <div class="pop_head"><h3>구매하기</h3></div>
	 <div class="buy_info_box">
		 <dl class="buy_info">
		 <dt class="tit">디시콘명</dt>
		 <dd class="cont"><b class="font_red title"></b></dd>
		 </dl>
		 <dl class="buy_info">
		 <dt class="tit">보유만두</dt>
		 <dd class="cont user_cash"></dd>
		 </dl>
		 <dl class="buy_info">
		 <dt class="tit">차감만두</dt>
		 <dd class="cont use_cash"></dd>
		 </dl>
		 <dl class="buy_info">
		 <dt class="tit"><label for="pw">비밀번호</label></dt>
		 <dd class="cont pw"><input type="password" class="intxt" id="password"></dd>
		 </dl>
	 </div>
	 <div class="btn_box">
		 <button type="button" class="btn_grey small cancel">취소</button>
		 <button type="button" class="btn_blue small payments">결제</button>
	 </div>
	 </div>
	 <button type="button" class="poply_bgblueclose"><span class="blind">알림 설정 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
 </div>
 <!-- //디시콘 구매하기 레이어팝업 -->

 <!-- 디시콘 신고하기 레이어팝업 -->
 <div class="pop_wrap type3" id = "package_singo" style="left:136px;top:197px;display:none">
	 <div class="pop_content dccon_report">
	 <div class="pop_head"><h3>신고하기</h3></div>
	 <div class="dcconpop_cont">
		 <textarea title="신고내용 입력" class="dccon_txtarea" placeholder="내용입력"></textarea>
		 <div class="fileup_box clear">
		 <input type="text" class="fileup_name" placeholder="jpg, zip파일 / 5M이하">
		 <div class="fileup_btn_box">
			 <label for="input_file" class="fileup_btn">파일첨부</label>
			 <input type="file" id="input_file" class="fileup_hidden">
		 </div>
		 </div>
	 </div>
	 <div class="btn_box">
		 <button type="button" class="btn_grey small">취소</button>
		 <button type="button" class="btn_blue small">등록</button>
	 </div>
	 </div>
	 <button type="button" class="poply_bgblueclose"><span class="blind">알림 설정 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
 </div>
 <!-- //디시콘 신고하기 레이어팝업 -->

 <!-- 디시콘 판매중지 신청 레이어팝업 -->
 <div class="pop_wrap type3" id ="package_stop_sale" style="left:136px;top:197px;display:none">
	 <div class="pop_content dccon_stop">
	 <div class="pop_head"><h3>판매중지 신청</h3></div>
	 <div class="dcconpop_cont">
		 <textarea title="판매중지 신청 사유 입력" class="dccon_txtarea" placeholder="내용입력" name ="memo" id ="memo"></textarea>
	 </div>
	 <div class="btn_box">
		 <button type="button" class="btn_grey small cancel">취소</button>
		 <button type="button" class="btn_blue small request">등록</button>
	 </div>
	 </div>
	 <button type="button" class="poply_bgblueclose cancel"><span class="blind">알림 설정 레이어 닫기</span><em class="sp_img icon_bgblueclose"></em></button>
 </div>
 <!-- //디시콘 판매중지 신청 레이어팝업 -->

</div>
</script>
				<!-- //디시콘 정보 레이어팝업 -->
				<!-- 한줄 알림 -->
				<script id="alarm-popup-tmpl" type="text/x-jquery-tmpl">
	<div class="alarmPopup pop_wrap type1 fixed" style="right:30px;bottom:30px;display:none">
	  <div class="pop_content one_noticewrap">
		<a href="${link}" class="one_notice_txt">
		  <span class="new"><em class="blind">NEW</em><em class="sp_img icon_new"></em></span>${prefix} ${content}
		</a>
		<button type="button" class="poply_close" onclick="$('.alarmPopup').remove()"><span class="blind">알림 레이어 닫기</span><em class="sp_img icon_blueclose"></em></button>
	  </div>
	</div>
  </script>
				<!-- //한줄 알림 -->

				<!-- Taboola -->
				<script type="text/javascript">
					window._taboola = window._taboola || [];
					_taboola.push({
						flush : true
					});
				</script>
				<!-- Taboola -->
		</div>
	</div>
		<!-- //180726 추가 wrap_inner-->
		<script src='//ad.about.co.kr/mad/html/dcinsidep/pop/pop'></script>
		<!-- 기본 애널리틱스 -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push([ '_setAccount', 'UA-5149721-11' ]);
			_gaq.push([ '_setDomainName', 'dcinside.com' ]);
			_gaq.push([ '_setAllowLinker', true ]);
			_gaq.push([ '_trackPageview' ]);

			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl'
						: 'http://www')
						+ '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();
		</script>
		<!-- //기본 애널리틱스 -->

		<!-- 추가 애널리틱스 -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push([ '_setAccount', 'UA-5149721-39' ]);
			_gaq.push([ '_setDomainName', 'dcinside.com' ]);
			_gaq.push([ '_setAllowLinker', true ]);
			_gaq.push([ '_trackPageview' ]);

			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl'
						: 'http://www')
						+ '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();
		</script>
		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');

			//마이너 갤러리 전체 + 승격갤
			ga('create', 'UA-10723182-10', 'auto', {
				'name' : 'mgall_raise',
				'sampleRate' : 2
			});
			ga('mgall_raise.require', 'displayfeatures');
			ga('mgall_raise.send', 'pageview');
		</script>
		<!--
	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-5149721-64']);
	  _gaq.push(['_setDomainName', 'dcinside.com']);
	  _gaq.push(['_setAllowLinker', true]);
	  _gaq.push(['_trackPageview']);

	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>

-->
		<!-- 추가 애널리틱스 -->



		<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
		<script type="text/javascript">
			if (!wcs_add)
				var wcs_add = {};
			wcs_add["wa"] = "f92eaecbc22aac";
			try {
				wcs_do();
			} catch (err) {
			}
		</script>
</body>
</html>
