<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script async="" charset="utf-8" src="./吴亮亮留言板_files/getConfig"></script>
<title>吴亮亮个人博客网站—一个站在web前端设计之路的男技术员个人博客网站</title>
<meta name="keywords" content="yangqq留言板">
<meta name="description" content="yangqq留言板">
<link href="${ pageContext.request.contextPath }/css/base.css"
	rel="stylesheet">
<link href="${ pageContext.request.contextPath }/css/book.css"
	rel="stylesheet">
<!--[if lt IE 9]>
<script src="/skin/2014/js/modernizr.js"></script>
<![endif]-->
<style>
#SOHUCS {
	clear: both
}

#SOHUCS #SOHU_MAIN * {
	box-sizing: content-box;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box
}

#SOHUCS, #SOHUCS #SOHU_MAIN {
	margin: 0;
	margin-left: auto;
	margin-right: auto;
	padding: 0;
	border: 0;
	font-weight: 400;
	text-align: left;
	width: 100%;
	height: auto;
	overflow: visible;
	font-size: 12px;
	color: #333;
	background-color: transparent;
	line-height: 1
}

#SOHUCS #SOHU_MAIN a, #SOHUCS #SOHU_MAIN abbr, #SOHUCS #SOHU_MAIN acronym,
	#SOHUCS #SOHU_MAIN address, #SOHUCS #SOHU_MAIN applet, #SOHUCS #SOHU_MAIN article,
	#SOHUCS #SOHU_MAIN aside, #SOHUCS #SOHU_MAIN audio, #SOHUCS #SOHU_MAIN b,
	#SOHUCS #SOHU_MAIN big, #SOHUCS #SOHU_MAIN blockquote, #SOHUCS #SOHU_MAIN canvas,
	#SOHUCS #SOHU_MAIN caption, #SOHUCS #SOHU_MAIN center, #SOHUCS #SOHU_MAIN cite,
	#SOHUCS #SOHU_MAIN code, #SOHUCS #SOHU_MAIN dd, #SOHUCS #SOHU_MAIN del,
	#SOHUCS #SOHU_MAIN details, #SOHUCS #SOHU_MAIN dfn, #SOHUCS #SOHU_MAIN dialog,
	#SOHUCS #SOHU_MAIN div, #SOHUCS #SOHU_MAIN dl, #SOHUCS #SOHU_MAIN dt,
	#SOHUCS #SOHU_MAIN em, #SOHUCS #SOHU_MAIN embed, #SOHUCS #SOHU_MAIN fieldset,
	#SOHUCS #SOHU_MAIN figcaption, #SOHUCS #SOHU_MAIN figure, #SOHUCS #SOHU_MAIN font,
	#SOHUCS #SOHU_MAIN footer, #SOHUCS #SOHU_MAIN form, #SOHUCS #SOHU_MAIN h1,
	#SOHUCS #SOHU_MAIN h2, #SOHUCS #SOHU_MAIN h3, #SOHUCS #SOHU_MAIN h4,
	#SOHUCS #SOHU_MAIN h5, #SOHUCS #SOHU_MAIN h6, #SOHUCS #SOHU_MAIN header,
	#SOHUCS #SOHU_MAIN hgroup, #SOHUCS #SOHU_MAIN hr, #SOHUCS #SOHU_MAIN i,
	#SOHUCS #SOHU_MAIN iframe, #SOHUCS #SOHU_MAIN img, #SOHUCS #SOHU_MAIN ins,
	#SOHUCS #SOHU_MAIN kbd, #SOHUCS #SOHU_MAIN label, #SOHUCS #SOHU_MAIN legend,
	#SOHUCS #SOHU_MAIN li, #SOHUCS #SOHU_MAIN mark, #SOHUCS #SOHU_MAIN menu,
	#SOHUCS #SOHU_MAIN meter, #SOHUCS #SOHU_MAIN nav, #SOHUCS #SOHU_MAIN object,
	#SOHUCS #SOHU_MAIN ol, #SOHUCS #SOHU_MAIN output, #SOHUCS #SOHU_MAIN p,
	#SOHUCS #SOHU_MAIN pre, #SOHUCS #SOHU_MAIN progress, #SOHUCS #SOHU_MAIN q,
	#SOHUCS #SOHU_MAIN rp, #SOHUCS #SOHU_MAIN rt, #SOHUCS #SOHU_MAIN ruby,
	#SOHUCS #SOHU_MAIN s, #SOHUCS #SOHU_MAIN samp, #SOHUCS #SOHU_MAIN section,
	#SOHUCS #SOHU_MAIN small, #SOHUCS #SOHU_MAIN span, #SOHUCS #SOHU_MAIN strike,
	#SOHUCS #SOHU_MAIN strong, #SOHUCS #SOHU_MAIN sub, #SOHUCS #SOHU_MAIN summary,
	#SOHUCS #SOHU_MAIN sup, #SOHUCS #SOHU_MAIN table, #SOHUCS #SOHU_MAIN tbody,
	#SOHUCS #SOHU_MAIN td, #SOHUCS #SOHU_MAIN tfoot, #SOHUCS #SOHU_MAIN th,
	#SOHUCS #SOHU_MAIN thead, #SOHUCS #SOHU_MAIN time, #SOHUCS #SOHU_MAIN tr,
	#SOHUCS #SOHU_MAIN tt, #SOHUCS #SOHU_MAIN u, #SOHUCS #SOHU_MAIN ul,
	#SOHUCS #SOHU_MAIN var, #SOHUCS #SOHU_MAIN video, #SOHUCS #SOHU_MAIN xmp
	{
	border: 0;
	margin: 0;
	padding: 0;
	font-size: 100%;
	text-align: left;
	vertical-align: baseline;
	background-image: none;
	background-position: 0 0;
	width: auto;
	float: none;
	overflow: visible;
	text-indent: 0
}

#SOHUCS #SOHU_MAIN article, #SOHUCS #SOHU_MAIN aside, #SOHUCS #SOHU_MAIN details,
	#SOHUCS #SOHU_MAIN figcaption, #SOHUCS #SOHU_MAIN figure, #SOHUCS #SOHU_MAIN footer,
	#SOHUCS #SOHU_MAIN header, #SOHUCS #SOHU_MAIN hgroup, #SOHUCS #SOHU_MAIN menu,
	#SOHUCS #SOHU_MAIN nav, #SOHUCS #SOHU_MAIN section {
	display: block
}

#SOHUCS #SOHU_MAIN b, #SOHUCS #SOHU_MAIN h1, #SOHUCS #SOHU_MAIN h2,
	#SOHUCS #SOHU_MAIN h3, #SOHUCS #SOHU_MAIN h4, #SOHUCS #SOHU_MAIN h5,
	#SOHUCS #SOHU_MAIN h6, #SOHUCS #SOHU_MAIN strong {
	font-weight: 400
}

#SOHUCS #SOHU_MAIN img {
	color: transparent;
	font-size: 0;
	vertical-align: middle;
	-ms-interpolation-mode: bicubic
}

#SOHUCS #SOHU_MAIN li, #SOHUCS #SOHU_MAIN ol, #SOHUCS #SOHU_MAIN ul {
	list-style: none
}

#SOHUCS #SOHU_MAIN li {
	display: list-item
}

#SOHUCS #SOHU_MAIN table {
	border-collapse: collapse;
	border-spacing: 0
}

#SOHUCS #SOHU_MAIN caption, #SOHUCS #SOHU_MAIN td, #SOHUCS #SOHU_MAIN th
	{
	font-weight: 400;
	vertical-align: top;
	text-align: left
}

#SOHUCS #SOHU_MAIN q {
	quotes: none
}

#SOHUCS #SOHU_MAIN q:after, #SOHUCS #SOHU_MAIN q:before {
	content: '';
	content: none
}

#SOHUCS #SOHU_MAIN small, #SOHUCS #SOHU_MAIN sub, #SOHUCS #SOHU_MAIN sup
	{
	font-size: 75%
}

#SOHUCS #SOHU_MAIN sub, #SOHUCS #SOHU_MAIN sup {
	line-height: 0;
	position: relative;
	vertical-align: baseline
}

#SOHUCS #SOHU_MAIN sub {
	bottom: -.25em
}

#SOHUCS #SOHU_MAIN sup {
	top: -.5em
}

#SOHUCS #SOHU_MAIN svg {
	overflow: hidden
}

#SOHUCS #SOHU_MAIN del, #SOHUCS #SOHU_MAIN ins, #SOHUCS #SOHU_MAIN s,
	#SOHUCS #SOHU_MAIN u {
	text-decoration: none
}

#SOHUCS #SOHU_MAIN p {
	word-wrap: break-word;
	break-word: break-all
}

#SOHUCS #SOHU_MAIN em, #SOHUCS #SOHU_MAIN i {
	font-style: normal
}

#SOHUCS #SOHU_MAIN a, #SOHUCS #SOHU_MAIN b, #SOHUCS #SOHU_MAIN em,
	#SOHUCS #SOHU_MAIN i, #SOHUCS #SOHU_MAIN img, #SOHUCS #SOHU_MAIN input,
	#SOHUCS #SOHU_MAIN label, #SOHUCS #SOHU_MAIN s, #SOHUCS #SOHU_MAIN span,
	#SOHUCS #SOHU_MAIN strong, #SOHUCS #SOHU_MAIN sub, #SOHUCS #SOHU_MAIN sup,
	#SOHUCS #SOHU_MAIN textarea, #SOHUCS #SOHU_MAIN u {
	display: inline
}

#SOHUCS #SOHU_MAIN input, #SOHUCS #SOHU_MAIN select, #SOHUCS #SOHU_MAIN select option,
	#SOHUCS #SOHU_MAIN textarea {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0
}

#SOHUCS #SOHU_MAIN a:focus, #SOHUCS #SOHU_MAIN input:focus, #SOHUCS #SOHU_MAIN textarea:focus
	{
	outline: 0
}

#SOHUCS #SOHU_MAIN button, #SOHUCS #SOHU_MAIN input, #SOHUCS #SOHU_MAIN select,
	#SOHUCS #SOHU_MAIN textarea {
	background-attachment: scroll
}

#SOHUCS #SOHU_MAIN li {
	clear: none
}

#SOHUCS #SOHU_MAIN a {
	color: #44708e;
	text-decoration: none
}

#SOHUCS #SOHU_MAIN a:hover {
	color: #ee542a;
	text-decoration: underline
}

#SOHUCS #SOHU_MAIN .clear-g {
	zoom: 1
}

#SOHUCS #SOHU_MAIN .clear-g:after {
	content: ".";
	display: block;
	visibility: hidden;
	height: 0;
	clear: both
}

#SOHUCS #SOHU_MAIN .global-clear-spacing {
	letter-spacing: -6px
}

#SOHUCS #SOHU_MAIN .global-clear-spacing * {
	letter-spacing: normal
}
</style>
<style type="text/css">
.module-cy-user-page * {
	box-sizing: content-box;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box
}

.module-cy-user-page {
	margin: 0;
	margin-left: auto;
	margin-right: auto;
	padding: 0;
	border: 0;
	font-weight: 400;
	text-align: left;
	width: 100%;
	height: auto;
	overflow: visible;
	font-size: 12px;
	color: #333;
	background-color: transparent;
	line-height: 1
}

.module-cy-user-page a, .module-cy-user-page abbr, .module-cy-user-page acronym,
	.module-cy-user-page address, .module-cy-user-page applet,
	.module-cy-user-page article, .module-cy-user-page aside,
	.module-cy-user-page audio, .module-cy-user-page b,
	.module-cy-user-page big, .module-cy-user-page blockquote,
	.module-cy-user-page canvas, .module-cy-user-page caption,
	.module-cy-user-page center, .module-cy-user-page cite,
	.module-cy-user-page code, .module-cy-user-page dd,
	.module-cy-user-page del, .module-cy-user-page details,
	.module-cy-user-page dfn, .module-cy-user-page dialog,
	.module-cy-user-page div, .module-cy-user-page dl, .module-cy-user-page dt,
	.module-cy-user-page em, .module-cy-user-page embed,
	.module-cy-user-page fieldset, .module-cy-user-page figcaption,
	.module-cy-user-page figure, .module-cy-user-page font,
	.module-cy-user-page footer, .module-cy-user-page form,
	.module-cy-user-page h1, .module-cy-user-page h2, .module-cy-user-page h3,
	.module-cy-user-page h4, .module-cy-user-page h5, .module-cy-user-page h6,
	.module-cy-user-page header, .module-cy-user-page hgroup,
	.module-cy-user-page hr, .module-cy-user-page i, .module-cy-user-page iframe,
	.module-cy-user-page img, .module-cy-user-page ins,
	.module-cy-user-page kbd, .module-cy-user-page label,
	.module-cy-user-page legend, .module-cy-user-page li,
	.module-cy-user-page mark, .module-cy-user-page menu,
	.module-cy-user-page meter, .module-cy-user-page nav,
	.module-cy-user-page object, .module-cy-user-page ol,
	.module-cy-user-page output, .module-cy-user-page p,
	.module-cy-user-page pre, .module-cy-user-page progress,
	.module-cy-user-page q, .module-cy-user-page rp, .module-cy-user-page rt,
	.module-cy-user-page ruby, .module-cy-user-page s, .module-cy-user-page samp,
	.module-cy-user-page section, .module-cy-user-page small,
	.module-cy-user-page span, .module-cy-user-page strike,
	.module-cy-user-page strong, .module-cy-user-page sub,
	.module-cy-user-page summary, .module-cy-user-page sup,
	.module-cy-user-page table, .module-cy-user-page tbody,
	.module-cy-user-page td, .module-cy-user-page tfoot,
	.module-cy-user-page th, .module-cy-user-page thead,
	.module-cy-user-page time, .module-cy-user-page tr,
	.module-cy-user-page tt, .module-cy-user-page u, .module-cy-user-page ul,
	.module-cy-user-page var, .module-cy-user-page video,
	.module-cy-user-page xmp {
	border: 0;
	margin: 0;
	padding: 0;
	font-size: 100%;
	text-align: left;
	vertical-align: baseline;
	background-image: none;
	background-position: 0 0;
	width: auto;
	float: none;
	overflow: visible;
	text-indent: 0
}

.module-cy-user-page article, .module-cy-user-page aside,
	.module-cy-user-page details, .module-cy-user-page figcaption,
	.module-cy-user-page figure, .module-cy-user-page footer,
	.module-cy-user-page header, .module-cy-user-page hgroup,
	.module-cy-user-page menu, .module-cy-user-page nav,
	.module-cy-user-page section {
	display: block
}

.module-cy-user-page b, .module-cy-user-page h1, .module-cy-user-page h2,
	.module-cy-user-page h3, .module-cy-user-page h4, .module-cy-user-page h5,
	.module-cy-user-page h6, .module-cy-user-page strong {
	font-weight: 400
}

.module-cy-user-page img {
	color: transparent;
	font-size: 0;
	vertical-align: middle;
	-ms-interpolation-mode: bicubic
}

.module-cy-user-page li, .module-cy-user-page ol, .module-cy-user-page ul
	{
	list-style: none
}

.module-cy-user-page li {
	display: list-item
}

.module-cy-user-page table {
	border-collapse: collapse;
	border-spacing: 0
}

.module-cy-user-page caption, .module-cy-user-page td,
	.module-cy-user-page th {
	font-weight: 400;
	vertical-align: top;
	text-align: left
}

.module-cy-user-page q {
	quotes: none
}

.module-cy-user-page q:after, .module-cy-user-page q:before {
	content: '';
	content: none
}

.module-cy-user-page small, .module-cy-user-page sub,
	.module-cy-user-page sup {
	font-size: 75%
}

.module-cy-user-page sub, .module-cy-user-page sup {
	line-height: 0;
	position: relative;
	vertical-align: baseline
}

.module-cy-user-page sub {
	bottom: -.25em
}

.module-cy-user-page sup {
	top: -.5em
}

.module-cy-user-page svg {
	overflow: hidden
}

.module-cy-user-page del, .module-cy-user-page ins, .module-cy-user-page s,
	.module-cy-user-page u {
	text-decoration: none
}

.module-cy-user-page p {
	word-wrap: break-word;
	break-word: break-all
}

.module-cy-user-page em, .module-cy-user-page i {
	font-style: normal
}

.module-cy-user-page a, .module-cy-user-page b, .module-cy-user-page em,
	.module-cy-user-page i, .module-cy-user-page img, .module-cy-user-page input,
	.module-cy-user-page label, .module-cy-user-page s,
	.module-cy-user-page span, .module-cy-user-page strong,
	.module-cy-user-page sub, .module-cy-user-page sup,
	.module-cy-user-page textarea, .module-cy-user-page u {
	display: inline
}

.module-cy-user-page input, .module-cy-user-page select,
	.module-cy-user-page select option, .module-cy-user-page textarea {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0
}

.module-cy-user-page a:focus, .module-cy-user-page input:focus,
	.module-cy-user-page textarea:focus {
	outline: 0
}

.module-cy-user-page button, .module-cy-user-page input,
	.module-cy-user-page select, .module-cy-user-page textarea {
	background-attachment: scroll
}

.module-cy-user-page li {
	clear: none
}

.module-cy-user-page a {
	color: #44708e;
	text-decoration: none
}

.module-cy-user-page a:hover {
	color: #ee542a;
	text-decoration: underline
}

.module-cy-user-page .clear-g {
	zoom: 1
}

.module-cy-user-page .clear-g:after {
	content: ".";
	display: block;
	visibility: hidden;
	height: 0;
	clear: both
}

.module-cy-user-page .global-clear-spacing {
	letter-spacing: -6px
}

.module-cy-user-page .global-clear-spacing * {
	letter-spacing: normal
}
</style>
<style type="text/css">
.changyan-overlay-lock {
	overflow: hidden !important;
	width: auto
}

.changyan-overlay-lock .changyan-overlay {
	overflow: auto;
	overflow-y: scroll
}

.changyan-overlay {
	position: absolute;
	top: 0;
	left: 0;
	overflow: hidden;
	z-index: 8010;
	background: #000;
	filter: alpha(opacity = 50);
	opacity: .5;
	width: auto;
	height: auto;
	display: block
}

.changyan-overlay-fixed {
	position: fixed;
	bottom: 0;
	right: 0
}

.changyan-overlay-outer {
	position: fixed;
	z-index: 8030;
	top: 0;
	left: 0;
	filter: alpha(opacity = 1);
	opacity: .01
}
</style>
<script type="text/javascript" charset="UTF-8"
	src="../吴亮亮留言板_files/icp-tips.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="../吴亮亮留言板_files/cy-skin.js"></script>
<style id="seaJs-css" type="text/css">
#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .cbox-prompt-w span.prompt-empty-w,
	#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-form-w .form-text-w span.text-null,
	#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-minwidth-w div.cont-comment-w a.comment-link-w,
	#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-minwidth-w div.cont-comment-w span.comment-text-w,
	#SOHUCS #SOHU_MAIN .module-cmt-footer .section-service-w div.service-wrap-w a:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w div.header-login,
	#SOHUCS #SOHU_MAIN .module-cmt-header .section-title-w .title-user-w .user-wrap-w span.wrap-name-w,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw span.click-disable-eg a em.icon-name-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .block-title-gw ul li div.title-name-gw,
	#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .cmt-list-number .comment-number span.cy-number,
	#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .cmt-list-number span.comment-number,
	#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .type-lists li.active,
	#SOHUCS #SOHU_MAIN .module-cmt-list .msg-wrap-gw .wrap-action-gw .action-click-gw span a:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw div.box-action-gw a:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a:hover em.icon-name-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw span.user-name-gw a {
	color: #e74851
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw div.wrapper-image-dw,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w div.post-wrap-main,
	#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-form-w div.form-text-w,
	#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w div.header-login,
	#SOHUCS #SOHU_MAIN .module-cmt-list .module-cmt-box .post-wrap-w div.post-wrap-main
	{
	border-color: #e74851
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w div.header-login-ie
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/photo-mask.png)
		!important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type div.cmt-list-border {
	background-color: #e74851
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-title-gw ul li .title-name-gw div.title-name-gw-tag
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/title-tag.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-hide-gw:hover i.area-icon-gw
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/pack-up-active.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-look-gw:hover i.area-icon-gw
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/look-img-active.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span.click-prop-gw .prop-span a
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/prop-ico.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a button.btn-fw
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/post-btn.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a button.btn-fw:hover
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/post-btn-hover.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .type-lists li.active
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/cmtlist-bg-active.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w div.post-wrap-border-r {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/border-r.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w div.post-wrap-border-l {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/border-l.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w div.post-wrap-border-t .post-wrap-border-t-l
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/border-t.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-border-t div.post-wrap-border-t-r
	{
	border-top: 1px solid #e74851
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w div.face-wrapper-dw
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/face-bg.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-minwidth-w .cont-comment-w a.comment-link-w .comment-link-num span.comment-link-numtext
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/cmt-num-bg2.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-minwidth-w .cont-comment-w a.comment-link-w span.comment-link-num
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/cmt-num-bg1.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-minwidth-w div.hidden-corner
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/cmt-box-bg1.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-form-w .form-text-w a.button-w,
	#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-form-w div.form-text-w .btn-load-bf
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/bt-changyan.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-float-bar .wrap-cont-w .cont-form-w .form-text-w a.button-w:hover
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/bt-changyan-hover.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw div.uploading-wrapper-dw-t
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/pic-bg-t.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw div.uploading-wrapper-dw-b
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/pic-bg-b.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w div.head-img-ie-mask
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/photo-mask.png)
}

#SOHUCS #SOHU_MAIN .isSubmit .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a button.btn-fw
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/loading.gif)
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-page-w div.cmt-more-wrap-gw:hover
	{
	background: #fef6f6 !important;
	color: #e74851 !important
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-page-w div.cmt-more-wrap-gw:hover .more-arrow-ico
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/arrow-hover.png)
		!important
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item {
	border: 1px solid #e74851 !important
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item .nt-logo {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/notice-logo.png)
		!important;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item a.nt-text,
	#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item a.nt-text i
	{
	color: #e74851 !important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw div.block-cont-hover-e
	{
	background-color: #fef6f6
}

#SOHUCS #SOHU_MAIN .module-cmt-list .msg-wrap-gw .wrap-action-gw .action-click-gw .cy-prop-win .cy-bean-unuseable:hover
	{
	color: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a i.icon-ding-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover i.icon-ding-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover i.icon-ding-bg
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/ding-active.png);
	background-position: center;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a i.icon-cai-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover i.icon-cai-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover i.icon-cai-bg
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/cai-active.png);
	background-position: center;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-face-w
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/face.png);
	background-position: center;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-face-w:hover
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/face-active.png);
	background-position: center;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-uploading-w .effect-w .uploading-b
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/image.png)
		!important;
	background-position: center;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-e .effect-w .uploading-b,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-uploading-w:hover .effect-w .uploading-b
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/image-active.png)
		!important;
	background-position: center;
	background-repeat: no-repeat
}

@media ( -webkit-min-device-pixel-ratio :1.5) , ( min--moz-device-pixel-ratio
		:1.5) , ( min-resolution :1.5dppx) , ( min-resolution :144dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a i.icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover i.icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover i.icon-ding-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/ding-active-1.5x.png);
		background-repeat: no-repeat;
		background-position: center;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a i.icon-cai-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover i.icon-cai-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover i.icon-cai-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/cai-active-1.5x.png);
		background-repeat: no-repeat;
		background-position: center;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-face-w
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/face-1.5x.png);
		background-repeat: no-repeat;
		background-position: center;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-face-w:hover
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/face-active-1.5x.png);
		background-repeat: no-repeat;
		background-position: center;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-uploading-w .effect-w .uploading-b
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/image-1.5x.png)
			!important;
		background-repeat: no-repeat;
		background-position: center;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-e .effect-w .uploading-b,
		#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-uploading-w:hover .effect-w .uploading-b
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/image-active-1.5x.png)
			!important;
		background-repeat: no-repeat;
		background-position: center;
		background-size: 100% 100%
	}
}

@media ( -webkit-min-device-pixel-ratio :2) , ( min--moz-device-pixel-ratio :2) ,
		( min-resolution :2dppx) , ( min-resolution :192dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a i.icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover i.icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover i.icon-ding-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/ding-active-2x.png);
		background-size: 100% 100%;
		background-position: center
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a i.icon-cai-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover i.icon-cai-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover i.icon-cai-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/cai-active-2x.png);
		background-size: 100% 100%;
		background-position: center
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-face-w
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/face-2x.png);
		background-size: 100% 100%;
		background-position: center
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-face-w:hover
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/face-active-2x.png);
		background-size: 100% 100%;
		background-position: center
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-uploading-w .effect-w .uploading-b
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/image-2x.png)
			!important;
		background-size: 100% 100%;
		background-position: center
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-e .effect-w .uploading-b,
		#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w div.action-function-w ul li.function-uploading-w:hover .effect-w .uploading-b
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/image-active-2x.png)
			!important;
		background-size: 100% 100%;
		background-position: center
	}
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn:hover {
	background-color: #f18a91 !important;
	box-shadow: 0 0 8px #f18a91 !important;
	color: #fff !important
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn {
	background-color: #fef8f8 !important;
	border: 1px solid #f18a91 !important;
	color: #e74851 !important
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/right-arrow.png)
		!important
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn:hover i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/right-arrow-hover.png)
		!important
}

#SOHUCS #SOHU_MAIN .cy-to-shequ-float {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/shequ-icon.png)
		!important
}

#SOHUCS #SOHU_MAIN .cy-board-enter, #SOHUCS #SOHU_MAIN .cy-to-shequ-head,
	#SOHUCS #SOHU_MAIN .module-cmt-list .cy-see-more {
	color: #e74851 !important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cy-see-more:hover {
	background-color: #f9e5e6 !important
}

#SOHUCS #SOHU_MAIN .cy-collection-btn.collected {
	border: 1px solid #e74851 !important;
	color: #e74851 !important
}

#SOHUCS #SOHU_MAIN .cy-collection-btn.collected i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/collected-star.png)
		!important
}

#SOHUCS #SOHU_MAIN .cy-collection-btn:hover {
	border: 1px solid #e74851 !important;
	color: #e74851 !important
}

#SOHUCS #SOHU_MAIN .cy-collection-btn:hover i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-skin/028/skin-red/images/collected-star.png)
		!important
}

#SOHUCS #SOHU_MAIN .cy-hidden {
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w {
	position: relative;
	width: 100%;
	height: 60px;
	z-index: 10
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w div.cy-skin
	{
	float: right
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .head-img-w
	{
	width: 42px;
	height: 42px;
	position: absolute;
	left: 9px;
	top: 22px;
	display: none;
	z-index: 11
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .head-img-w .cy-logout-btn
	{
	width: 42px;
	height: 42px;
	position: absolute;
	top: 0;
	left: 0;
	font-size: 14px;
	color: #4398ed;
	text-align: center;
	line-height: 42px;
	font-family: "Microsoft YaHei";
	display: none;
	cursor: pointer;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-header/076/images/logout-mask.png);
	background-repeat: no-repeat;
	background-position: center
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .head-img-w:hover .cy-logout-btn
	{
	display: block
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .head-img-ie-mask
	{
	width: 42px;
	height: 46px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-header/076/images/photo-mask.png);
	position: absolute;
	z-index: 2;
	top: 0;
	left: 0;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-login .head-img-w
	{
	display: block
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .head-img-w img
	{
	border-radius: 42px;
	display: block;
	width: 42px
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .header-login
	{
	width: 40px;
	height: 40px;
	border-radius: 42px;
	border: 1px solid #4398ed;
	position: absolute;
	top: 22px;
	left: 9px;
	font-size: 14px;
	color: #4398ed;
	text-align: center;
	line-height: 42px !important;
	font-family: "Microsoft YaHei";
	cursor: pointer;
	background: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .header-login-ie
	{
	width: 42px;
	height: 46px;
	border: 0;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-header/076/images/photo-mask.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-login .header-login
	{
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-title-w .title-user-w .user-wrap-w
	{
	position: absolute;
	top: 52px;
	left: 55px;
	text-indent: 11px;
	z-index: 10;
	padding-right: 10px
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-title-w .title-user-w .user-wrap-w-ie
	{
	background: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-title-w .title-user-w .user-wrap-w .wrap-name-w
	{
	font-size: 16px;
	color: #4398ed;
	font-family: "Microsoft YaHei";
	position: relative;
	z-index: 2;
	*text-indent: 11px
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-title-w {
	position: relative;
	z-index: 12
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .list-comment-empty-w .empty-prompt-w
	{
	margin-top: 20px;
	height: 30px;
	background: #f0f0f0;
	text-align: center;
	opacity: .5;
	filter: alpha(opacity = 50)
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .list-comment-empty-w .empty-prompt-w .prompt-null-w
	{
	line-height: 30px;
	font-size: 12px;
	color: #999;
	text-align: center
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .list-comment-kuaizhan-w .kuaizhan-prompt-w
	{
	cursor: pointer;
	display: none;
	margin-top: 20px;
	height: 30px;
	background: #f0f0f0;
	text-align: center;
	opacity: .5;
	filter: alpha(opacity = 50)
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .list-comment-kuaizhan-w .kuanzhan-prompt-w .prompt-text-w
	{
	line-height: 30px;
	font-size: 12px;
	color: #999;
	text-align: center
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .list-close-comment-w .close-comment-prompt-w
	{
	margin-top: 20px;
	height: 30px;
	text-align: center;
	background: #fdeced;
	opacity: .5;
	filter: alpha(opacity = 50)
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .list-close-comment-w .close-comment-prompt-w .close-comment-prompt
	{
	line-height: 30px;
	text-align: center;
	font-size: 12px;
	color: #e74851
}

#SOHUCS #SOHU_MAIN .cy-to-shequ-head {
	color: #4398ed;
	cursor: pointer;
	display: none;
	font-size: 14px;
	height: 36px;
	line-height: 36px;
	margin: 24px 10px 0 20px;
	float: right
}

#SOHUCS #SOHU_MAIN .cy-avatar-notice-node {
	background: #e74851;
	border-radius: 4px;
	box-shadow: 0 0 3px 3px #fff;
	cursor: pointer;
	display: none;
	height: 8px;
	position: absolute;
	right: 0;
	top: 0;
	width: 8px
}

#SOHUCS #SOHU_MAIN .cy-collection-btn {
	border: 1px solid #dfdfdf;
	border-radius: 24px;
	color: #666;
	cursor: pointer;
	display: none;
	font-size: 16px;
	height: 48px;
	line-height: 48px;
	margin: auto;
	text-align: center;
	width: 144px
}

#SOHUCS #SOHU_MAIN .cy-collection-btn i {
	display: inline-block;
	width: 14px;
	height: 14px;
	margin-right: 5px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-header/076/images/collect-star.png)
		no-repeat center;
	background-size: 100%
}

#SOHUCS #SOHU_MAIN .cy-collection-btn.collected {
	border: 1px solid #4398ed;
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .cy-collection-btn.collected i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-header/076/images/collected-star.png)
}

#SOHUCS #SOHU_MAIN .cy-collection-btn:hover {
	border: 1px solid #4398ed;
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .cy-collection-btn:hover i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-header/076/images/collected-star.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-header .cy-hot-words {
	position: absolute;
	right: 0;
	bottom: 5px
}

#SOHUCS #SOHU_MAIN .module-cmt-header .cy-hot-words-container {
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-header .cy-hot-words-container:after {
	clear: both;
	content: "";
	display: block;
	height: 0;
	visibility: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-header .cy-hot-words-tag {
	border: 1px solid #f44;
	border-radius: 2px;
	box-sizing: border-box;
	color: #f44;
	float: left;
	font-size: 12px;
	height: 16px;
	line-height: 14px;
	text-align: center;
	width: 28px
}

#SOHUCS #SOHU_MAIN .module-cmt-header .cy-hot-words-body {
	float: left;
	width: 250px;
	height: 16px;
	margin-left: 8px;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-header .cy-hot-words-body span {
	display: block;
	line-height: 16px;
	height: 16px;
	text-overflow: ellipsis;
	width: 100%;
	overflow: hidden;
	white-space: nowrap
}

#SOHUCS #SOHU_MAIN .module-cmt-header .cy-hot-words-body a {
	color: #333;
	font-size: 14px;
	letter-spacing: .5px;
	text-decoration: underline
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w {
	display: block;
	position: relative;
	zoom: 1;
	z-index: 2
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-border-l {
	width: 8px;
	height: 97px;
	position: absolute;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/border-l.png);
	top: 0;
	left: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-border-r {
	width: 8px;
	height: 97px;
	position: absolute;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/border-r.png);
	top: 0;
	right: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-border-t {
	height: 8px;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-border-t .post-wrap-border-t-l
	{
	width: 46px;
	height: 8px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/border-t.png);
	overflow: hidden;
	position: absolute;
	left: 0;
	top: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-border-t .post-wrap-border-t-r
	{
	height: 7px;
	border-top: 1px solid #4398ed;
	margin-left: 46px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .module-cmt-box .post-wrap-w .post-wrap-border-t
	{
	visibility: hidden;
	height: 7px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-main {
	margin: 0 8px;
	height: 96px;
	border-bottom: 1px solid #4398ed;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/cy-logo.png);
	background-repeat: no-repeat;
	background-position: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-main-focus {
	background-image: none !important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .module-cmt-box .post-wrap-w .post-wrap-main
	{
	border-top: 1px solid #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-main .wrap-area-w
	{
	padding: 13px 10px 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-main .wrap-area-w .textarea-fw
	{
	width: 100%;
	height: 70px;
	background: 0 0;
	overflow-x: hidden;
	overflow-y: auto;
	border: 0;
	font-size: 14px;
	color: #bfbfbf;
	resize: none;
	line-height: normal;
	text-align: left
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-main .area-textarea-e .textarea-fw
	{
	color: #333;
	background-color: transparent
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w {
	position: relative;
	z-index: 12
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w
	{
	margin: 15px 0 0 10px;
	position: relative;
	float: left
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li
	{
	width: 20px;
	height: 20px;
	float: left;
	margin-right: 21px;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face.png);
	background-repeat: no-repeat;
	background-position: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-active.png);
	background-repeat: no-repeat;
	background-position: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w .effect-w,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w .effect-w .uploading-b
	{
	display: block;
	width: 20px;
	height: 20px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w .effect-w .uploading-b
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/image.png);
	background-repeat: no-repeat;
	background-position: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-e .effect-w .uploading-b,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w:hover .effect-w .uploading-b
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/image-active.png);
	background-repeat: no-repeat;
	background-position: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw
	{
	top: 24px;
	left: -10px;
	display: none;
	width: 300px;
	height: 145px;
	position: absolute;
	z-index: 2;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-bg.png);
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw
	{
	width: 288px;
	height: 107px;
	margin-top: 6px;
	margin-left: 1px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul
	{
	border-top: 1px dashed #e5e5e5
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:first-child
	{
	border-top: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li
	{
	border-left: 1px dashed #e5e5e5;
	width: 35px;
	height: 35px;
	float: left;
	margin: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li:hover
	{
	background: #f2f2f2
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li:first-child
	{
	border-left: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:first-child li:first-child
	{
	border-top-left-radius: 8px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:first-child li:last-child
	{
	border-top-right-radius: 8px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:last-child li:first-child
	{
	border-bottom-left-radius: 8px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:last-child li:last-child
	{
	border-bottom-right-radius: 8px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li a
	{
	width: 35px;
	height: 24px;
	display: inline-block;
	text-align: center;
	overflow: hidden;
	padding: 8px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw
	{
	width: 296px;
	height: 105px;
	margin-top: 8px;
	display: none;
	overflow-y: auto;
	margin-left: 3px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw ul
	{
	margin-left: 1px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw ul li
	{
	background-position: center;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	border-radius: 5px;
	height: 47px;
	margin-right: 0;
	width: 47px;
	box-sizing: border-box;
	border-bottom: 1px dotted #e5e5e5;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw ul li.user-face-image.managing:after
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/del-btn.png);
	content: "";
	position: absolute;
	display: block;
	right: 0;
	width: 20px;
	height: 20px;
	background-position: center;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw ul li.user-face-image.managing:hover:after
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/del-btn-hover.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw ul .upload-face-btn
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/add.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw li.cancel-face-btn:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw li.manage-face-btn:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw li.upload-face-btn:hover
	{
	background-color: #f2f2f2
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw ul .manage-face-btn
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/manage-btn.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw ul .cancel-face-btn
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/cancel-manage-btn.png);
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .action-face-tab-dw
	{
	width: 298px;
	height: 30px;
	background: #f2f2f2;
	margin-left: 1px;
	border-bottom-left-radius: 9px;
	border-bottom-right-radius: 9px;
	border-top: 1px solid #e5e5e5
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .action-face-tab-dw ul li
	{
	height: 31px;
	width: 41px;
	float: left;
	margin-top: -1px;
	margin-right: 0;
	background-position: center;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .action-face-tab-dw ul li.active,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .action-face-tab-dw ul li:hover
	{
	background-color: #fff;
	border-left: 1px solid #e5e5e5;
	border-right: 1px solid #e5e5e5
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .action-face-tab-dw ul li.official-face-btn
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-ico-grey.png);
	margin-left: 10px;
	box-sizing: border-box
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .action-face-tab-dw ul li.user-face-btn
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/heart.png);
	box-sizing: border-box
}

#SOHUCS #SOHU_MAIN .module-cmt-box .cy-confirm-box {
	width: 298px;
	height: 137px;
	background: #fff;
	position: absolute;
	top: 6px;
	left: 1px;
	border-radius: 9px;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-box .cy-confirm-text {
	width: 100%;
	height: 40px;
	margin-top: 20px;
	text-align: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .cy-confirm-text span {
	line-height: 40px;
	font-size: 16px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .cy-confirm-btn-row {
	width: 100%;
	height: 28px;
	position: relative;
	margin-top: 15px;
	text-align: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .cy-confirm-btn-cancel {
	border: 1px solid #4398ed;
	border-radius: 6px;
	color: #4398ed;
	cursor: pointer;
	display: inline-block;
	height: 28px;
	line-height: 28px;
	text-align: center;
	width: 96px;
	margin-right: 16px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .cy-confirm-btn-confirm {
	background-color: #4398ed;
	border: 1px solid #4398ed;
	border-radius: 6px;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	height: 28px;
	line-height: 28px;
	text-align: center;
	width: 96px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw
	{
	top: 24px;
	position: absolute;
	left: -10px;
	display: none;
	width: 200px;
	padding-bottom: 8px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .uploading-wrapper-dw-t
	{
	width: 200px;
	height: 14px;
	position: absolute;
	top: 0;
	left: 0;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/pic-bg-t.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .uploading-wrapper-dw-b
	{
	width: 200px;
	height: 8px;
	position: absolute;
	bottom: 0;
	left: 0;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/pic-bg-b.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-loading-dw
	{
	width: 198px;
	height: 198px;
	margin-top: 5px;
	padding: 1px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw
	{
	margin-top: 13px;
	border-left: 1px solid #4398ed;
	border-right: 1px solid #4398ed;
	background: #FFF
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-close-dw
	{
	height: 18px;
	width: 100%
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-close-dw a
	{
	float: right;
	width: 18px;
	height: 18px;
	overflow: hidden;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/b17.png)
		no-repeat;
	margin-right: 8px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-close-dw a:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/b18.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-pic-dw
	{
	padding: 7px 0 16px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-pic-dw img
	{
	display: block;
	margin: 0 auto;
	min-height: 60px;
	max-height: 150px;
	min-width: 60px;
	max-width: 150px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw
	{
	padding: 53px 0 50px;
	background-color: #fff;
	border: 2px solid #ccd4d9;
	border-top: 0;
	width: 190px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-word-dw
	{
	height: 22px;
	text-align: center;
	color: #999
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-word-dw .word-icon-dw
	{
	display: inline-block;
	width: 22px;
	height: 22px;
	margin: 0 5px 0 0;
	vertical-align: -6px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/loading.gif);
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-btn-dw
	{
	padding: 20px 0 0;
	height: 25px;
	text-align: center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-btn-dw a
	{
	display: inline-block;
	width: 65px;
	line-height: 16px;
	padding: 5px 0 4px;
	text-align: center;
	font-size: 12px;
	background-color: #699ec3;
	color: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-btn-dw a:hover
	{
	text-decoration: none;
	background-color: #5788aa
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w
	{
	float: right;
	height: 30px;
	margin-top: 10px;
	*width: 102px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w,
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a
	{
	text-decoration: none !important;
	display: block;
	float: right;
	*width: 102px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a .btn-fw
	{
	width: 102px;
	height: 30px;
	overflow: hidden;
	border: 0;
	padding: 0;
	margin: 0;
	cursor: pointer;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/post-btn.png);
	background-repeat: no-repeat;
	background-color: transparent
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a .btn-fw:hover
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/post-btn-hover.png)
}

#SOHUCS #SOHU_MAIN .isSubmit .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a .btn-fw
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/loading.gif)
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .cbox-prompt-w
	{
	float: right;
	height: 30px;
	line-height: 30px;
	margin-right: 20px;
	margin-top: 10px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .cbox-prompt-w .prompt-empty-w
	{
	color: #4398ed;
	font-size: 12px;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .post-wrap-main .wrap-area-w .textarea-fw
	{
	box-shadow: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li span
	{
	display: inline-block;
	width: 22px;
	height: 22px;
	margin: 8px 9px;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-map.png)
		no-repeat center
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_01 {
	background-position: -2px -2px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_02 {
	background-position: -2px -24px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_03 {
	background-position: -1px -49px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_04 {
	background-position: -2px -73px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_05 {
	background-position: -2px -97px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_06 {
	background-position: -2px -121px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_07 {
	background-position: -2px -145px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_08 {
	background-position: -2px -168px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_09 {
	background-position: -2px -192px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_10 {
	background-position: -2px -215px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_11 {
	background-position: -2px -238px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_12 {
	background-position: -2px -260px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_13 {
	background-position: -2px -284px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_14 {
	background-position: -2px -307px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_15 {
	background-position: -2px -331px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_16 {
	background-position: -2px -355px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_17 {
	background-position: -2px -378px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_18 {
	background-position: -2px -401px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_19 {
	background-position: -2px -425px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_20 {
	background-position: -2px -445px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_21 {
	background-position: -2px -465px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_22 {
	background-position: -2px -488px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_23 {
	background-position: -2px -511px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_24 {
	background-position: -2px -535px
}

@media ( -webkit-min-device-pixel-ratio :2) , ( min--moz-device-pixel-ratio :2) ,
		( min-resolution :2dppx) , ( min-resolution :192dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item {
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-map-2x.png)
			no-repeat center;
		background-size: 44px auto
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_01 {
		background-position: 0 -176px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_02 {
		background-position: -22px -66px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_03 {
		background-position: 0 -44px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_04 {
		background-position: -22px -154px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_05 {
		background-position: 0 -88px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_06 {
		background-position: -22px 0
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_07 {
		background-position: 0 -110px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_08 {
		background-position: 0 -66px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_09 {
		background-position: 0 0
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_10 {
		background-position: 0 -22px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_11 {
		background-position: -22px -44px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_12 {
		background-position: 0 -132px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_13 {
		background-position: -22px -88px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_14 {
		background-position: -22px -22px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_15 {
		background-position: 0 -154px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_16 {
		background-position: -22px -132px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_17 {
		background-position: -22px -110px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_18 {
		background-position: 0 -220px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_19 {
		background-position: 0 -198px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_20 {
		background-position: -22px -198px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_21 {
		background-position: -22px -220px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_22 {
		background-position: -22px -244px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_23 {
		background-position: 0 -132px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .face-item.face_24 {
		background-position: -22px -176px
	}
}

@media ( -webkit-min-device-pixel-ratio :1.5) , ( min--moz-device-pixel-ratio
		:1.5) , ( min-resolution :1.5dppx) , ( min-resolution :144dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-1.5x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w:hover
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-active-1.5x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w .effect-w .uploading-b
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/image-1.5x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-e .effect-w .uploading-b,
		#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w:hover .effect-w .uploading-b
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/image-active-1.5x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
}

@media ( -webkit-min-device-pixel-ratio :2) , ( min--moz-device-pixel-ratio :2) ,
		( min-resolution :2dppx) , ( min-resolution :192dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-2x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w:hover
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-active-2x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w .effect-w .uploading-b
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/image-2x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-e .effect-w .uploading-b,
		#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w:hover .effect-w .uploading-b
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/image-active-2x.png);
		background-repeat: no-repeat;
		background-size: 100% 100%
	}
}

.module-cy-user-page .module-cmt-box .post-wrap-w {
	display: block;
	position: relative;
	zoom: 1
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-border-l {
	width: 8px;
	height: 97px;
	position: absolute;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/border-l.png);
	top: 0;
	left: 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-border-r {
	width: 8px;
	height: 97px;
	position: absolute;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/border-r.png);
	top: 0;
	right: 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-border-t {
	position: relative
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-border-t .post-wrap-border-t-l
	{
	width: 46px;
	height: 8px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/border-t.png);
	overflow: hidden;
	position: absolute;
	left: 0;
	top: 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-border-t .post-wrap-border-t-r
	{
	height: 7px;
	border-top: 1px solid #4398ed;
	margin-left: 46px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-border-t {
	visibility: hidden;
	height: 7px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-main {
	margin: 0 8px;
	height: 96px;
	border-bottom: 1px solid #4398ed;
	border-top: 1px solid #4398ed;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/cy-logo.png);
	background-repeat: no-repeat;
	background-position: center
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-main-focus
	{
	background-image: none !important
}

.module-cy-user-page .module-cmt-list .module-cmt-box .post-wrap-w .post-wrap-main
	{
	border-top: 1px solid #4398ed
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-main .wrap-area-w
	{
	padding: 13px 10px 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-main .wrap-area-w .textarea-fw
	{
	width: 100%;
	height: 70px;
	background: 0 0;
	overflow-x: hidden;
	overflow-y: auto;
	border: 0;
	font-size: 14px;
	color: #bfbfbf;
	resize: none;
	line-height: normal;
	text-align: left
}

.module-cy-user-page .module-cmt-box .post-wrap-w .post-wrap-main .area-textarea-e .textarea-fw
	{
	color: #333;
	background-color: transparent
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w {
	position: relative;
	z-index: 12
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w
	{
	margin: 15px 0 0 10px;
	position: relative;
	float: left
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li
	{
	width: 20px;
	height: 20px;
	float: left;
	margin-right: 21px;
	cursor: pointer
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-ico.png)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-e,
	.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-face-w:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-ico-hover.png)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/pic-ico.png)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w ul li.function-uploading-w:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/pic-ico-hover.png)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw
	{
	top: 24px;
	left: -10px;
	display: none;
	width: 290px;
	height: 115px;
	position: absolute;
	z-index: 2;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/face-bg.png)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw
	{
	width: 288px;
	height: 108px;
	margin-top: 5px;
	padding: 1px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul
	{
	border-top: 1px dashed #e5e5e5
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:first-child
	{
	border-top: 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li
	{
	border-left: 1px dashed #e5e5e5;
	width: 35px;
	height: 35px;
	float: left;
	margin: 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li:hover
	{
	background: #f2f2f2
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li:first-child
	{
	border-left: 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:first-child li:first-child
	{
	border-top-left-radius: 8px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:first-child li:last-child
	{
	border-top-right-radius: 8px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:last-child li:first-child
	{
	border-bottom-left-radius: 8px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul:last-child li:last-child
	{
	border-bottom-right-radius: 8px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-cont-dw ul li a
	{
	width: 35px;
	height: 24px;
	display: inline-block;
	text-align: center;
	overflow: hidden;
	padding: 8px 0 0
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw
	{
	top: 24px;
	position: absolute;
	left: -10px;
	display: none;
	width: 200px;
	padding-bottom: 8px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .uploading-wrapper-dw-t
	{
	width: 200px;
	height: 14px;
	position: absolute;
	top: 0;
	left: 0;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/pic-bg-t.png)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .uploading-wrapper-dw-b
	{
	width: 200px;
	height: 8px;
	position: absolute;
	bottom: 0;
	left: 0;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/pic-bg-b.png)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-loading-dw
	{
	width: 198px;
	height: 198px;
	margin-top: 5px;
	padding: 1px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw
	{
	margin-top: 13px;
	border-left: 1px solid #4398ed;
	border-right: 1px solid #4398ed;
	background: #FFF
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-close-dw
	{
	height: 18px;
	width: 100%
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-close-dw a
	{
	float: right;
	width: 18px;
	height: 18px;
	overflow: hidden;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/b17.png)
		no-repeat;
	margin-right: 8px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-close-dw a:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/b18.png)
		no-repeat
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-pic-dw
	{
	padding: 7px 0 16px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-wrapper-dw .wrapper-image-dw .image-pic-dw img
	{
	display: block;
	margin: 0 auto;
	min-height: 60px;
	max-height: 150px;
	min-width: 60px;
	max-width: 150px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw
	{
	padding: 53px 0 50px;
	background-color: #fff;
	border: 2px solid #ccd4d9;
	border-top: 0;
	width: 190px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-word-dw
	{
	height: 22px;
	text-align: center;
	color: #999
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-word-dw .word-icon-dw
	{
	display: inline-block;
	width: 22px;
	height: 22px;
	margin: 0 5px 0 0;
	vertical-align: -6px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/loading.gif);
	background-repeat: no-repeat
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-btn-dw
	{
	padding: 20px 0 0;
	height: 25px;
	text-align: center
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-btn-dw a
	{
	display: inline-block;
	width: 65px;
	line-height: 16px;
	padding: 5px 0 4px;
	text-align: center;
	font-size: 12px;
	background-color: #699ec3;
	color: #fff
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .uploading-efw .wrapper-loading-dw .loading-btn-dw a:hover
	{
	text-decoration: none;
	background-color: #5788aa
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w
	{
	float: right;
	height: 30px;
	margin-top: 10px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w,
	.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a
	{
	text-decoration: none !important;
	display: block;
	float: right;
	*width: 102px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a .btn-fw
	{
	width: 102px;
	height: 30px;
	overflow: hidden;
	border: 0;
	padding: 0;
	margin: 0;
	cursor: pointer;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/post-btn.png);
	background-repeat: no-repeat;
	background-color: transparent
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a .btn-fw:hover
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/post-btn-hover.png)
}

.module-cy-user-page .isSubmit .post-wrap-w .wrap-action-w .action-issue-w .issue-btn-w a .btn-fw
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-box/054/images/loading.gif)
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .cbox-prompt-w
	{
	float: right;
	height: 30px;
	line-height: 30px;
	margin-right: 20px;
	margin-top: 10px
}

.module-cy-user-page .module-cmt-box .post-wrap-w .wrap-action-w .cbox-prompt-w .prompt-empty-w
	{
	color: #4398ed;
	font-size: 12px;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.nano
	{
	position: relative;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.nano>.nano-content
	{
	position: absolute;
	overflow: scroll;
	overflow-x: hidden;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 100%
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.nano>.nano-content:focus
	{
	outline: thin dotted
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.nano>.nano-content::-webkit-scrollbar
	{
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.has-scrollbar>.nano-content::-webkit-scrollbar
	{
	display: block
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.nano>.nano-pane
	{
	background: #fff;
	position: absolute;
	width: 4px;
	right: 0;
	top: 0;
	bottom: 0;
	visibility: hidden\9;
	opacity: .01;
	margin-right: 3px;
	margin-top: 2px;
	float: right;
	-webkit-transition: .2s;
	-moz-transition: .2s;
	-o-transition: .2s;
	transition: .2s;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.nano>.nano-pane>.nano-slider
	{
	background: #e5e5e5;
	position: relative;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px
}

#SOHUCS #SOHU_MAIN .module-cmt-box .post-wrap-w .wrap-action-w .action-function-w .face-wrapper-dw .wrapper-user-face-dw.nano:hover>.nano-pane,
	.nano-pane.active, .nano-pane.flashed {
	visibility: visible\9;
	opacity: .99
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type {
	line-height: 30px;
	height: 30px;
	position: relative;
	margin-top: 50px;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .type-lists .type-list
	{
	float: left;
	width: 66px;
	height: 29px;
	text-align: center;
	color: #4398ed;
	font-size: 16px;
	border-bottom: 1px solid #4398ed;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cmtlist-bg.png)
		no-repeat;
	background-position: top left;
	font-family: "Microsoft Yahei";
	line-height: 30px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .type-lists .active {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cmtlist-bg-active.png)
		no-repeat;
	position: relative;
	bottom: -1px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .cmt-list-border {
	position: relative;
	bottom: 1px;
	left: 66px;
	height: 1px;
	background-color: #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .cmt-list-number {
	position: absolute;
	right: 0;
	bottom: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .cmt-list-number .comment-number
	{
	color: #4398ed;
	font-size: 14px;
	font-family: "Microsoft YaHei"
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cmt-list-type .cmt-list-number .comment-number .cy-number
	{
	color: #4398ed;
	font-size: 20px;
	margin: 0 5px;
	font-family: Impact
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-title-gw {
	padding: 18px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-title-gw ul li {
	float: left;
	line-height: 18px;
	padding: 0 0 10px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-title-gw ul li .title-name-gw
	{
	font-size: 16px;
	font-family: "Microsoft YaHei";
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-title-gw ul li .title-name-gw .title-name-gw-tag
	{
	float: left;
	width: 5px;
	height: 18px;
	margin-right: 13px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/title-tag.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw {
	padding: 13px 0 11px;
	border-bottom: 1px dashed #e5e5e5
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-head-gw {
	float: left;
	position: relative;
	width: 42px;
	z-index: 1
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-head-gw .head-img-gw
	{
	padding: 7px 0 0;
	width: 42px;
	height: 42px;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-head-gw .head-img-gw .img-corner
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/img-corner.png)
		no-repeat;
	position: absolute;
	width: 42px;
	height: 42px;
	top: 7px;
	left: 0;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-head-gw .head-img-gw img
	{
	width: 42px;
	height: 42px;
	border-radius: 42px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .msg-wrap-gw {
	padding: 0 0 0 62px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .wrap-user-gw {
	height: 24px;
	line-height: 16px;
	padding: 1px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-address-gw,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-name-gw {
	display: inline-block;
	padding: 5px 7px 0 0;
	cursor: default
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-name-gw a {
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-address-gw {
	color: #dbdbdb
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-spread-gw,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-top-gw {
	float: right;
	padding: 4px 0 0 9px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-spread-gw i,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-top-gw i {
	display: block;
	width: 31px;
	height: 18px;
	overflow: hidden;
	line-height: 500px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-top-gw i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/b01.png);
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-spread-gw i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/b02.png);
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-time-gw {
	float: right;
	padding: 5px 0 0;
	font-family: Arial;
	color: silver
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-issue-gw {
	padding: 12px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cy-see-more {
	color: #666;
	cursor: pointer;
	display: none;
	height: 20px;
	line-height: 20px;
	position: relative;
	text-align: center;
	border-radius: 5px;
	width: 100%
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cy-see-more:hover {
	background-color: #ecf4fd
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cy-see-more span {
	font-size: 14px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .cy-see-more i {
	display: inline-block;
	width: 20px;
	height: 20px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/icon2.png);
	background-size: 100% 100%
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-issue-gw .issue-wrap-gw {
	line-height: 22px;
	font-size: 14px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-issue-gw .issue-wrap-gw .wrap-word-gw img
	{
	margin: 1px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-blocked-gw {
	padding: 12px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-blocked-gw .wrap-blocked-title
	{
	color: #8a8a8a;
	line-height: 20px;
	vertical-align: middle;
	font-size: 14px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-blocked-gw .wrap-blocked-icon
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/appeal-reject.png)
		no-repeat;
	width: 20px;
	height: 20px;
	vertical-align: middle;
	display: inline-block;
	margin-right: 10px;
	opacity: .8
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw {
	line-height: 16px;
	margin: 11px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-from-gw {
	float: left;
	line-height: 16px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-from-gw, #SOHUCS #SOHU_MAIN .module-cmt-list .action-from-gw a
	{
	color: #b8b8b8
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-from-gw a:hover {
	color: #EE542A;
	text-decoration: underline
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw {
	text-align: right
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a
	{
	color: #999;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a .icon-name-bg
	{
	color: #999
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a:hover .icon-name-bg
	{
	color: #ff4e00;
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a.reported:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a.reported:hover .icon-name-bg
	{
	color: #999;
	cursor: default
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a .icon-flag
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/flag.png);
	background-position: 0 0;
	margin-right: 4px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a:hover .icon-flag
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/flag-hover.png);
	background-position: 0 0;
	margin-right: 4px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span a.reported:hover .icon-flag
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/flag.png);
	background-position: 0 0;
	margin-right: 4px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .icon-gw
	{
	display: inline-block;
	width: 16px;
	height: 15px;
	overflow: hidden;
	vertical-align: -4px;
	*vertical-align: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .icon-name-bg
	{
	padding: 0 0 0 4px;
	font-family: Arial;
	*position: relative;
	*top: 3px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .click-cai-gw a,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .click-ding-gw a
	{
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a .icon-ding-bg {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/ding.png);
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover .icon-ding-bg
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/ding-active.png);
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a .icon-cai-bg {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai.png);
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover .icon-cai-bg
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-active.png);
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a .icon-ding-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover .icon-ding-bg
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/ding-active.png);
	background-position: 0 0;
	cursor: default
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a .icon-cai-bg,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover .icon-cai-bg
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-active.png);
	background-position: 0 0;
	cursor: default
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a em.icon-name-bg
	{
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover em.icon-name-bg
	{
	text-decoration: none;
	cursor: default
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .click-report-gw
	{
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw:hover .wrap-action-gw .action-click-gw .click-report-gw
	{
	display: inline
}

#SOHUCS #SOHU_MAIN .module-cmt-list .module-cmt-box {
	margin: 10px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .module-cmt-box .textarea-fw {
	height: 44px !important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .gap-gw
	{
	width: 1px;
	height: 11px;
	display: inline-block;
	overflow: hidden;
	margin: 0 9px -1px 9px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .gap-line-gw
	{
	background-color: #e5e5e5
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw {
	margin: 9px 0 6px;
	position: relative;
	z-index: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .build-floor-gw {
	padding: 4px 4px 6px;
	border: 1px solid #dee4e9;
	background-color: #fff;
	position: relative;
	z-index: 2
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .build-first-floor-gw
	{
	padding: 0 5px 7px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .build-msg-gw {
	padding: 8px 10px 0;
	position: relative;
	z-index: 1
}

#SOHUCS #SOHU_MAIN .module-cmt-list .build-msg-gw .user-floor-gw {
	font-size: 14px;
	font-family: Arial
}

#SOHUCS #SOHU_MAIN .module-cmt-list .build-msg-gw .wrap-action-gw {
	margin: 8px 0 0;
	visibility: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-list .build-msg-gw .wrap-action-gw-hover
	{
	visibility: visible
}

#SOHUCS #SOHU_MAIN .module-cmt-list .build-msg-gw .wrap-action-gw-hover span a
	{
	color: #ccc
}

#SOHUCS #SOHU_MAIN .module-cmt-list .build-middle-floor-dw .wrap-action-gw
	{
	margin: 3px 0 0;
	visibility: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-list .build-middle-floor-dw .wrap-action-gw-hover
	{
	visibility: visible
}

#SOHUCS #SOHU_MAIN .module-cmt-list .build-middle-floor-dw .wrap-action-gw-hover span a
	{
	color: #ccc
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .build-middle-floor-dw
	{
	padding: 8px 10px 10px;
	border: 1px solid #f6f6f6;
	border-top: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .bulid-middle-hide-floor-dw
	{
	padding: 5px;
	border: 1px solid #f6f6f6;
	border-top: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .bulid-middle-hide-floor-dw a
	{
	display: block;
	text-align: center;
	line-height: 16px;
	font-size: 12px;
	padding: 5px 0 4px;
	background-color: #e5e5e5;
	color: #b2b2b2
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .block-cont-hover-e {
	background-color: #f5fafe;
	border: 1px solid #e5e5e5
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-admin-gw {
	display: inline-block;
	height: 21px;
	padding: 0 0 0 24px;
	overflow: hidden;
	margin: 0 5px 0 -1px;
	vertical-align: -6px;
	cursor: pointer;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/p-lvAdmin.png);
	background-position: left 0;
	background-repeat: no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .user-admin-gw i {
	display: inline-block;
	height: 21px;
	line-height: 23px;
	padding: 0 5px 0 0;
	font-size: 12px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/p-lvAdminbg.png);
	background-position: right 0;
	background-repeat: no-repeat;
	color: #fff
}

@media ( -webkit-min-device-pixel-ratio :1.5) , ( min--moz-device-pixel-ratio
		:1.5) , ( min-resolution :1.5dppx) , ( min-resolution :144dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a .icon-ding-bg {
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/ding-1.5x.png);
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a .icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover .icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover .icon-ding-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/ding-active-1.5x.png);
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a .icon-cai-bg {
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-1.5x.png);
		background-position: 0 0;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover .icon-cai-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-active-1.5x.png);
		background-position: 0 0;
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a .icon-cai-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover .icon-cai-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-active-1.5x.png);
		background-position: 0 0;
		background-size: 100% 100%;
		cursor: default
	}
}

@media ( -webkit-min-device-pixel-ratio :2) , ( min--moz-device-pixel-ratio :2) ,
		( min-resolution :2dppx) , ( min-resolution :192dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a .icon-ding-bg {
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/ding-2x.png);
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a .icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover .icon-ding-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover .icon-ding-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/ding-active-2x.png);
		background-size: 100% 100%
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a .icon-cai-bg {
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-2x.png);
		background-size: 100% 100%;
		background-position: 0 0
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw a:hover .icon-cai-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-active-2x.png);
		background-size: 100% 100%;
		background-position: 0 0
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a .icon-cai-bg,
		#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .click-disable-eg a:hover .icon-cai-bg
		{
		background-image:
			url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/cai-active-2x.png);
		background-size: 100% 100%;
		background-position: 0 0;
		cursor: default
	}
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-show-bg {
	background-color: #f5f5f5
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw {
	margin: 13px 0 0;
	padding: 18px 20px 30px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw {
	line-height: 16px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li
	{
	float: left
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li .gap-gw
	{
	width: 1px;
	height: 11px;
	margin: 0 7px;
	vertical-align: -1px;
	display: inline-block;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-area-gw .area-icon-gw
	{
	display: inline-block;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-hide-gw .area-icon-gw
	{
	width: 12px;
	height: 12px;
	margin: 0 6px 0 0;
	vertical-align: -2px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/pack-up.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-hide-gw:hover .area-icon-gw
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/pack-up-active.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-look-gw .area-icon-gw
	{
	width: 12px;
	height: 12px;
	margin: 0 7px 0 0;
	vertical-align: -2px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/look-img.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-look-gw:hover .area-icon-gw
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/look-img-active.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-left-gw .area-icon-gw,
	#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-right-gw .area-icon-gw
	{
	width: 7px;
	height: 8px;
	margin: 0 7px 0 0;
	vertical-align: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-area-gw .area-image-gw
	{
	text-align: center;
	margin: 9px auto 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-area-gw .area-image-gw img
	{
	display: block;
	margin: 0 auto;
	max-width: 400px;
	max-height: 400px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-picture-hide-e .picture-box-gw
	{
	padding: 0;
	margin: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-picture-hide-e .picture-box-gw .box-area-gw .area-image-gw
	{
	margin: 9px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-picture-hide-e .picture-box-gw .box-area-gw .area-image-gw img
	{
	margin: 0;
	max-width: 150px;
	max-height: 150px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-picture-hide-e .picture-box-gw .box-action-gw
	{
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .wrap-picture-hide-e .picture-box-gw
	{
	margin: 10px 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .wrap-picture-hide-e .picture-box-gw .box-area-gw .area-image-gw
	{
	padding: 0;
	text-align: left;
	zoom: 1
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .wrap-picture-show-gw
	{
	padding: 0 0 4px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .picture-box-gw {
	margin: 13px 0 0;
	padding: 0 0 10px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw a {
	color: #999
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw a:hover
	{
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li .gap-bg
	{
	background-color: #d6d6d6
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-left-gw i.area-icon-gw
	{
	background-position: -175px -50px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .box-action-gw ul li.action-right-gw i.area-icon-gw
	{
	background-position: -175px -75px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-picture-hide-e .area-image-gw img
	{
	cursor:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/big.cur),
		auto !important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .area-image-e img {
	cursor:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/images/small.cur),
		auto !important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-build-gw .picture-box-gw,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-picture-hide-e .picture-box-gw
	{
	border: 0;
	background-color: transparent
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .cy-feed-tag {
	box-sizing: border-box;
	border: 1px solid #f44;
	border-radius: 2px;
	color: #f44;
	display: inline-block;
	font-size: 12px;
	height: 18px;
	line-height: 16px;
	text-align: center;
	width: 36px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .cy-feed-time {
	color: silver;
	float: right;
	font-size: 12px;
	padding-top: 5px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-word-gw.cy-feed-title {
	color: #333;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-list a.cy-feed-link:hover {
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .box-area-gw {
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-list .box-area-gw:after {
	clear: both;
	content: "";
	display: block;
	height: 0;
	visibility: hidden
}

#SOHUCS #SOHU_MAIN .module-cmt-list .box-area-gw .cy-feed-news-item {
	float: left;
	width: 33%;
	box-sizing: border-box;
	padding-left: 6px;
	max-height: 182px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-show-bg.cy-feed-bg {
	background: none !important
}

#SOHUCS #SOHU_MAIN .module-cmt-list .box-area-gw .cy-feed-news-item .cy-feed-news-link
	{
	display: block;
	color: #333
}

#SOHUCS #SOHU_MAIN .module-cmt-list .box-area-gw .cy-feed-news-item span
	{
	display: inline-block;
	width: 100%;
	font-size: 12px;
	line-height: 18px;
	max-height: 36px;
	overflow: hidden;
	margin-top: 6px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .box-area-gw .cy-feed-news-item img
	{
	width: 100%;
	max-height: 182px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw.cy-feed-picture-box .box-area-gw a
	{
	display: block;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-from-gw.cy-feed-msg
	{
	float: right
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-from-gw.cy-feed-msg i
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-list/061/sohu-feed/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo2NDYwRDRGOUY1ODIxMUU2ODc1MEM4OTc0NTlBRTJGNiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo2NDYwRDRGQUY1ODIxMUU2ODc1MEM4OTc0NTlBRTJGNiI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjY0NjBENEY3RjU4MjExRTY4NzUwQzg5NzQ1OUFFMkY2IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjY0NjBENEY4RjU4MjExRTY4NzUwQzg5NzQ1OUFFMkY2Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8++2QOVgAAAKhJREFUeNpiXL16NQMlgAmIFwHxXyD+TyIG6VnIAiSigZgDiH+TaDkrEP9ggrriNxmuB+lhYmKgEFDdgKNAfBiNfxyJfxwqhtMARlJdwILGt0LjW6PxLWkeBmQZ8A+I2cnQywXSCzJgIRB/RUumICAJxJfxJOWPQDwHZEASNDAZkWJBBRpdS5DE0TEoKaez4HDeASBuBOLZpEYjiP8CiPOBeC0xAQEQYAB0zzBcbdqnVQAAAABJRU5ErkJggg==);
	display: inline-block;
	height: 16px;
	width: 16px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-from-gw.cy-feed-msg span
	{
	color: silver;
	display: inline-block;
	height: 16px;
	width: 16px;
	line-height: 16px;
	margin-left: 6px;
	vertical-align: top
}

#SOHUCS .cy-ad-float-container {
	position: fixed;
	bottom: 0;
	right: 0;
	z-index: 9999999
}

#SOHUCS .cy-ad-float-close {
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer;
	width: 65px;
	height: 17px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-av/025/image/close.png)
}

#SOHUCS .cy-ad-float-main {
	max-width: 300px;
	max-height: 250px;
	min-width: 250px;
	min-height: 250px;
	display: block;
	border: 0
}

#SOHUCS .cy-ad-banner-container {
	width: 100%;
	text-align: center
}

#SOHUCS .cy-ad-banner-close {
	width: 65px;
	height: 17px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-av/025/image/close.png);
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer
}

#SOHUCS .cy-ad-banner-main {
	width: 100%;
	max-width: 728px;
	max-height: 90px;
	display: block;
	border: 0
}

#SOHUCS #SOHU_MAIN .cy-ad-skin-container {
	width: 390px;
	height: 40px;
	display: block;
	border: 0;
	float: right;
	position: absolute;
	right: 5px;
	bottom: 0;
	z-index: 0
}

#SOHUCS #SOHU_MAIN .cy-ad-skin-main {
	width: 100%;
	height: 100%
}

#SOHUCS #SOHU_MAIN .cy-ad-skin-bottom-container {
	width: 390px;
	height: 40px;
	display: block;
	border: 0;
	float: right;
	position: absolute;
	right: 8px;
	bottom: 41px;
	z-index: -1
}

#SOHUCS #SOHU_MAIN .cy-ad-skin-bottom-main {
	width: 100%;
	height: 100%
}

#SOHUCS .cy-ad-banner-container a {
	margin: 0 auto;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	position: relative
}

#SOHUCS #SOHU_MAIN .cy-ad-feed-image {
	display: block;
	margin: auto;
	width: 100%
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .cy-feed-sign a {
	background: #9dceff;
	color: #fff;
	margin-left: 2px;
	border-radius: 3px;
	padding: 0 2px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-user-gw .cy-feed-sign a:hover
	{
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw.cy-feed-picture-box
	{
	padding: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw.cy-feed-picture-box .box-area-gw a
	{
	display: block;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-from-gw.cy-feed-show-detail
	{
	float: right
}

#SOHUCS #SOHU_MAIN .module-cmt-list .picture-box-gw .cy-ad-feed-close {
	width: 65px;
	height: 17px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-av/025/image/close.png);
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer
}

#SOHUCS .cy-banner-iframe {
	border: 0;
	margin: auto;
	display: block
}

#SOHUCS .cy-banner-iframe-wrapper {
	border: 0;
	margin: auto;
	display: block;
	position: relative
}

#SOHUCS .cy-iframe-close-btn {
	background: grey;
	cursor: pointer;
	color: #fff;
	height: 20px;
	line-height: 19px;
	position: absolute;
	padding-left: 3px;
	right: 0;
	text-align: center;
	top: 0;
	width: 63px;
	z-index: 1
}

#SOHUCS .cy-float-iframe-right {
	border: 0;
	margin: auto;
	display: block;
	right: 0;
	bottom: 0;
	position: fixed
}

#SOHUCS .cy-float-iframe-right-wrapper {
	border: 0;
	margin: auto;
	display: block;
	right: 0;
	bottom: 0;
	position: fixed;
	z-index: 2147483647
}

#SOHUCS .cy-float-iframe-left {
	border: 0;
	margin: auto;
	display: block;
	left: 0;
	bottom: 0;
	position: fixed
}

#SOHUCS .cy-float-iframe-left-wrapper {
	border: 0;
	margin: auto;
	display: block;
	left: 0;
	bottom: 0;
	position: fixed;
	z-index: 2147483647
}

#SOHUCS .cy-feed-iframe, #SOHUCS .cy-feed-iframe-wrapper {
	margin: auto
}

#SOHUCS .cy-feed-iframe-adaptive, #SOHUCS .cy-feed-iframe-adaptive-wrapper
	{
	width: 100%
}

#SOHUCS .cy-ad-pc-chain-container, #SOHUCS .cy-ad-pc-chain-wrapper ul.cy-ad-pc-chain-list
	{
	width: 100%;
	height: 120px
}

#SOHUCS .cy-ad-pc-chain-wrapper ul.cy-ad-pc-chain-list:after {
	clear: both;
	content: "";
	display: block;
	height: 0;
	visibility: hidden
}

#SOHUCS .cy-ad-pc-chain-wrapper li.cy-ad-pc-chain-list-item {
	font-size: 16px;
	float: left;
	height: 120px;
	line-height: 50px;
	width: 50%
}

#SOHUCS #SOHU_MAIN .module-cmt-footer {
	padding: 17px 0;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .list-more-comment-w {
	margin: 20px 0 0;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .list-more-comment-w .more-wrap-w
	{
	margin: -1px 0 0;
	background-color: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .list-more-comment-w .more-wrap-w a
	{
	display: block;
	text-align: center;
	line-height: 18px;
	font-size: 12px;
	padding: 7px 0 5px;
	zoom: 1;
	color: #4398ed;
	background-color: #f5f5f5
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .list-more-comment-w .more-wrap-w a:hover
	{
	color: #ee542a
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .list-more-comment-w .more-wrap-w a em.wrap-strong-w
	{
	font-family: Georgia;
	font-size: 18px;
	color: #ee542a
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .list-comment-close-w {
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .list-comment-close-w .close-wrap-w
	{
	display: block;
	text-align: center;
	line-height: 18px;
	font-size: 14px;
	padding: 12px 0 9px;
	zoom: 1;
	margin: -1px 0 0;
	border-top: 1px solid #dee4e9;
	background-color: #f5f5f5;
	color: #333
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-page-w {
	text-align: center;
	font-size: 0;
	padding-bottom: 10px
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-page-w .cmt-more-wrap-gw
	{
	text-align: center;
	font-size: 12px;
	height: 30px;
	line-height: 30px;
	color: #999;
	background: #f0f0f0;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-page-w .cmt-more-wrap-gw .more-arrow-ico
	{
	display: inline-block;
	width: 12px;
	height: 12px;
	vertical-align: -2px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-footer/048/image/arrow.png);
	margin-left: 6px
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-page-w .cmt-more-wrap-gw:hover
	{
	background: #d9eafb;
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-page-w .cmt-more-wrap-gw:hover .more-arrow-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-footer/048/image/arrow-hover.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-service-w .service-wrap-w
	{
	line-height: 16px
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-service-w, #SOHUCS #SOHU_MAIN .module-cmt-footer .section-service-w .service-wrap-w,
	#SOHUCS #SOHU_MAIN .module-cmt-footer .section-service-w .service-wrap-w a
	{
	display: block !important;
	text-align: right !important
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-service-w .service-wrap-w a
	{
	display: inline-block !important;
	color: #999
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .section-service-w .service-wrap-w a:hover
	{
	color: #4398ed
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn {
	background-color: #ecf4fd;
	border: 1px solid #a0cbf6;
	border-radius: 5px;
	box-sizing: border-box;
	color: #4398ed;
	cursor: pointer;
	display: none;
	font-size: 14px;
	height: 44px;
	line-height: 44px;
	margin-top: 20px;
	text-align: center;
	width: 100%
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn:hover {
	background-color: #97cafc;
	box-shadow: 0 0 8px #a0cbf6;
	color: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-footer/048/image/right-arrow.png);
	display: inline-block;
	height: 16px;
	margin-top: -1px;
	vertical-align: middle;
	width: 16px;
	margin-left: 5px
}

#SOHUCS #SOHU_MAIN .module-cmt-footer .cy-redirect-btn:hover i {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-footer/048/image/right-arrow-hover.png)
}

#SOHUCS #SOHU_MAIN .cy-to-shequ-float {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-footer/048/image/shequ-icon.png);
	bottom: 45px;
	cursor: pointer;
	display: none;
	height: 84px;
	position: fixed;
	right: 5px;
	width: 84px;
	z-index: 2147483647
}

#SOHUCS #SOHU_MAIN .module-hot-topic {
	width: 100%;
	padding: 20px 0 0
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider {
	width: 320px;
	position: relative;
	display: block;
	overflow: hidden;
	float: left
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .sliders {
	width: 400%;
	height: 180px;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .sliders .slider {
	width: 320px;
	height: 100%;
	float: left;
	position: relative;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .sliders .slider .opacity
	{
	width: 320px;
	height: 60px;
	position: absolute;
	left: 0;
	bottom: -30px
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .sliders .slider .opacity .foropicity
	{
	width: 320px;
	height: 60px;
	background: #000;
	opacity: .4;
	filter: alpha(opacity = 40)
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .sliders .slider .text-background
	{
	width: 310px;
	height: 60px;
	padding: 0 0 0 10px;
	position: absolute;
	left: 0;
	bottom: 0
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .sliders .slider .text-background .text
	{
	line-height: 30px;
	overflow: hidden;
	color: #fff;
	font-size: 14px;
	font-family: simsun;
	font-weight: 700;
	word-wrap: break-word;
	display: inline-block;
	*display: inline;
	*zoom: 1
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .sliders .slider img
	{
	width: 100%
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .images {
	margin: 5px 0 0 -8px;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .images .image {
	float: left;
	margin: 0 0 0 8px;
	cursor: pointer;
	position: relative;
	background: #000
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .images .image img {
	width: 74px;
	height: 45px;
	opacity: .7;
	filter: Alpha(opacity = 70)
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .images .image .shadow
	{
	width: 73.5px;
	height: 43px;
	border: 1px solid #f5987f;
	position: absolute;
	top: 0;
	left: 0;
	display: block
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .images .current img
	{
	opacity: 1;
	filter: alpha(opacity = 100)
}

#SOHUCS #SOHU_MAIN .module-hot-topic .images-slider .images .current shadow
	{
	display: block
}

#SOHUCS #SOHU_MAIN .module-hot-topic .step .next {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/hot-topic/021/image/p_bg03.png);
	right: 0
}

#SOHUCS #SOHU_MAIN .module-hot-topic .step .previous {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/hot-topic/021/image/p_bg02.png);
	left: 0
}

#SOHUCS #SOHU_MAIN .module-hot-topic .step .next, #SOHUCS #SOHU_MAIN .module-hot-topic .step .previous
	{
	width: 32px;
	height: 42px;
	position: absolute;
	display: none;
	cursor: pointer;
	top: 90px;
	margin-top: -21px
}

#SOHUCS #SOHU_MAIN .module-hot-topic .forStep:hover .next, #SOHUCS #SOHU_MAIN .module-hot-topic .forStep:hover .previous
	{
	display: block
}

#SOHUCS #SOHU_MAIN .module-hot-topic .topic {
	display: block;
	float: right;
	vertical-align: top;
	margin: 0 0 0 20px;
	width: 310px
}

#SOHUCS #SOHU_MAIN .module-hot-topic .topic .title {
	font-size: 16px;
	font-family: "microsoft yahei", simhei;
	line-height: 22px;
	color: #222
}

#SOHUCS #SOHU_MAIN .module-hot-topic .topic .topic-list {
	padding: 7px 0 0 36px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/hot-topic/021/image/p_bg01.png)
		no-repeat 0 18px
}

#SOHUCS #SOHU_MAIN .module-hot-topic .topic .topic-list li {
	height: 18px;
	line-height: 18px;
	padding: 8px 0 3px
}

#SOHUCS #SOHU_MAIN .module-hot-topic .topic .topic-list li a {
	color: #222;
	display: block;
	height: 18px;
	font-size: 14px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis
}

#SOHUCS #SOHU_MAIN .module-hot-topic .topic .topic-list li a:hover {
	color: #5788aa;
	text-decoration: underline
}

#SOHUCS #SOHU_MAIN .section-newslist-w .newslist-title-w {
	padding: 0 0 9px
}

#SOHUCS #SOHU_MAIN .section-newslist-w .title-name-w {
	line-height: 18px;
	height: 18px;
	font-family: "Microsoft YaHei";
	font-size: 16px;
	color: #333
}

#SOHUCS #SOHU_MAIN .section-newslist-w .conts-col {
	float: left
}

#SOHUCS #SOHU_MAIN .section-newslist-w .conts-col li {
	line-height: 16px;
	height: 16px;
	padding: 5px 0 5px 10px;
	font-size: 14px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/hot-topic/021/image/g-b01.gif);
	background-repeat: no-repeat;
	background-position: 0 10px
}

#SOHUCS #SOHU_MAIN .section-newslist-w .conts-col li a {
	color: #5788aa;
	position: relative;
	text-overflow: ellipsis
}

#SOHUCS #SOHU_MAIN .section-newslist-w .conts-col li a:hover {
	color: #ee542a;
	text-decoration: underline
}

#SOHUCS #SOHU_MAIN .section-newslist-w .conts-col li .hot {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/hot-topic/021/image/hot.gif);
	height: 12px;
	width: 21px;
	position: absolute;
	right: -24px;
	top: 1px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item, .module-cy-user-page .face-item
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/face/015/images/face-map.png)
		no-repeat center;
	display: inline-block;
	width: 22px;
	height: 22px;
	vertical-align: bottom
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_01,
	.module-cy-user-page .face-item.face_01 {
	background-position: -2px -2px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_02,
	.module-cy-user-page .face-item.face_02 {
	background-position: -2px -25px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_03,
	.module-cy-user-page .face-item.face_03 {
	background-position: -1px -49px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_04,
	.module-cy-user-page .face-item.face_04 {
	background-position: -2px -73px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_05,
	.module-cy-user-page .face-item.face_05 {
	background-position: -2px -97px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_06,
	.module-cy-user-page .face-item.face_06 {
	background-position: -2px -121px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_07,
	.module-cy-user-page .face-item.face_07 {
	background-position: -2px -145px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_08,
	.module-cy-user-page .face-item.face_08 {
	background-position: -2px -168px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_09,
	.module-cy-user-page .face-item.face_09 {
	background-position: -2px -192px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_10,
	.module-cy-user-page .face-item.face_10 {
	background-position: -2px -215px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_11,
	.module-cy-user-page .face-item.face_11 {
	background-position: -2px -238px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_12,
	.module-cy-user-page .face-item.face_12 {
	background-position: -2px -260px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_13,
	.module-cy-user-page .face-item.face_13 {
	background-position: -2px -284px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_14,
	.module-cy-user-page .face-item.face_14 {
	background-position: -2px -307px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_15,
	.module-cy-user-page .face-item.face_15 {
	background-position: -2px -331px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_16,
	.module-cy-user-page .face-item.face_16 {
	background-position: -2px -355px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_17,
	.module-cy-user-page .face-item.face_17 {
	background-position: -2px -378px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_18,
	.module-cy-user-page .face-item.face_18 {
	background-position: -2px -401px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_19,
	.module-cy-user-page .face-item.face_19 {
	background-position: -2px -425px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_20,
	.module-cy-user-page .face-item.face_20 {
	background-position: -2px -445px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_21,
	.module-cy-user-page .face-item.face_21 {
	background-position: -2px -465px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_22,
	.module-cy-user-page .face-item.face_22 {
	background-position: -2px -488px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_23,
	.module-cy-user-page .face-item.face_23 {
	background-position: -2px -511px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_24,
	.module-cy-user-page .face-item.face_24 {
	background-position: -2px -535px
}

@media ( -webkit-min-device-pixel-ratio :2) , ( min--moz-device-pixel-ratio :2) ,
		( min-resolution :2dppx) , ( min-resolution :192dpi) {
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item, .module-cy-user-page .face-item
		{
		background:
			url(https://changyan.itc.cn/mdevp/extensions/face/015/images/face-map-2x.png)
			no-repeat center;
		background-size: 44px auto
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_01,
		.module-cy-user-page .face-item.face_01 {
		background-position: 0 -176px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_02,
		.module-cy-user-page .face-item.face_02 {
		background-position: -22px -66px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_03,
		.module-cy-user-page .face-item.face_03 {
		background-position: 0 -44px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_04,
		.module-cy-user-page .face-item.face_04 {
		background-position: -22px -154px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_05,
		.module-cy-user-page .face-item.face_05 {
		background-position: 0 -88px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_06,
		.module-cy-user-page .face-item.face_06 {
		background-position: -22px 0
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_07,
		.module-cy-user-page .face-item.face_07 {
		background-position: 0 -110px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_08,
		.module-cy-user-page .face-item.face_08 {
		background-position: 0 -66px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_09,
		.module-cy-user-page .face-item.face_09 {
		background-position: 0 0
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_10,
		.module-cy-user-page .face-item.face_10 {
		background-position: 0 -22px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_11,
		.module-cy-user-page .face-item.face_11 {
		background-position: -22px -44px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_12,
		.module-cy-user-page .face-item.face_12 {
		background-position: 0 -132px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_13,
		.module-cy-user-page .face-item.face_13 {
		background-position: -22px -88px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_14,
		.module-cy-user-page .face-item.face_14 {
		background-position: -22px -22px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_15,
		.module-cy-user-page .face-item.face_15 {
		background-position: 0 -154px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_16,
		.module-cy-user-page .face-item.face_16 {
		background-position: -22px -132px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_17,
		.module-cy-user-page .face-item.face_17 {
		background-position: -22px -110px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_18,
		.module-cy-user-page .face-item.face_18 {
		background-position: 0 -220px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_19,
		.module-cy-user-page .face-item.face_19 {
		background-position: 0 -198px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_20,
		.module-cy-user-page .face-item.face_20 {
		background-position: -22px -198px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_21,
		.module-cy-user-page .face-item.face_21 {
		background-position: -22px -220px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_22,
		.module-cy-user-page .face-item.face_22 {
		background-position: -22px -244px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_23,
		.module-cy-user-page .face-item.face_23 {
		background-position: 0 -132px
	}
	#SOHUCS #SOHU_MAIN .module-cmt-list .face-item.face_24,
		.module-cy-user-page .face-item.face_24 {
		background-position: -22px -176px
	}
}

.module-cy-user-page {
	width: 710px;
	position: fixed;
	z-index: 2147483647;
	top: 0;
	zoom: 1;
	font-family: "Microsoft YaHei"
}

.module-cy-user-page:after {
	content: ".";
	display: block;
	visibility: hidden;
	height: 0;
	clear: both
}

.cy-mask {
	width: 100%;
	background: #000;
	opacity: .6;
	filter: alpha(opacity = 60);
	position: fixed;
	z-index: 2147483646;
	top: 0;
	left: 0
}

.module-cy-user-page * {
	color: #333
}

.module-cy-user-page .cy-user-page-close-btn {
	cursor: pointer;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/close-btn.png);
	width: 20px;
	height: 20px;
	float: left;
	margin-top: 15px
}

.module-cy-user-page .cy-user-page-return-btn {
	cursor: pointer;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/close-btn.png);
	width: 20px;
	height: 20px;
	float: left;
	margin-top: 15px;
	display: none
}

.module-cy-user-page .cy-user-page-tab {
	width: 43px;
	background: #111;
	height: 100%;
	float: right;
	position: relative
}

.module-cy-user-page .cy-tab-list {
	margin-top: 7px;
	overflow: hidden
}

.module-cy-user-page .cy-tab-list li {
	width: 100%;
	cursor: pointer;
	margin-top: 23px
}

.module-cy-user-page .cy-tab-list li .cy-tab-icon {
	width: 22px;
	height: 22px;
	margin: 0 auto;
	display: block
}

.module-cy-user-page .cy-tab-list li .cy-my-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/tab-list-icon1.png)
}

.module-cy-user-page .cy-tab-list li i {
	width: 100%;
	display: block;
	margin-top: 2px;
	font-size: 12px;
	color: #666;
	text-align: center;
	font-style: normal
}

.module-cy-user-page .cy-tab-list li.active .cy-my-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/tab-list-icon-active1.png)
}

.module-cy-user-page .cy-tab-list li.active i {
	color: #38a3fd
}

.module-cy-user-page .cy-tab-list li.info-li:hover .cy-my-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/tab-list-icon-active1.png)
}

.module-cy-user-page .cy-tab-list li.info-li:hover i {
	color: #38a3fd
}

.module-cy-user-page .cy-tab-list li .cy-return-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/tab-list-return.png)
}

.module-cy-user-page .cy-tab-list li.info-return-li:hover .cy-return-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/tab-list-return-active.png)
}

.module-cy-user-page .cy-tab-list li.info-return-li:hover i {
	color: #38a3fd
}

.module-cy-user-page .cy-user-page-tab .power-by-cy {
	width: 26px;
	height: 12px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/logo.png);
	position: absolute;
	bottom: 12px;
	left: 8px
}

.module-cy-user-page .cy-user-page-main {
	float: right;
	background: #FFF;
	width: 630px;
	height: 100%;
	position: relative
}

.module-cy-user-page .cy-user-page-main .loading-data {
	position: relative;
	height: 100%
}

.module-cy-user-page .cy-user-page-main .loading-pic {
	width: 90px;
	height: 90px;
	display: block;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-page/034/image/loading-01.gif);
	position: absolute;
	left: 50%;
	top: 50%;
	margin: -45px 0 0 -45px
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code {
	height: 100%;
	width: 100%;
	position: absolute;
	top: 0
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-mask
	{
	width: 100%;
	height: 100%;
	position: absolute;
	background: #000;
	opacity: .6;
	filter: alpha(opacity = 60);
	top: 0;
	left: 0;
	display: inline;
	z-index: 1000
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper
	{
	width: 300px;
	height: 375px;
	position: absolute;
	top: 36%;
	left: 50%;
	margin: -187.5px 0 0 -150px;
	background-color: #fff;
	border-radius: 10px;
	z-index: 1001
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-logo-wrapper
	{
	width: 100%;
	height: 38px;
	margin: 28px 0 0;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-logo-wrapper .qr-code-logo
	{
	width: 56px;
	height: 38px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/logo.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper
	{
	width: 100%;
	margin: 28px 0 0;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-first-support
	{
	margin: 44px 0 0
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-type-big
	{
	font-size: 18px;
	font-family: microsoft yahei;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-first-support .qr-code-type-big
	{
	margin: 6px 0 0
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-type-small
	{
	font-size: 12px;
	margin: 6px 0 0;
	font-family: microsoft yahei;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-first-support .qr-code-type-small
	{
	margin: 20px 0 0
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-img
	{
	width: 165px;
	height: 165px;
	margin: 10px 0 0
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-text
	{
	font-size: 14px;
	font-family: microsoft yahei;
	margin: 20px 0 0;
	text-align: center;
	color: #dedede
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-code-wrapper .qr-code-close
	{
	width: 12px;
	height: 12px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/close.png)
		no-repeat;
	cursor: pointer;
	position: absolute;
	right: 16px;
	top: 16px
}

.module-cy-user-page .module-cy-user-info .avatar-upload-btn {
	text-align: center;
	display: block;
	font-size: 12px;
	color: #bababa;
	text-decoration: underline;
	margin: 20px auto;
	cursor: pointer;
	width: 80px
}

.module-cy-user-page .module-cy-user-info .avatar-upload-wrapper {
	position: relative;
	display: none
}

.module-cy-user-page .module-cy-user-info .avatar-preview-text {
	font-size: 18px;
	margin-left: 30px
}

.module-cy-user-page .module-cy-user-info .avatar-preview {
	width: 165px;
	height: 165px;
	display: block;
	margin: 36px auto 12px
}

.module-cy-user-page .module-cy-user-info .avatar-upload-warning {
	color: #f44;
	font-size: 12px;
	text-align: center;
	position: absolute;
	display: none;
	margin: auto;
	left: 40px
}

.module-cy-user-page .module-cy-user-info .avatar-reload {
	display: block;
	text-decoration: underline;
	font-size: 14px;
	color: #4398ed;
	float: right;
	margin-right: 15px;
	margin-top: 30px;
	cursor: pointer;
	width: 60px;
	height: 32px;
	line-height: 32px
}

.module-cy-user-page .module-cy-user-info .avatar-upload-confirm {
	display: inline-block;
	*display: inline;
	width: 88px;
	height: 32px;
	color: #fff;
	background-color: #4398ed;
	float: right;
	text-align: center;
	line-height: 32px;
	margin-right: 28px;
	margin-top: 30px;
	border-radius: 5px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .avatar-finish-wrapper {
	display: none
}

.module-cy-user-page .module-cy-user-info .finish-icon {
	margin: 60px auto 40px;
	width: 48px;
	height: 48px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/finish.png)
}

.module-cy-user-page .module-cy-user-info .avatar-finish-text {
	line-height: 24px;
	font-size: 18px;
	margin-top: 5px;
	display: block;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .avatar-bind-text {
	color: #bababa;
	font-size: 14px;
	text-align: center;
	margin-top: 70px
}

.module-cy-user-page .module-cy-user-info .qr-code-no-phone {
	display: block;
	text-align: center;
	margin: 20px auto 0;
	font-size: 12px;
	color: #bababa;
	text-decoration: underline;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .qr-code-bind-wechat .qr-code-type-big-first
	{
	margin-top: 20px;
	margin-bottom: 10px
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .module-qrcode-result
	{
	width: 300px;
	height: 110px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -55px 0 0 -150px;
	background-color: #fff;
	border-radius: 10px;
	z-index: 1001
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper
	{
	width: 100%;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .cy-result-icon
	{
	width: 40px;
	height: 40px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	margin: 19px 0 0
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .result-icon-delete-ok
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/delete-ok.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .result-icon-appeal-submit
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/appeal-submit.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .result-icon-appeal-reject
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/appeal-reject.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .module-qrcode-result .cy-result-text
	{
	font-size: 16px;
	font-family: microsoft yahei;
	margin: 16px 0 0;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper
	{
	width: 410px;
	height: 445px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/first-weixin.png);
	position: absolute;
	top: 40%;
	left: 50%;
	margin: -222.5px 0 0 -175px;
	z-index: 1001
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper
	{
	background: 0 0;
	margin: -188.5px 0 0 -182px;
	top: 50%
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-close
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/first-close.png)
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-close:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/first-close-hover.png)
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-type-wrapper .qr-code-text
	{
	color: #cd9904
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore
	{
	margin: 18px 10px 0 0;
	float: right
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore .qr-code-ignore-text
	{
	font-size: 12px;
	font-family: microsoft yahei;
	color: #cd9904;
	margin: 0 4px 0 0
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore .qr-code-ignore-select
	{
	width: 14px;
	height: 14px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/select.png)
		no-repeat;
	vertical-align: -2px;
	*vertical-align: 0;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore .qr-code-ignore-select .qr-code-ignore-select-checked
	{
	display: block;
	width: 14px;
	height: 14px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/select-checked.png)
		no-repeat;
	cursor: pointer
}

.module-cy-user-page .cy-prompt-mask {
	background: rgba(0, 0, 0, .5);
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	z-index: 2147483647
}

.module-cy-user-page .cy-alert {
	background: #fff;
	border-radius: 3px;
	bottom: 0;
	height: 218px;
	left: 0;
	margin: auto;
	padding: 25px;
	position: absolute;
	right: 0;
	top: 0;
	width: 400px;
	z-index: 2147483647
}

.module-cy-user-page .cy-alert-logo {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/prompt/alert-logo.png)
		no-repeat center;
	background-size: 100%;
	height: 32px;
	margin: 24px auto;
	width: 32px
}

.module-cy-user-page .cy-alert-text {
	padding-top: 16px;
	font-size: 16px;
	line-height: 24px;
	text-align: center
}

.module-cy-user-page .cy-alert-btn {
	border: 1px solid #bababa;
	border-radius: 3px;
	bottom: 40px;
	cursor: pointer;
	height: 32px;
	line-height: 32px;
	margin-left: 167px;
	position: absolute;
	text-align: center;
	width: 80px
}

.module-cy-user-page .cy-confirm {
	background: #fff;
	border-radius: 3px;
	bottom: 0;
	box-sizing: border-box;
	height: 158px;
	left: 0;
	margin: auto;
	padding: 25px;
	position: absolute;
	right: 0;
	top: 0;
	width: 400px;
	z-index: 2147483647
}

.module-cy-user-page .cy-confirm-text {
	font-size: 16px;
	line-height: 24px;
	text-align: center
}

.module-cy-user-page .cy-confirm-btns {
	bottom: 32px;
	font-size: 14px;
	position: absolute;
	text-align: center
}

.module-cy-user-page .cy-confirm-yes {
	border: 1px solid #4398ed;
	border-radius: 3px;
	box-sizing: border-box;
	color: #4398ed;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 30px;
	margin: 0 64px 0 63px;
	text-align: center;
	width: 80px
}

.module-cy-user-page .cy-confirm-no {
	background: #4398ed;
	border-radius: 3px;
	box-shadow: 0 4px 10px 0 #4398ed;
	box-sizing: border-box;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 32px;
	text-align: center;
	width: 80px
}

.module-cy-user-page .cy-toast {
	background: #fff;
	border-radius: 3px;
	bottom: 0;
	height: 88px;
	left: 0;
	margin: auto;
	padding: 25px;
	position: absolute;
	right: 0;
	top: 0;
	width: 300px;
	z-index: 2147483647
}

.module-cy-user-page .cy-toast-logo {
	background-repeat: no-repeat;
	background-position: center;
	background-size: 100%;
	height: 32px;
	margin: 4px auto;
	width: 32px
}

.module-cy-user-page .cy-toast-icon-reject {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/prompt/images/appeal-reject.png)
}

.module-cy-user-page .cy-toast-icon-submit {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/prompt/images/appeal-submit.png)
}

.module-cy-user-page .cy-toast-icon-search {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/prompt/images/searching.png)
}

.module-cy-user-page .cy-toast-icon-success {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/prompt/images/delete-ok.png)
}

.module-cy-user-page .cy-toast-text {
	padding-top: 16px;
	font-size: 16px;
	line-height: 24px;
	text-align: center
}

.module-cy-user-page .module-cy-user-info {
	height: 100%
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header {
	padding: 20px;
	height: 84px
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-photo-container
	{
	position: relative;
	width: 84px;
	height: 84px;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-photo
	{
	width: 84px;
	height: 84px;
	display: block;
	float: left;
	border-radius: 3px
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .avatar-mask
	{
	width: 84px;
	height: 84px;
	background: #000;
	opacity: .6;
	filter: alpha(opacity = 60);
	position: absolute;
	border-radius: 3px;
	top: 0;
	left: 0;
	display: none;
	line-height: 84px;
	font-size: 16px;
	text-align: center;
	color: #FFF;
	font-family: "Microsoft YaHei";
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-photo-container:hover .avatar-mask
	{
	display: block
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info
	{
	float: left;
	width: 505px;
	height: 84px;
	position: relative
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .cy-user-info-txt
	{
	margin-left: 21px;
	margin-top: 14px
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .cy-user-info-txt .cy-user-name
	{
	color: #111;
	font-size: 20px;
	font-family: "Microsoft YaHei";
	font-style: normal;
	letter-spacing: 1px
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .cy-user-info-txt .cy-user-name-input
	{
	color: #111;
	border: 1px solid #d5d5d5;
	border-radius: 7px;
	font-size: 16px;
	height: 28px;
	line-height: 28px;
	font-family: "Microsoft YaHei";
	font-style: normal;
	letter-spacing: 1px;
	text-indent: 8px;
	width: 150px;
	display: none
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .cy-user-info-txt .cy-user-edit
	{
	width: 20px;
	height: 20px;
	display: inline-block;
	*dispaly: inline;
	*zoom: 1;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/edit.png)
		no-repeat;
	vertical-align: -2px;
	margin: 0 0 0 12px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .cy-user-info-txt .cy-user-edit-btn
	{
	width: 50px;
	height: 28px;
	line-height: 28px;
	border-radius: 5px;
	text-align: center;
	vertical-align: 2px;
	display: none;
	*zoom: 1;
	background-color: #51acf9;
	color: #fff;
	margin: 0 0 0 12px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-my {
	position: relative
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-tab-active-bar
	{
	position: absolute;
	background: #38a3fd;
	width: 84px;
	height: 2px;
	margin-left: 63px;
	margin-top: -2px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-label {
	border-bottom: 1px solid #c3cad4
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-label li {
	width: 210px;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-label li .cy-my-label-item
	{
	width: 84px;
	margin: 0 auto;
	height: 28px;
	font-family: "Microsoft YaHei";
	font-size: 14px;
	color: #333;
	text-align: center;
	cursor: pointer;
	line-height: 15px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-label li.active .cy-my-label-item
	{
	color: #38a3fd
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-label li .cy-my-label-item .cy-num
	{
	font-family: "Microsoft YaHei";
	font-size: 14px;
	color: #333;
	font-style: normal
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-label li.active .cy-my-label-item .cy-num
	{
	color: #38a3fd
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-container
	{
	position: relative
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page {
	position: absolute;
	top: 0;
	left: 0;
	width: 630px;
	overflow: hidden;
	overflow-y: auto;
	display: none
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-container .active
	{
	display: block
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list
	{
	width: 575px;
	margin: 20px 0 0 20px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i
	{
	margin-top: 20px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i:first-child
	{
	margin-top: 0
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-photo
	{
	width: 40px;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-photo img
	{
	width: 40px;
	height: 40px;
	display: block;
	border-radius: 3px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .module-cmt-box
	{
	margin: 12px 0 0
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .module-cmt-box .textarea-fw
	{
	height: 44px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container
	{
	float: left;
	width: 518px;
	margin-left: 15px;
	padding-bottom: 17px;
	border-bottom: 1px solid #e9f0f5;
	position: relative
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name
	{
	font-size: 14px;
	font-family: "Microsoft YaHei";
	color: #38a3fd;
	line-height: 14px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-appeal,
	.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-delete
	{
	width: 46px;
	height: 18px;
	margin: 0 0 0 4px;
	float: right;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	font-size: 12px;
	font-family: microsoft yahei;
	line-height: 16px;
	color: #b6b6b6;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-appeal .cy-comment-appeal-icon,
	.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-delete .cy-comment-delete-icon
	{
	width: 15px;
	height: 16px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: -3px;
	*vertical-align: 0
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-has-apply-tip
	{
	width: 200px;
	height: 100px;
	position: absolute;
	right: 35px;
	top: -80px;
	cursor: pointer;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/has-apply-tip.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-appeal .cy-comment-appeal-icon
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/appeal.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-delete .cy-comment-delete-icon
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/delete.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-appeal:hover,
	.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-delete:hover
	{
	color: #f05858
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-appeal:hover .cy-comment-appeal-icon
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/appeal-hover.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name .cy-comment-delete:hover .cy-comment-delete-icon
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/delete-hover.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment
	{
	font-family: "Microsoft YaHei";
	font-size: 16px;
	color: #111;
	margin-top: 15px;
	line-height: 21px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment img
	{
	vertical-align: -2px;
	*vertical-align: 0
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment-other
	{
	background: #fdefef
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-auditing-status
	{
	font-size: 14px;
	color: #f05858;
	margin-left: 10px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-warning-ico
	{
	display: inline-block;
	width: 13px;
	height: 13px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/warning-ico.png);
	vertical-align: -1px;
	*vertical-align: 3px;
	margin-right: 4px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment-source
	{
	font-family: "Microsoft YaHei";
	font-size: 14px;
	color: #465e72;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-top: 14px;
	display: inline-block;
	max-width: 100%
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .no-icp-txt
	{
	font-family: "Microsoft YaHei";
	font-size: 12px;
	color: #f05858;
	margin-top: 6px;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .no-icp-txt .cy-warning-ico
	{
	vertical-align: -2px;
	*vertical-align: 0
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment-site-from
	{
	font-family: "Microsoft YaHei";
	float: left;
	font-size: 12px;
	color: #999;
	margin-top: 6px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment-time
	{
	float: right;
	font-family: "Microsoft YaHei";
	margin-top: 3px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment-time em
	{
	display: inline-block;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/time-ico.png);
	width: 12px;
	height: 12px;
	vertical-align: -2px;
	*vertical-align: 2px;
	margin-top: 4px;
	*margin-left: 4px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-comment-time i
	{
	font-style: normal;
	font-size: 12px;
	color: #999;
	font-family: "Microsoft YaHei"
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-my-comment-list .comment-list-i .cy-my-comment-container .cy-my-user-name
	{
	line-height: 15px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-reply-ico
	{
	width: 13px;
	height: 9px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/reply-ico.png);
	display: inline-block;
	margin: 0 4px 0 2px;
	*vertical-align: 3px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-my-user-name em
	{
	font-style: normal;
	color: #333;
	margin-left: 4px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-my-user-name em img
	{
	vertical-align: -2px;
	*vertical-align: 0
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle
	{
	margin-top: 18px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group
	{
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-nonsupport-ico,
	.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-support-ico
	{
	display: inline-block;
	width: 13px;
	height: 14px;
	margin-right: 4px;
	vertical-align: -2px;
	*vertical-align: 2px;
	cursor: pointer;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-support-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/support-ico.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-support-ico:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/support-ico-hover.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-support-ico-disabled,
	.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-support-ico-disabled:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/support-ico-disabled.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-nonsupport-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/nonsupport-ico.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-nonsupport-ico:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/nonsupport-ico-hover.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-nonsupport-ico-disabled,
	.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group .cy-nonsupport-ico-disabled:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/nonsupport-ico-disabled.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group em
	{
	color: #f05858;
	font-size: 12px;
	font-style: normal;
	font-family: Arial;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-support-group i
	{
	margin: 0 9px 0 7px;
	float: left;
	display: block;
	height: 12px;
	width: 1px;
	border-left: 1px solid #cdcdcd
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-reply .cy-comment-handle .cy-reply-btn
	{
	color: #999;
	font-size: 12px;
	margin-left: 22px;
	font-style: normal;
	cursor: pointer;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-support .cy-support-list
	{
	background: #f2f2f2;
	padding: 12px 7px;
	margin-top: 16px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-support .cy-support-list .cy-arrow-ico
	{
	display: block;
	width: 20px;
	height: 10px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/arrow-ico.png);
	margin: -22px 0 0 33px;
	*position: absolute;
	*margin: -22px 0 0 23px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-support .cy-support-list p
	{
	margin-top: 12px;
	*margin-top: 0;
	font-family: "Microsoft YaHei";
	font-size: 14px;
	padding: 0 5px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-support .cy-support-list p em
	{
	color: #51acf9;
	font-size: 14px;
	font-style: normal;
	margin: 0 6px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-support .cy-support-list ul
	{
	margin-top: 3px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-support .cy-support-list ul .cy-user-item
	{
	float: left;
	margin: 6px 5px 0
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page-support .cy-support-list ul .cy-user-item img
	{
	width: 40px;
	height: 40px;
	display: block;
	border-radius: 3px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .empty-hold-place
	{
	display: block;
	text-align: center;
	line-height: 16px;
	font-size: 16px;
	font-family: "Microsoft YaHei";
	width: 345px;
	margin: 0 auto;
	padding-bottom: 50px
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .empty-hold-place .pet-pic
	{
	margin-top: 100px;
	width: 345px;
	height: 293px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/notice-empty.png);
	background-repeat: no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .empty-hold-place .empty-txt
	{
	width: 345px;
	height: 22px;
	margin-top: 70px;
	background-repeat: no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .empty-hold-place .comment-empty-txt
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/title-nocomment.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .empty-hold-place .replay-empty-txt
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/title-noreply.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .empty-hold-place .support-empty-txt
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/title-nosupport.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-my .cy-my-page .cy-my-comment-list .empty-hold-place .power-by-cy-txt
	{
	width: 345px;
	height: 16px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/power-by.png);
	background-repeat: no-repeat;
	margin-top: 30px
}

.module-cy-user-page .module-sex {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	display: none;
	*zoom: 1
}

.module-cy-user-page .module-sex .sex-mask {
	width: 100%;
	height: 100%;
	position: absolute;
	background: #000;
	opacity: .6;
	filter: alpha(opacity = 60);
	top: 0;
	left: 0;
	*zoom: 1;
	display: inline
}

.module-cy-user-page .module-sex .sex-config {
	width: 420px;
	height: 320px;
	background-color: #fff;
	margin: -160px auto 0;
	position: relative;
	top: 50%;
	border-radius: 4px
}

.module-cy-user-page .module-sex .first-come {
	width: 500px;
	height: 198px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/info-update.png)
		no-repeat;
	z-index: 10;
	display: inline;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -300px 0 0 -250px;
	visibility: hidden;
	*zoom: 1
}

.module-cy-user-page .module-sex .sex-config .sex-title {
	height: 40px;
	line-height: 40px;
	font-size: 16px;
	color: #000;
	text-align: center;
	border: 1px solid #bfbfbf;
	border-width: 0 0 1px
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am
	{
	width: 377px;
	margin: 24px auto 0
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-also-am .text,
	.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .text
	{
	display: inline-block;
	*display: inline;
	*zoom: 1;
	font-size: 14px;
	line-height: 35px
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .boy,
	.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .girl
	{
	display: inline-block;
	*display: inline;
	*zoom: 1;
	height: 33px;
	line-height: 33px;
	padding: 0 12px;
	cursor: pointer;
	border: solid 1px #fff
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .boy
	{
	margin: 0 18px 0 10px
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .select
	{
	border: 1px dashed #38a3fd;
	border-radius: 4px
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .boy .icon-boy,
	.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .girl .icon-girl
	{
	width: 20px;
	height: 20px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: -5px;
	margin: 0 4px 0 0;
	font-size: 14px
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .boy .icon-boy
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-am .girl .icon-girl
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-also-am
	{
	width: 377px;
	margin: 10px auto 0
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-also-am .text
	{
	line-height: 68px
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-also-am .icon
	{
	display: inline-block;
	*display: inline;
	*zoom: 1;
	height: 68px;
	width: 50px;
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
	border: solid 1px #fff
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-also-am .select
	{
	border: 1px dashed #38a3fd;
	border-radius: 4px
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-also-am .icon .age-icon
	{
	display: inline-block;
	*display: inline;
	*zoom: 1;
	width: 34px;
	height: 32px;
	margin: 8px auto 0
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .i-also-am .icon .icon-text
	{
	display: inline-block;
	*display: inline;
	*zoom: 1;
	margin: 8px auto 0;
	font-size: 12px;
	color: #8a8a8a
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-man .icon .icon-00
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-00.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-man .icon .icon-90
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-90.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-man .icon .icon-80
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-80.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-man .icon .icon-70
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-70.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-man .icon .icon-60
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-60.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-man .icon .icon-50
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-50.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-woman .icon .icon-00
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-00.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-woman .icon .icon-90
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-90.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-woman .icon .icon-80
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-80.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-woman .icon .icon-70
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-70.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-woman .icon .icon-60
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-60.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .icon-woman .icon .icon-50
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-50.png)
		no-repeat
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .alldown
	{
	text-align: center;
	margin: 40px 0 0
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .alldown .down-button
	{
	color: #38a3fd;
	background-color: #fff;
	border: 2px solid #38a3fd;
	border-radius: 20px;
	cursor: pointer;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	width: 106px;
	height: 32px;
	line-height: 32px;
	font-size: 16px;
	text-align: center
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .alldown .down-button:hover
	{
	color: #fff;
	background-color: #38a3fd
}

.module-cy-user-page .module-sex .sex-config .sex-center .sex-select .otherword
	{
	margin: 25px 0 0;
	font-size: 14px;
	text-align: center;
	color: #c3c3c3
}

.module-cy-user-page .module-cy-user-info .cy-user-sex {
	width: 100px;
	text-align: center;
	display: inline;
	position: absolute;
	top: 11px;
	right: 0;
	*zoom: 1
}

.module-cy-user-page .module-cy-user-info .cy-user-sex-hide,
	.module-cy-user-page .module-cy-user-info .cy-user-sex:hover .cy-user-sex-age,
	.module-cy-user-page .module-cy-user-info .cy-user-sex:hover .cy-user-sex-gender
	{
	display: none
}

.module-cy-user-page .module-cy-user-info .cy-user-sex:hover .cy-user-sex-update
	{
	display: inline-block
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender
	{
	width: 32px;
	height: 32px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: middle
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-0-age-1950
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-50.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-0-age-1960
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-60.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-0-age-1970
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-70.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-0-age-1980
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-80.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-0-age-1990
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-90.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-0-age-2000
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/girl-00.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-1-age-1950
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-50.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-1-age-1960
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-60.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-1-age-1970
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-70.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-1-age-1980
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-80.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-1-age-1990
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-90.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-1-age-2000
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/boy-00.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-age
	{
	margin: 0 0 8px;
	font-size: 12px;
	font-family: microsoft yahei;
	color: #999;
	vertical-align: middle
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-update
	{
	width: 100px;
	height: 34px;
	line-height: 34px;
	text-align: center;
	vertical-align: middle;
	border: 2px solid #38a3fd;
	border-radius: 20px;
	color: #38a3fd;
	font-size: 16px;
	*display: inline;
	*zoom: 1;
	display: none;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-update:hover1
	{
	background-color: #38a3fd;
	color: #fff
}

.module-cy-user-page .module-cy-user-info .module-delete-dialog .dialog-button
	{
	background: #fff;
	border: solid 1px #616161;
	border-radius: 3px;
	width: 70px;
	height: 20px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-collection-wrapper {
	width: 100%;
	padding-bottom: 17px;
	border-bottom: 1px solid #e9f0f5;
	box-sizing: border-box
}

.module-cy-user-page .module-cy-user-info .cy-collection-body {
	margin-right: -10px;
	box-sizing: border-box;
	display: inline-block;
	padding-right: 20px;
	vertical-align: middle;
	width: 387px
}

.module-cy-user-page .module-cy-user-info .cy-collection-title {
	font-size: 18px;
	font-weight: 600;
	max-height: 56px;
	line-height: 28px;
	overflow: hidden
}

.module-cy-user-page .module-cy-user-info .cy-collection-panel {
	width: 100%;
	height: 32px;
	line-height: 32px;
	font-size: 12px;
	padding-top: 10px
}

.module-cy-user-page .module-cy-user-info .cy-collection-from {
	color: #999
}

.module-cy-user-page .module-cy-user-info .cy-collection-del {
	float: right;
	margin-right: 12px;
	color: #999;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-collection-del i {
	display: inline-block;
	width: 12px;
	height: 12px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/del.png)
		no-repeat center;
	vertical-align: middle;
	margin-right: 3px
}

.module-cy-user-page .module-cy-user-info .cy-collection-time {
	float: right;
	margin-right: 5px;
	color: #999
}

.module-cy-user-page .module-cy-user-info .cy-collection-time i {
	display: inline-block;
	width: 12px;
	height: 12px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-info/063/image/time.png)
		no-repeat center;
	vertical-align: middle;
	margin-right: 3px
}

.module-cy-user-page .module-cy-user-info .cy-collection-pic {
	width: 188px;
	height: 112px;
	float: right;
	background-size: cover
}

.module-cy-user-page .module-cy-user-info .cy-info-supports ul {
	padding: 16px 0 0
}

.module-cy-user-page .module-cy-user-info .cy-info-supports ul:after {
	clear: both;
	content: "";
	display: block;
	height: 0;
	visibility: hidden
}

.module-cy-user-page .module-cy-user-info .cy-info-supports li.cy-info-supports-avatar
	{
	float: right;
	width: 36px;
	height: 36px;
	border-radius: 4px;
	margin: 0 5px;
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-position: center;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-info-supports li.cy-info-supports-count
	{
	font-size: 16px;
	float: right;
	height: 36px;
	padding: 0 10px;
	text-align: center;
	line-height: 36px;
	color: #ababab
}

.module-cy-user-page .module-cy-user-info .cy-info-supports li.cy-info-supports-count em
	{
	margin-left: 4px;
	font-size: 16px;
	color: #4398ed
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code {
	height: 100%;
	width: 100%;
	position: absolute;
	top: 0
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-mask
	{
	width: 100%;
	height: 100%;
	position: absolute;
	background: #000;
	opacity: .6;
	filter: alpha(opacity = 60);
	top: 0;
	left: 0;
	display: inline;
	z-index: 1000
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper
	{
	width: 300px;
	height: 375px;
	position: absolute;
	top: 36%;
	left: 50%;
	margin: -187.5px 0 0 -150px;
	background-color: #fff;
	border-radius: 10px;
	z-index: 1001
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-logo-wrapper
	{
	width: 100%;
	height: 38px;
	margin: 28px 0 0;
	text-align: center
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-logo-wrapper .qr-code-logo
	{
	width: 56px;
	height: 38px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/logo.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper
	{
	width: 100%;
	margin: 28px 0 0;
	text-align: center
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-first-support
	{
	margin: 44px 0 0
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-type-big
	{
	font-size: 18px;
	font-family: microsoft yahei;
	text-align: center
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-first-support .qr-code-type-big
	{
	margin: 6px 0 0
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-type-small
	{
	font-size: 12px;
	margin: 6px 0 0;
	font-family: microsoft yahei;
	text-align: center
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-first-support .qr-code-type-small
	{
	margin: 20px 0 0
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-img
	{
	width: 165px;
	height: 165px;
	margin: 20px 0 0
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-type-wrapper .qr-code-text
	{
	font-size: 14px;
	font-family: microsoft yahei;
	margin: 20px 0 0;
	text-align: center;
	color: #dedede
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-code-wrapper .qr-code-close
	{
	width: 12px;
	height: 12px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/close.png)
		no-repeat;
	cursor: pointer;
	position: absolute;
	right: 16px;
	top: 16px
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result
	{
	width: 300px;
	height: 125px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -55px 0 0 -150px;
	background-color: #fff;
	border-radius: 3px;
	z-index: 1001
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper
	{
	width: 100%;
	text-align: center
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .cy-result-icon
	{
	width: 40px;
	height: 40px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	margin: 19px 0 0
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .result-icon-delete-ok
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/delete-ok.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .result-icon-appeal-submit
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/appeal-submit.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .result-icon-appeal-reject
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/appeal-reject.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result .cy-result-icon-wrapper .result-icon-searching
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/searching.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .module-qrcode-result .cy-result-text
	{
	font-size: 16px;
	font-family: microsoft yahei;
	text-align: center
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper
	{
	width: 410px;
	height: 445px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/first-weixin.png);
	position: absolute;
	top: 40%;
	left: 50%;
	margin: -222.5px 0 0 -175px;
	z-index: 1001
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper
	{
	background: 0 0;
	margin: -188.5px 0 0 -182px;
	top: 50%
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-close
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/first-close.png)
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-close:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/first-close-hover.png)
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-type-wrapper .qr-code-text
	{
	color: #cd9904
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore
	{
	margin: 18px 10px 0 0;
	float: right
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore .qr-code-ignore-text
	{
	font-size: 12px;
	font-family: microsoft yahei;
	color: #cd9904;
	margin: 0 4px 0 0
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore .qr-code-ignore-select
	{
	width: 14px;
	height: 14px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/select.png)
		no-repeat;
	vertical-align: -2px;
	*vertical-align: 0;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .qr-first-background-wrapper .qr-code-wrapper .qr-code-ignore .qr-code-ignore-select .qr-code-ignore-select-checked
	{
	display: block;
	width: 14px;
	height: 14px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/small-dialog/image/select-checked.png)
		no-repeat;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .dialog-button
	{
	background: #fff;
	border: solid 1px #3b9bf5;
	color: #3b9bf5;
	border-radius: 3px;
	width: 55px;
	height: 20px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-view .module-user-info-qr-code .dialog-button.active
	{
	background: #3b9bf5;
	border: 0;
	color: #fff
}

.module-cy-user-view .cy-user-view-header {
	padding: 20px;
	height: 84px
}

.module-cy-user-view .cy-user-view-header .cy-user-photo-container {
	position: relative;
	width: 84px;
	height: 84px;
	float: left
}

.module-cy-user-view .cy-user-view-header .cy-user-photo {
	width: 84px;
	height: 84px;
	display: block;
	float: left;
	border-radius: 3px
}

.module-cy-user-view .cy-user-view-header .cy-user-view {
	float: left;
	width: 505px;
	height: 84px;
	position: relative
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-user-view-txt
	{
	margin-left: 21px;
	margin-top: 12px
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-user-view-txt .cy-user-name
	{
	color: #111;
	font-size: 20px;
	font-family: "Microsoft YaHei";
	font-style: normal;
	letter-spacing: 1px;
	vertical-align: middle
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-user-option-area
	{
	display: inline-block;
	position: relative
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-user-view-txt .cy-user-option
	{
	display: inline-block;
	vertical-align: middle;
	width: 25px;
	height: 25px;
	margin-left: 6px;
	cursor: pointer;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/options-icon.png)
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-user-view-txt .cy-user-option:hover
	{
	color: #43a9d0
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-other-info {
	margin-left: 21px;
	margin-top: 17px
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-other-info li
	{
	width: 89px;
	height: 22px;
	float: left
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-other-info li .other-info-ico
	{
	width: 20px;
	height: 22px;
	display: block;
	float: left
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-other-info li .comment-info-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/comments.png)
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-other-info li .reply-info-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/reply.png)
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-other-info li .support-info-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/support.png)
}

.module-cy-user-view .cy-user-view-header .cy-user-view .cy-other-info li .other-info-txt
	{
	float: left;
	font-size: 14px;
	font-family: "Microsoft YaHei";
	margin-left: 6px;
	margin-top: 5px
}

.module-cy-user-view .cy-other-page .cy-other-comment-list .empty-hold-place
	{
	display: block;
	text-align: center;
	line-height: 16px;
	font-size: 16px;
	font-family: "Microsoft YaHei";
	width: 345px;
	margin: 0 auto;
	padding-bottom: 50px
}

.module-cy-user-view .cy-other-page .cy-other-comment-list .empty-hold-place .pet-pic
	{
	margin-top: 100px;
	width: 345px;
	height: 293px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/notice-empty.png);
	background-repeat: no-repeat
}

.module-cy-user-view .cy-other-page .cy-other-comment-list .empty-hold-place .empty-txt
	{
	width: 345px;
	height: 22px;
	margin-top: 70px;
	background-repeat: no-repeat
}

.module-cy-user-view .cy-other-page .cy-other-comment-list .empty-hold-place .comment-empty-txt
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/title-nocomment.png)
}

.module-cy-user-view .cy-other-page .cy-other-comment-list .empty-hold-place .power-by-cy-txt
	{
	width: 345px;
	height: 16px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/power-by.png);
	background-repeat: no-repeat;
	margin-top: 30px
}

.module-cy-user-view .cy-user-other {
	position: relative
}

.module-cy-user-view .cy-user-other .cy-tab-active-bar {
	position: absolute;
	background: #38a3fd;
	width: 84px;
	height: 2px;
	margin-left: 63px;
	margin-top: -2px
}

.module-cy-user-view .cy-user-other .cy-other-label {
	border-bottom: 1px solid #c3cad4
}

.module-cy-user-view .cy-user-other .cy-other-label li {
	width: 210px;
	float: left
}

.module-cy-user-view .cy-user-other .cy-other-label li .cy-other-label-item
	{
	width: 84px;
	margin: 0 auto;
	height: 28px;
	font-family: "Microsoft YaHei";
	font-size: 14px;
	color: #333;
	text-align: center;
	cursor: pointer;
	line-height: 15px
}

.module-cy-user-view .cy-user-other .cy-other-label li.active .cy-other-label-item
	{
	color: #38a3fd
}

.module-cy-user-view .cy-user-other .cy-other-label li .cy-other-label-item .cy-num
	{
	font-family: "Microsoft YaHei";
	font-size: 14px;
	color: #333;
	font-style: normal
}

.module-cy-user-view .cy-user-other .cy-other-label li.active .cy-other-label-item .cy-num
	{
	color: #38a3fd
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page
	{
	width: 630px;
	overflow: hidden;
	overflow-y: auto;
	display: none
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page-container .active
	{
	display: block
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list
	{
	width: 575px;
	margin: 20px 0 0 20px
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li
	{
	margin-top: 20px
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li:first-child
	{
	margin-top: 0
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-photo
	{
	width: 40px;
	float: left
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-photo img
	{
	width: 40px;
	height: 40px;
	display: block;
	border-radius: 3px
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container
	{
	float: left;
	width: 518px;
	margin-left: 15px;
	padding-bottom: 17px;
	border-bottom: 1px solid #e9f0f5
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-user-name
	{
	font-size: 14px;
	font-family: "Microsoft YaHei";
	color: #38a3fd;
	line-height: 14px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment
	{
	font-family: "Microsoft YaHei";
	font-size: 16px;
	color: #111;
	margin-top: 15px;
	line-height: 21px
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment img
	{
	vertical-align: -2px;
	*vertical-align: 0
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment-other
	{
	background: #fdefef
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-auditing-status
	{
	font-size: 14px;
	color: #f05858;
	padding: 4px 0 4px 10px;
	background: #fdefef;
	display: block
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-warning-ico
	{
	display: inline-block;
	width: 13px;
	height: 13px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/warning-ico.png);
	vertical-align: -1px;
	*vertical-align: 3px;
	margin-right: 4px
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment-source
	{
	font-family: "Microsoft YaHei";
	font-size: 14px;
	color: #465e72;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-top: 14px;
	display: inline-block
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .no-icp-txt
	{
	font-family: "Microsoft YaHei";
	font-size: 14px;
	color: #f05858;
	margin-top: 14px;
	display: block
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment-site-from
	{
	font-family: "Microsoft YaHei";
	float: left;
	font-size: 12px;
	color: #999;
	margin-top: 4px
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment-time
	{
	float: right;
	font-family: "Microsoft YaHei"
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment-time em
	{
	display: inline-block;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/time-ico.png);
	width: 12px;
	height: 12px;
	vertical-align: -2px;
	*vertical-align: 3px;
	margin-top: 4px;
	*margin-left: 4px
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-other-comment-list li .cy-other-comment-container .cy-other-comment-time i
	{
	font-style: normal;
	font-size: 12px;
	color: #999;
	font-family: "Microsoft YaHei"
}

.module-cy-user-page .module-cy-user-view .cy-user-other .cy-other-page .cy-blocked-icon
	{
	display: inline-block;
	width: 40px;
	height: 40px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/appeal-reject.png)
		no-repeat;
	margin-right: 40px;
	vertical-align: middle
}

.module-cy-user-page .module-cy-user-view .cy-user-sex {
	width: 100px;
	text-align: center;
	display: inline;
	position: absolute;
	top: 11px;
	right: 0;
	*zoom: 1
}

.module-cy-user-page .module-cy-user-view .cy-user-sex-hide {
	display: none
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender
	{
	width: 32px;
	height: 32px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: middle
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-0-age-1950
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/girl-50.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-0-age-1960
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/girl-60.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-0-age-1970
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/girl-70.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-0-age-1980
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/girl-80.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-0-age-1990
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/girl-90.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-0-age-2000
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/girl-00.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-sex .cy-user-sex-gender-1-age-1950
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/boy-50.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-1-age-1960
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/boy-60.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-1-age-1970
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/boy-70.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-1-age-1980
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/boy-80.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-1-age-1990
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/boy-90.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-gender-1-age-2000
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/boy-00.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-age
	{
	margin: 0 0 8px;
	font-size: 12px;
	font-family: microsoft yahei;
	color: #999;
	vertical-align: middle
}

.module-cy-user-page .module-cy-user-view .cy-user-sex .cy-user-sex-update
	{
	width: 100px;
	height: 34px;
	line-height: 34px;
	text-align: center;
	vertical-align: middle;
	border: 2px solid #38a3fd;
	border-radius: 20px;
	color: #38a3fd;
	font-size: 16px;
	*display: inline;
	*zoom: 1;
	display: none;
	cursor: pointer
}

.module-cy-user-view .cy-user-option-dialog {
	display: inline-block;
	position: absolute;
	width: 218px;
	height: 218px;
	top: 20px;
	left: -186px;
	z-index: 10
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-pop {
	display: inline-block;
	width: 12px;
	height: 8px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/dialog-pop.png)
		no-repeat;
	position: absolute;
	right: 8px;
	top: 1px
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-list {
	margin-top: 7px;
	background: #fff;
	border: solid 2px #d6d6d6;
	border-radius: 5px
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-list li {
	padding: 15px;
	cursor: pointer
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-list li:hover
	{
	background: #cbcbcb
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-list .cy-option-title
	{
	color: #e6312d;
	margin-bottom: 5px;
	font-size: 13px;
	font-weight: 600;
	display: inline-block;
	line-height: 22px
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-list .cy-option-content
	{
	color: #5da6c6;
	margin-left: 10px;
	line-height: 18px
}

.module-cy-user-view .cy-user-option-dialog .cy-option-icon {
	display: inline-block;
	width: 22px;
	height: 22px;
	vertical-align: top
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-blocked .cy-option-icon
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/blocked-icon.png)
		no-repeat
}

.module-cy-user-view .cy-user-option-dialog .cy-user-option-reported .cy-option-icon
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/image/reported-icon.png)
		no-repeat
}

.module-cy-user-page .cy-prompt-mask {
	background: rgba(0, 0, 0, .5);
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	z-index: 2147483647
}

.module-cy-user-page .cy-alert {
	background: #fff;
	border-radius: 3px;
	bottom: 0;
	height: 218px;
	left: 0;
	margin: auto;
	padding: 25px;
	position: absolute;
	right: 0;
	top: 0;
	width: 400px;
	z-index: 2147483647
}

.module-cy-user-page .cy-alert-logo {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/prompt/alert-logo.png)
		no-repeat center;
	background-size: 100%;
	height: 32px;
	margin: 24px auto;
	width: 32px
}

.module-cy-user-page .cy-alert-text {
	padding-top: 16px;
	font-size: 16px;
	line-height: 24px;
	text-align: center
}

.module-cy-user-page .cy-alert-btn {
	border: 1px solid #bababa;
	border-radius: 3px;
	bottom: 40px;
	cursor: pointer;
	height: 32px;
	line-height: 32px;
	margin-left: 167px;
	position: absolute;
	text-align: center;
	width: 80px
}

.module-cy-user-page .cy-confirm {
	background: #fff;
	border-radius: 3px;
	bottom: 0;
	box-sizing: border-box;
	height: 158px;
	left: 0;
	margin: auto;
	padding: 25px;
	position: absolute;
	right: 0;
	top: 0;
	width: 400px;
	z-index: 2147483647
}

.module-cy-user-page .cy-confirm-text {
	font-size: 16px;
	line-height: 24px;
	text-align: center
}

.module-cy-user-page .cy-confirm-btns {
	bottom: 32px;
	font-size: 14px;
	position: absolute;
	text-align: center
}

.module-cy-user-page .cy-confirm-yes {
	border: 1px solid #4398ed;
	border-radius: 3px;
	box-sizing: border-box;
	color: #4398ed;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 30px;
	margin: 0 64px 0 63px;
	text-align: center;
	width: 80px
}

.module-cy-user-page .cy-confirm-no {
	background: #4398ed;
	border-radius: 3px;
	box-shadow: 0 4px 10px 0 #4398ed;
	box-sizing: border-box;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 32px;
	text-align: center;
	width: 80px
}

.module-cy-user-page .cy-toast {
	background: #fff;
	border-radius: 3px;
	bottom: 0;
	height: 88px;
	left: 0;
	margin: auto;
	padding: 25px;
	position: absolute;
	right: 0;
	top: 0;
	width: 300px;
	z-index: 2147483647
}

.module-cy-user-page .cy-toast-logo {
	background-repeat: no-repeat;
	background-position: center;
	background-size: 100%;
	height: 32px;
	margin: 4px auto;
	width: 32px
}

.module-cy-user-page .cy-toast-icon-reject {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/prompt/images/appeal-reject.png)
}

.module-cy-user-page .cy-toast-icon-submit {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/prompt/images/appeal-submit.png)
}

.module-cy-user-page .cy-toast-icon-search {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/prompt/images/searching.png)
}

.module-cy-user-page .cy-toast-icon-success {
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-view/031/prompt/images/delete-ok.png)
}

.module-cy-user-page .cy-toast-text {
	padding-top: 16px;
	font-size: 16px;
	line-height: 24px;
	text-align: center
}

.module-cy-user-page .module-cy-user-task {
	padding: 0 36px 0 20px;
	height: 100%;
	overflow: auto;
	display: none;
	position: relative
}

.module-cy-user-page .module-cy-user-task .cy-user-title {
	padding: 22px 0 26px;
	font-size: 20px;
	font-family: "Microsoft YaHei"
}

.module-cy-user-page .module-cy-user-task .cy-user-bean-group {
	padding-bottom: 15px;
	border-bottom: 1px solid #c3cad4;
	position: relative
}

.module-cy-user-page .module-cy-user-task .cy-bean-outer {
	float: left;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/bean-border.png);
	background-position: top left;
	padding-left: 8px;
	height: 44px;
	background-repeat: no-repeat;
	margin-right: 12px;
	position: relative
}

.module-cy-user-page .module-cy-user-task .cy-bean {
	float: left;
	height: 50px;
	padding-right: 8px;
	background-position: top right;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/bean-border.png);
	background-repeat: no-repeat
}

.module-cy-user-page .module-cy-user-task .cy-bean .cy-bean-ico {
	float: left;
	display: block;
	width: 16px;
	height: 20px;
	margin-top: 12px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/bean-ico.png);
	margin-left: 2px
}

.module-cy-user-page .module-cy-user-task .cy-bean .cy-bean-num {
	float: left;
	margin-top: 15px;
	color: #ffa912;
	font-size: 15px;
	font-family: "Microsoft YaHei";
	margin-left: 4px
}

.module-cy-user-page .module-cy-user-task .cy-user-bean-group .help-ico
	{
	width: 20px;
	height: 20px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/help.png);
	background-position: top left;
	background-repeat: no-repeat;
	margin: 13px 0 0;
	cursor: pointer;
	float: left;
	position: relative
}

.module-cy-user-page .module-cy-user-task .cy-user-bean-group .help-ico:hover
	{
	background-position: bottom left
}

.module-cy-user-page .module-cy-user-task .cy-user-bean-group .help-pop
	{
	width: 330px;
	border: 1px solid #e9eff5;
	background-color: #FFF;
	color: #000;
	font-size: 14px;
	font-family: "Microsoft YaHei";
	line-height: 20px;
	position: absolute;
	top: -16px;
	left: 30px;
	box-shadow: 0 0 5px #3b5161;
	padding: 14px 20px 13px;
	display: none;
	z-index: 2
}

.module-cy-user-page .module-cy-user-task .cy-user-bean-group .help-ico:hover .help-pop
	{
	display: block
}

.module-cy-user-page .module-cy-user-task .cy-task-list {
	position: relative
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item
	{
	position: relative;
	height: 87px;
	border-bottom: 1px solid #e9f0f5;
	overflow: hidden;
	background: #FFF
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item .task-name
	{
	width: 33.3%;
	float: left;
	line-height: 84px;
	font-family: "Microsoft YaHei";
	font-size: 16px;
	color: #333
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item .task-award
	{
	width: 33.3%;
	float: left;
	line-height: 87px;
	color: #38a3fd;
	text-align: center;
	font-family: "Microsoft YaHei";
	font-size: 16px
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item .task-award span
	{
	color: #38a3fd
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item .cy-receive-btn
	{
	float: right;
	width: 113px;
	height: 48px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/btn1.png);
	color: #ffb026;
	font-size: 14px;
	line-height: 48px;
	font-family: "Microsoft YaHei";
	cursor: pointer;
	margin-top: 19px;
	text-align: center
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item .cy-receive-btn:hover
	{
	text-decoration: none
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item .cy-progress-btn
	{
	color: #38a3fd;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/btn2.png)
}

.module-cy-user-page .module-cy-user-task .cy-task-list .task-list-item .already-receive
	{
	color: #999;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/btn3.png)
}

.module-cy-user-page .module-cy-user-task .cy-task-list .float-status {
	position: absolute;
	width: 98px;
	height: 32px;
	line-height: 32px;
	font-size: 14px;
	text-align: center;
	border-radius: 3px;
	right: 128px;
	top: 28px;
	font-family: "Microsoft YaHei";
	display: none
}

.module-cy-user-page .module-cy-user-task .cy-task-list .float-status span
	{
	display: inline-block;
	width: 13px;
	height: 13px;
	margin-right: 3px;
	vertical-align: -2px;
	*vertical-align: 1px
}

.module-cy-user-page .module-cy-user-task .cy-task-list .status-success
	{
	background: #e7f1f8
}

.module-cy-user-page .module-cy-user-task .cy-task-list .status-failed {
	width: 180px;
	background: #fceeee;
	color: #e25655
}

.module-cy-user-page .module-cy-user-task .cy-task-list .status-success span
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/ok-ico.png)
}

.module-cy-user-page .module-cy-user-task .cy-task-list .status-failed span
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/warning-ico.png)
}

.module-cy-user-page .cy-tab-list li .cy-task-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/task-ico.png)
}

.module-cy-user-page .cy-tab-list li.active .cy-task-ico,
	.module-cy-user-page .cy-tab-list li.task-li:hover .cy-task-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/task-ico-active.png)
}

.module-cy-user-page .cy-tab-list li.task-li:hover i {
	color: #38a3fd
}

.module-cy-user-page .module-cy-user-task .no-task {
	width: 286px;
	height: 386px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/no-task.png);
	margin: 136px auto 50px
}

.module-cy-user-page .module-cy-user-task .prop-lead {
	display: block;
	width: 100%;
	*width: 557px;
	height: auto;
	margin: 20px 0;
	border-radius: 0
}

.module-cy-user-page .module-cy-user-ranking {
	position: absolute;
	top: 0;
	left: 0;
	width: 630px
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-mask {
	background: #000;
	opacity: .6;
	filter: alpha(opacity = 60);
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main {
	width: 100%;
	position: absolute
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-header
	{
	width: 630px;
	height: 160px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/header-bg.png)
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-header .close-rank
	{
	width: 28px;
	height: 28px;
	display: block;
	float: right;
	margin: 32px 115px 0 0;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content
	{
	width: 510px;
	padding-top: 12px;
	background: #fff;
	margin-left: 59px
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-tab
	{
	border: 1px solid #ffb026;
	border-radius: 4px;
	margin: 0 auto;
	width: 428px
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-tab .tab-item
	{
	float: left;
	text-align: center;
	font-size: 16px;
	height: 34px;
	width: 214px;
	color: #666;
	background: #FFF;
	border-radius: 0 4px 4px 0;
	line-height: 34px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-tab .tab-item:hover
	{
	color: #111
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-tab .tab-item:first-child
	{
	border-radius: 4px 0 0 4px
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-tab .active
	{
	background: #fcf2ba
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page
	{
	margin: 20px 0 52px;
	*margin-bottom: 0;
	width: 100%;
	padding-bottom: 33px;
	display: none;
	overflow: auto;
	position: relative
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .active
	{
	display: block
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item
	{
	padding-left: 14px;
	height: 60px;
	border-top: 1px solid #f2f2f2;
	position: relative;
	padding-right: 20px
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item:first-child
	{
	border: 0
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num
	{
	width: 100px;
	height: 20px;
	margin-top: 20px;
	display: block;
	background-repeat: no-repeat;
	float: left;
	font-size: 0;
	text-align: center
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-user-photo
	{
	display: block;
	width: 36px;
	height: 36px;
	border-radius: 4px;
	float: left;
	margin-top: 10px;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-user-name
	{
	margin-left: 18px;
	line-height: 56px;
	display: inline-block;
	height: 60px;
	overflow: hidden;
	color: #38a3fd;
	font-size: 14px;
	float: left;
	width: 180px;
	margin-right: 14px
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-bean,
	.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-prop
	{
	width: 99px;
	height: 31px;
	float: left;
	padding: 0 0 0 8px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/bean-bg.png);
	margin-top: 13px
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-bean .cy-icon-ico
	{
	width: 16px;
	height: 20px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/bean-ico.png);
	display: block;
	margin: 6px 7px 0 0;
	float: left
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-prop .cy-icon-ico
	{
	width: 14px;
	height: 15px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/prop-ico.png);
	display: block;
	margin: 8px 9px 0 0;
	float: left
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-bean .cy-icon-num,
	.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-prop .cy-icon-num
	{
	color: #ffa912;
	font-size: 18px;
	float: left;
	line-height: 18px;
	margin-top: 7px
}

.module-cy-user-page .module-cy-user-task .rank-link {
	display: block;
	position: absolute;
	right: 4px;
	top: -18px;
	width: 104px;
	height: 71px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-list.png);
	background-position: center;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-task .rank-link:hover {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-list-hover.png)
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-num-item
	{
	width: 12px;
	height: 20px;
	display: inline-block
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-0
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-0.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-1
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-1.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-2
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-2.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-3
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-3.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-4
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-4.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-5
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-5.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-6
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-6.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-7
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-7.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-8
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-8.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item .cy-rank-num .cy-rank-9
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-task/032/image/rank-image/num-9.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item.rank-self
	{
	background-color: #fdf6e4
}

.module-cy-user-page .module-cy-user-ranking .cy-rank-main .cy-rank-content .cy-rank-page .cy-rank-list .cy-rank-item.rank-self .cy-user-name
	{
	color: #f9a80e;
	font-weight: 700
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group
	{
	margin: 16px 0 0 21px
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .btn-bean-outer
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/bean-num.png);
	background-repeat: no-repeat;
	background-position: top left;
	height: 32px;
	padding-left: 39px;
	margin-right: 20px;
	float: left;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .btn-bean
	{
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/bean-num2.png);
	background-repeat: no-repeat;
	background-position: top right;
	height: 32px;
	line-height: 32px;
	padding-right: 14px;
	text-align: right;
	font-size: 18px;
	color: #ffa912;
	display: block;
	font-family: "Microsoft YaHei"
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .btn-check-ins
	{
	width: 102px;
	height: 32px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/check-ins.png);
	float: left;
	line-height: 31px;
	font-family: "Microsoft YaHei";
	font-size: 16px;
	text-align: center;
	color: #38a3fd;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .btn-check-ins-active,
	.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .btn-check-ins:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/check-ins2.png);
	color: #FFF
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span.click-prop-gw span.prop-span
	{
	width: 20px;
	height: 20px;
	display: inline-block;
	vertical-align: -5px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span.click-prop-gw a
	{
	width: 20px;
	height: 20px;
	display: inline-block;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/prop-ico.png);
	position: absolute
}

@
keyframes jump { 0%{
	margin-top: 0
}

10%{
margin-top
:
-10px
}
30%{
margin-top
:
-10px;-ms-transform
:rotate(20deg)
;-moz-transform
:rotate(20deg)
;-webkit-transform
:rotate(20deg)
;-o-transform
:rotate(20deg)
;transform
:rotate(20deg)
}
40%{
margin-top
:
-10px;-ms-transform
:rotate(-20deg)
;-moz-transform
:rotate(-20deg)
;-webkit-transform
:rotate(-20deg)
;-o-transform
:rotate(-20deg)
;transform
:rotate(-20deg)
}
50%{
margin-top
:
-10px;-ms-transform
:rotate(20deg)
;-moz-transform
:rotate(20deg)
;-webkit-transform
:rotate(20deg)
;-o-transform
:rotate(20deg)
;transform
:rotate(20deg)
}
60%{
margin-top
:
-10px;-ms-transform
:rotate(-20deg)
;-moz-transform
:rotate(-20deg)
;-webkit-transform
:rotate(-20deg)
;-o-transform
:rotate(-20deg)
;transform
:rotate(-20deg)
}
70%{
margin-top
:
-10px;-ms-transform
:rotate(20deg)
;-moz-transform
:rotate(20deg)
;-webkit-transform
:rotate(20deg)
;-o-transform
:rotate(20deg)
;transform
:rotate(20deg)
}
90%{
margin-top
:
-10px;-ms-transform
:rotate(0deg)
;-moz-transform
:rotate(0deg)
;-webkit-transform
:rotate(0deg)
;-o-transform
:rotate(0deg)
;transform
:rotate(0deg)
}
100%{
margin-top
:
0
}
}
#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw span.click-prop-gw a.animation-jump
	{
	-webkit-animation-name: jump;
	-webkit-animation-duration: 1s;
	-webkit-animation-timing-function: linear;
	-webkit-animation-iteration-count: 1;
	-moz-animation-name: jump;
	-moz-animation-duration: 1s;
	-moz-animation-timing-function: linear;
	-moz-animation-iteration-count: 1;
	-ms-animation-name: jump;
	-ms-animation-duration: 1s;
	-ms-animation-timing-function: linear;
	-ms-animation-iteration-count: 1;
	-o-animation-name: jump;
	-o-animation-duration: 1s;
	-o-animation-timing-function: linear;
	-o-animation-iteration-count: 1;
	animation-name: jump;
	animation-duration: 1s;
	animation-timing-function: linear;
	animation-iteration-count: 1
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw {
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win {
	width: 258px;
	height: 145px;
	border: 1px solid #ccd4d9;
	position: absolute;
	top: -160px;
	right: 0;
	z-index: 12;
	border-radius: 4px;
	background: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-wrappar
	{
	text-align: center;
	overflow: hidden;
	position: relative;
	padding-bottom: 5px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .item-content-wrap
	{
	overflow: hidden;
	margin: 0 auto;
	width: 228px;
	padding-left: 5px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .item-content
	{
	margin: 11px 0 0 -1px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	position: relative;
	width: 500px;
	left: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .tab-select .next-tab,
	#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .tab-select .previous-tab
	{
	width: 15px;
	height: 40px;
	top: 50%;
	margin: -20px 0 0 0;
	position: absolute;
	cursor: pointer;
	z-index: 100
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .tab-select .next-tab
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/rightbtn.png)
		no-repeat;
	right: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .tab-select .previous-tab
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/leftbtn.png)
		no-repeat;
	left: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .tab-select .next-tab:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/rightbtn-hover.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .tab-select .previous-tab:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/leftbtn-hover.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item
	{
	width: 56px;
	height: 90px;
	float: left;
	position: relative;
	overflow: visible;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-bar
	{
	width: 54px;
	height: 88px;
	float: left;
	border: 1px solid #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-bar:hover
	{
	border: 1px dashed #fba222
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico
	{
	width: 40px;
	height: 40px;
	display: block;
	margin: 10px auto 6px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-support
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/support.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-oppose
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/oppose.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-1
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/gei.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-2
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/pei.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-3
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/dou.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-4
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/penzi.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-5
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/zizi.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost
	{
	width: 40px;
	height: 21px;
	border: 1px solid #e5e5e5;
	border-radius: 2px;
	background-repeat: no-repeat;
	background-position: 0 0;
	display: block;
	text-align: center;
	line-height: 20px;
	font-family: "宋体";
	margin: 6px auto 0;
	color: #999;
	font-size: 14px;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost-hide
	{
	border: 1px solid #dcdcdc
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost:hover
	{
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost:active
	{
	background-position: 0 -40px;
	color: #FFF
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item-dash
	{
	float: left;
	margin: 11px auto 0;
	border-left: 1px dashed #ccd4d9;
	width: 0;
	height: 78px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-hover
	{
	width: 85px;
	height: 73px;
	position: absolute;
	left: 50%;
	margin-left: -42.5px;
	top: -10px;
	display: none;
	z-index: 11
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-ico-hover-support
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/support-hover.png)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-bar:hover .prop-ico-hover
	{
	display: block
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-mask
	{
	width: 66px;
	height: 97px;
	position: absolute;
	opacity: .6;
	filter: alpha(opacity = 60);
	z-index: 10;
	top: -2px;
	left: -2px;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-btn
	{
	width: 218px;
	height: 28px;
	text-align: center;
	line-height: 28px;
	font-size: 14px;
	margin: 3px auto 0;
	font-family: "Microsoft YaHei";
	display: block
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-btn:hover
	{
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-btn-outer
	{
	width: 100%;
	background: #f5f5f5;
	border-top: 1px solid #f0f0f0;
	overflow: hidden;
	display: block;
	height: 34px;
	border-bottom-left-radius: 4px;
	border-bottom-right-radius: 4px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-unuseable
	{
	border: 1px solid #fba222;
	color: #fba222;
	border-radius: 8px;
	margin: 4px auto 0;
	height: 24px;
	line-height: 24px;
	background: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-unuseable:hover
	{
	background: #fba222;
	color: #FFF
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough
	{
	background: #fff;
	width: 100%;
	height: 34px;
	border-top: 1px solid #f0f0f0;
	color: #ffa912;
	margin-top: 0;
	line-height: 34px;
	font-size: 18px;
	text-align: right;
	border-bottom-left-radius: 4px;
	border-bottom-right-radius: 4px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .cy-bean-ico
	{
	display: inline-block;
	width: 16px;
	height: 20px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/bean-ico.png);
	margin-left: 4px;
	vertical-align: -3px;
	*vertical-align: 0;
	margin-right: 25px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-msg-gw .print-animate
	{
	display: block;
	position: absolute;
	width: 1920px;
	height: 1080px;
	z-index: 99999;
	max-width: 1920px;
	max-height: 1080px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-msg-gw .signet-oppose,
	#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-msg-gw .signet-support
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/signet-support.png);
	width: 52px;
	height: 52px;
	position: absolute
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-msg-gw .signet-oppose
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/signet-oppose.png)
}

@
keyframes SHAKE { 0%{
	-webkit-transform: scale(0.99, .99);
	-moz-transform: scale(0.99, .99);
	-ms-transform: scale(0.99, .99);
	-o-transform: scale(0.99, .99);
	transform: scale(0.99, .99)
}

25%{
-webkit-transform
:scale
(1
,
1);
-moz-transform
:scale
(1
,
1);
-ms-transform
:scale
(1
,
1);
-o-transform
:scale
(1
,
1);
transform
:scale
(1
,
1)
}
50%{
-webkit-transform
:scale
(0
.995
,
.995
);-moz-transform
:scale
(0
.995
,
.995
);-ms-transform
:scale
(0
.995
,
.995
);-o-transform
:scale
(0
.995
,
.995
);transform
:scale
(0
.995
,
.995
)
}
75%{
-webkit-transform
:scale
(1
,
1);
-moz-transform
:scale
(1
,
1);
-ms-transform
:scale
(1
,
1);
-o-transform
:scale
(1
,
1);
transform
:scale
(1
,
1)
}
100%{
-webkit-transform
:scale
(0
.998
,
.998
);-moz-transform
:scale
(0
.998
,
.998
);-ms-transform
:scale
(0
.998
,
.998
);-o-transform
:scale
(0
.998
,
.998
);transform
:scale
(0
.998
,
.998
)
}
}
.SOHUCS-SHAKE {
	animation-name: SHAKE;
	animation-duration: .3s;
	animation-timing-function: linear;
	animation-iteration-count: 1;
	-webkit-animation-name: SHAKE;
	-webkit-animation-duration: .3s;
	-webkit-animation-timing-function: linear;
	-webkit-animation-iteration-count: 1;
	-moz-animation-name: SHAKE;
	-moz-animation-duration: .3s;
	-moz-animation-timing-function: linear;
	-moz-animation-iteration-count: 1;
	-ms-animation-name: SHAKE;
	-ms-animation-duration: .3s;
	-ms-animation-timing-function: linear;
	-ms-animation-iteration-count: 1;
	-o-animation-name: SHAKE;
	-o-animation-duration: .3s;
	-o-animation-timing-function: linear;
	-o-animation-iteration-count: 1
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .msg-wrap-gw {
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange
	{
	width: 8px;
	height: 12px;
	display: inline-block;
	margin: 0 1px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/number/small.png);
	background-repeat: no-repeat;
	vertical-align: -2px;
	*vertical-align: 0;
	margin-top: 4px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-0
	{
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-1
	{
	background-position: 0 -12px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-2
	{
	background-position: 0 -24px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-3
	{
	background-position: 0 -36px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-4
	{
	background-position: 0 -48px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-5
	{
	background-position: 0 -60px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-6
	{
	background-position: 0 -72px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-7
	{
	background-position: 0 -84px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-8
	{
	background-position: 0 -96px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .prop-item .prop-cost .num-exchange-9
	{
	background-position: 0 -12px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange
	{
	width: 10px;
	height: 16px;
	display: inline-block;
	margin: 0 1px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/number/big.png);
	background-repeat: no-repeat;
	vertical-align: -2px;
	*vertical-align: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-0
	{
	background-position: 0 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-1
	{
	background-position: 0 -16px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-2
	{
	background-position: 0 -32px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-3
	{
	background-position: 0 -48px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-4
	{
	background-position: 0 -64px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-5
	{
	background-position: 0 -80px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-6
	{
	background-position: 0 -96px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-7
	{
	background-position: 0 -112px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-8
	{
	background-position: 0 -128px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .action-click-gw .cy-prop-win .cy-bean-enough .bean-num .num-exchange-9
	{
	background-position: 0 -144px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap {
	position: relative;
	height: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .prop-wrap-hidden {
	height: 100%;
	overflow: hidden;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .icon {
	width: 52px;
	height: 52px;
	position: absolute
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-head-gw {
	position: relative;
	z-index: 1
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw .cont-head-gw .head-img-gw .emoji
	{
	width: 82px;
	height: 82px;
	position: absolute;
	bottom: -15px;
	left: -20px;
	display: none
}

#SOHUCS #SOHU_MAIN .module-cmt-list .block-cont-gw:hover .head-img-gw .emoji
	{
	display: block
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .geili, #SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .geili-0
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/gei-0.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .geili-1 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/gei-1.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .geili-2 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/gei-2.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .geili-3 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/gei-3.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .geili-4 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/gei-4.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .pei, #SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .pei-0
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/pei-0.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .pei-1 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/pei-1.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .pei-2 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/pei-2.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .pei-3 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/pei-3.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .pei-4 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/pei-4.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .dou, #SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .dou-0
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/dou-0.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .dou-1 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/dou-1.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .dou-2 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/dou-2.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .dou-3 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/dou-3.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .dou-4 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/dou-4.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .penzi, #SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .penzi-0
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/penzi-0.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .penzi-1 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/penzi-1.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .penzi-2 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/penzi-2.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .penzi-3 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/penzi-3.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .penzi-4 {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/penzi-4.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-wrap .zizizhuji {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/zizizhuji.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-special .prop-iconlists {
	position: absolute;
	top: -5px;
	right: 0
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-special .prop-iconlists .prop-iconlist
	{
	float: left;
	margin: 0 5px 0 0;
	height: 30px
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-special .prop-iconlists .prop-iconlist .icon
	{
	width: 30px;
	height: 30px;
	position: relative;
	float: left
}

#SOHUCS #SOHU_MAIN .module-cmt-list .prop-special .prop-iconlists .prop-iconlist .iconnum
	{
	font-size: 16px;
	font-style: oblique;
	font-weight: bolder;
	font-family: Arial;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in
	{
	position: relative;
	float: left
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in .btn-sign-in
	{
	width: 80px;
	height: 32px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/qd-bg1.png)
		no-repeat;
	float: left;
	line-height: 31px;
	vertical-align: middle;
	color: #fff;
	cursor: pointer;
	font-family: "Microsoft YaHei";
	font-size: 16px;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in .sign-in-days
	{
	height: 32px;
	float: left;
	padding: 0 16px 0 14px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/qd-bg3.png);
	background-position: top right;
	line-height: 31px;
	vertical-align: middle;
	color: #b0b0b0;
	cursor: pointer;
	font-family: "Microsoft YaHei";
	font-size: 16px;
	text-align: center
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in .sign-in-hover
	{
	display: none;
	position: absolute;
	top: -55px;
	left: -31px;
	height: 47px;
	width: 200px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/qd-hover-bg.png)
		no-repeat;
	padding: 0 15px 7px
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in .sign-in-hover .sign-in-hover-text
	{
	color: #fff;
	float: left;
	width: 140px;
	text-align: center;
	line-height: 38px;
	vertical-align: middle;
	font-family: "Microsoft YaHei";
	font-size: 13px
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in .sign-in-hover .sign-in-hover-icon
	{
	width: 30px;
	height: 30px;
	float: left;
	margin-top: 5px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/qd-bean.png)
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in-active .btn-sign-in
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-prop/051/image/qd-bg2.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-info .cy-user-info-header .cy-user-info .info-btn-group .box-sign-in-active:hover .sign-in-hover
	{
	display: block
}

#SOHUCS #SOHU_MAIN .cy-report {
	position: relative;
	*overflow: hidden;
	width: 404px;
	height: 178px;
	background: #fff
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-title {
	text-align: left;
	padding-left: 20px;
	background-color: #fafafa;
	border-bottom: 1px solid #cfd6dc
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-title span {
	height: 44px;
	line-height: 44px;
	font-weight: 700;
	font-size: 14px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-close {
	position: absolute;
	top: 16px;
	right: 16px;
	background-image:
		url(https://changyan.itc.cn/mdevp/extensions/cy-report/022/images/close.png);
	background-repeat: no-repeat;
	width: 12px;
	height: 12px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-close:hover {
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-reason-item {
	list-style: none;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	margin-right: 80px;
	width: 80px;
	text-align: left;
	margin-top: 14px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-hint {
	display: none;
	padding-top: 48px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-hint-image {
	display: inline-block;
	width: 40px;
	height: 40px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-report/022/images/ok.png)
		no-repeat;
	margin-bottom: 24px;
	margin-left: 182px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-hint-text {
	font-size: 15px;
	font-weight: 600;
	text-align: center
}

#SOHUCS #SOHU_MAIN .cy-report ul {
	font-size: 0;
	margin-left: 80px;
	line-height: 1
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-reason-item .rpt-list-style {
	display: inline-block;
	width: 10px;
	height: 10px;
	border: 1px solid #a9aeb1;
	border-radius: 50%;
	margin-right: 10px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-reason-item .rpt-text {
	font-size: 14px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-submit {
	display: inline-block;
	text-align: center;
	margin-left: 152px
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-submit a {
	display: inline-block;
	height: 28px;
	width: 100px;
	border: 2px solid #50acf9;
	line-height: 28px;
	border-radius: 14px;
	margin-top: 18px;
	font-size: 16px;
	color: #000;
	text-align: center
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-submit:hover {
	cursor: default
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-submit a:hover {
	color: #000;
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .cy-report .rpt-item-selected .rpt-list-style {
	background-color: #51adfa
}

.module-cy-user-notice {
	display: none;
	position: relative
}

.module-cy-user-notice .notice-title {
	padding-left: 24px;
	height: 60px;
	border-bottom: 1px solid #c3cad4;
	line-height: 60px;
	font-size: 20px;
	font-family: "Microsoft YaHei";
	position: relative;
	top: 0;
	left: 0
}

.module-cy-user-notice .notice-info {
	overflow-x: hidden;
	overflow-y: auto;
	position: relative;
	top: 0;
	left: 0
}

.module-cy-user-notice .notice-info ul {
	margin-bottom: 20px
}

.module-cy-user-notice .notice-info .notice-empty {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/notice-empty.png);
	width: 339px;
	height: 431px;
	margin: 145px auto 50px
}

.module-cy-user-notice .notice-info ul.noticeinfo-list {
	position: relative;
	top: 0;
	left: 0
}

.module-cy-user-notice .notice-info .noticeinfo-list li {
	border-bottom: solid 1px #e9f0f5;
	padding: 16px 20px 19px;
	position: relative;
	cursor: pointer
}

.module-cy-user-notice .notice-info .noticeinfo-list li:hover {
	background-color: #f3faff
}

.module-cy-user-notice .notice-info .noticeinfo-list li .info-header {
	margin-bottom: 9px;
	height: 18px;
	line-height: 18px
}

.module-cy-user-notice .notice-info .noticeinfo-list li .info-header .info-type
	{
	float: left;
	font-size: 12px;
	color: #999;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .notice-info .noticeinfo-list li .info-header .kz-name
	{
	float: left;
	font-size: 12px;
	color: #4398ed;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .notice-info .noticeinfo-list li .info-header .notice-time
	{
	float: right
}

.module-cy-user-notice .notice-info .noticeinfo-list li .info-header .notice-time em
	{
	display: inline-block;
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/time-ico.png);
	width: 12px;
	height: 12px;
	vertical-align: -1px;
	*vertical-align: 3px
}

.module-cy-user-notice .notice-info .noticeinfo-list li .info-header .notice-time i
	{
	margin-left: 4px;
	font-style: normal;
	font-size: 12px;
	color: #999;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content
	{
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-family: "Microsoft YaHei";
	padding-right: 120px
}

.module-cy-user-notice .notice-info .noticeinfo-list li .indicator-unread
	{
	display: inline-block;
	width: 6px;
	height: 6px;
	border-radius: 50%;
	background-color: red;
	position: absolute;
	bottom: 25px;
	right: 20px
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content span
	{
	font-size: 16px;
	line-height: 21px;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content a
	{
	font-size: 16px;
	line-height: 21px;
	font-family: "Microsoft YaHei";
	color: #4398ed;
	text-decoration: none
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content a.link-mall,
	.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content a.link-paper
	{
	font-size: 14px;
	text-decoration: underline;
	cursor: pointer;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content a.link-mall
	{
	color: #38a3fd
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content a.link-paper
	{
	color: #465e72
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content a.notice-user
	{
	font-size: 16px;
	color: #38a3fd;
	font-family: "Microsoft YaHei";
	text-decoration: none;
	cursor: pointer
}

.module-cy-user-page .cy-tab-list li .cy-notice-ico {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/tab-list-notice.png)
}

.module-cy-user-page .cy-tab-list li.active .cy-notice-ico,
	.module-cy-user-page .cy-tab-list li.notice-li:hover .cy-notice-ico {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/tab-list-icon-active-notice.png)
}

.module-cy-user-page .cy-tab-list li.notice-li:hover i {
	color: #38a3fd
}

.module-cy-user-notice .noticeinfo-detail {
	position: absolute;
	width: 100%;
	height: 100%;
	overflow-y: auto;
	overflow-x: hidden;
	background-color: #fff;
	top: 0;
	left: 0;
	padding: 0 0 10px;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .noticeinfo-detail .notice-detail-title {
	padding-left: 24px;
	height: 60px;
	border-bottom: 1px solid #c3cad4;
	line-height: 60px;
	font-size: 20px;
	font-family: "Microsoft YaHei";
	width: 100%;
	background-color: #fff;
	position: relative;
	top: 0;
	left: 0
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap {
	position: relative;
	left: 0;
	top: 0;
	min-height: 300px
}

.module-cy-user-notice .noticeinfo-detail a.notice-back {
	display: inline-block;
	width: 40px;
	height: 100%;
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/back.png);
	background-repeat: no-repeat;
	background-position: 0 16px;
	cursor: pointer
}

.module-cy-user-notice .noticeinfo-detail .comment-desc {
	font-size: 16px;
	padding: 18px 18px 8px
}

.module-cy-user-notice .noticeinfo-detail .comment-desc span {
	font-weight: 700
}

.module-cy-user-notice .noticeinfo-detail .comment-detail-wrap {
	padding: 8px 18px;
	position: relative;
	left: 0;
	top: 0
}

.module-cy-user-notice .noticeinfo-detail .comment-detail {
	position: relative;
	left: 0;
	top: 0;
	margin: 8px 0;
	font-size: 16px;
	background-color: #FAFAFA;
	border: 1px solid #F2F2F2;
	padding: 10px 0 10px 75px
}

.module-cy-user-notice .noticeinfo-detail .comment-detail .comment-user-figure
	{
	position: absolute;
	top: 18px;
	left: 18px;
	width: 40px;
	height: 40px;
	border-radius: 3px;
	overflow: hidden
}

.module-cy-user-notice .noticeinfo-detail .comment-detail .comment-user-figure img
	{
	width: 100%;
	height: 100%
}

.module-cy-user-notice .noticeinfo-detail .comment-detail .comment-user-name
	{
	padding: 8px 0;
	margin: 0;
	position: relative
}

.module-cy-user-notice .noticeinfo-detail .comment-detail .comment-user-name a
	{
	color: #38a3fd;
	text-decoration: none
}

.module-cy-user-notice .noticeinfo-detail .comment-detail .comment-content
	{
	padding: 8px 0;
	margin-right: 20px;
	line-height: 20px
}

.module-cy-user-notice .noticeinfo-detail .comment-detail a.comment-subhead
	{
	font-size: 14px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	display: block;
	margin-right: 20px;
	padding: 8px 0;
	text-decoration: none
}

.module-cy-user-notice .noticeinfo-detail .comment-detail .comment-attrs
	{
	padding-right: 20px;
	height: 16px
}

.module-cy-user-notice .noticeinfo-detail .comment-attrs .comment-site {
	font-size: 12px;
	text-decoration: none;
	color: #aaa;
	float: left;
	line-height: 16px;
	display: inline-block;
	height: 16px;
	vertical-align: bottom;
	*zoom: 1;
	_zoom: 1;
	*display: inline;
	_display: inline
}

.module-cy-user-notice .noticeinfo-detail .comment-attrs .comment-time {
	float: right;
	display: inline-block;
	line-height: 16px;
	height: 16px;
	vertical-align: bottom;
	*zoom: 1;
	_zoom: 1;
	*display: inline;
	_display: inline
}

.module-cy-user-notice .noticeinfo-detail .comment-attrs .comment-time em
	{
	display: inline-block;
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/time-ico.png);
	width: 12px;
	height: 12px;
	vertical-align: -1px;
	*vertical-align: 3px
}

.module-cy-user-notice .noticeinfo-detail .comment-attrs .comment-time i
	{
	margin-left: 4px;
	font-style: normal;
	font-size: 12px;
	color: #aaa;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .noticeinfo-detail .comment-attrs .clear-f {
	float: none;
	display: none
}

.module-cy-user-notice .noticeinfo-detail .comment-remark-header-wrap {
	height: 24px;
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/remark-bg.gif);
	background-position: 0 6px;
	background-repeat-x: none;
	background-repeat-y: no-repeat;
	margin: 0 40px;
	text-align: center
}

.module-cy-user-notice .noticeinfo-detail .comment-remark-header {
	border-right: 12px solid #fff;
	display: inline-block;
	background-color: #fff;
	font-size: 16px;
	color: #ffb026;
	border-left: 12px solid #fff;
	line-height: 24px;
	*zoom: 1;
	_zoom: 1;
	*display: inline;
	_display: inline
}

.module-cy-user-notice .noticeinfo-detail .comment-remark-content {
	text-align: center;
	padding: 15px 20px;
	font-size: 20px;
	line-height: 24px
}

.module-cy-user-notice .noticeinfo-detail ul.comment-props {
	padding-top: 32px;
	position: relative;
	left: 0;
	top: 0
}

.module-cy-user-notice .noticeinfo-detail ul.comment-props li.comment-prop
	{
	height: 60px;
	padding: 0 40px;
	position: relative;
	left: 0;
	top: 0;
	margin-bottom: 40px
}

.module-cy-user-notice .noticeinfo-detail .prop-bar {
	border: 28px 0;
	border-top: 28px solid #fff;
	border-bottom: 28px solid #fff;
	height: 4px;
	display: inline-block;
	position: absolute;
	width: 0
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg {
	border-top: 28px solid #fff;
	border-bottom: 28px solid #fff;
	height: 4px;
	width: auto;
	margin: auto
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg-1 {
	background-color: #fee2e2
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg-2 {
	background-color: #d7edff
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg-3 {
	background-color: #f9e9d1
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg-4 {
	background-color: #d9e5fc
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg-5 {
	background-color: #ffdcdc
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg-6 {
	background-color: #d9e5fc
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-bg-7 {
	background-color: #d7edff
}

.module-cy-user-notice .noticeinfo-detail .prop-label {
	position: absolute;
	top: 3px;
	left: 0;
	width: 54px;
	height: 54px;
	text-align: center;
	color: #fff;
	background-repeat: no-repeat;
	background-size: 100% 100%
}

.module-cy-user-notice .noticeinfo-detail .prop-label-1 {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/prop-bar-1.png)
}

.module-cy-user-notice .noticeinfo-detail .prop-label-2 {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/prop-bar-2.png)
}

.module-cy-user-notice .noticeinfo-detail .prop-label-3 {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/prop-bar-3.png)
}

.module-cy-user-notice .noticeinfo-detail .prop-label-4 {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/prop-bar-4.png)
}

.module-cy-user-notice .noticeinfo-detail .prop-label-5 {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/prop-bar-5.png)
}

.module-cy-user-notice .noticeinfo-detail .prop-label-6 {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/prop-bar-6.png)
}

.module-cy-user-notice .noticeinfo-detail .prop-label-7 {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/prop-bar-7.png)
}

.module-cy-user-notice .noticeinfo-detail .prop-label .prop-label-text {
	position: absolute;
	top: -32px;
	left: -27px;
	height: 32px;
	width: 108px;
	line-height: 32px;
	text-align: center;
	font-size: 16px;
	border-radius: 3px
}

.module-cy-user-notice .noticeinfo-detail .prop-label .prop-label-text i
	{
	padding: 0 4px;
	font-size: 12px
}

.module-cy-user-notice .noticeinfo-detail .prop-label .prop-label-arrow
	{
	position: absolute;
	width: 0;
	height: 0;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	top: 0;
	left: 21px
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-1,
	.module-cy-user-notice .noticeinfo-detail .prop-label-1 .prop-label-text
	{
	background-color: #eb6d6d
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-2,
	.module-cy-user-notice .noticeinfo-detail .prop-label-2 .prop-label-text
	{
	background-color: #6db1eb
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-3,
	.module-cy-user-notice .noticeinfo-detail .prop-label-3 .prop-label-text
	{
	background-color: #ff9c00
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-4,
	.module-cy-user-notice .noticeinfo-detail .prop-label-4 .prop-label-text
	{
	background-color: #3e82ff
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-5,
	.module-cy-user-notice .noticeinfo-detail .prop-label-5 .prop-label-text
	{
	background-color: #fd3838
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-6,
	.module-cy-user-notice .noticeinfo-detail .prop-label-6 .prop-label-text
	{
	background-color: #3e82ff
}

.module-cy-user-notice .noticeinfo-detail .prop-bar-7,
	.module-cy-user-notice .noticeinfo-detail .prop-label-7 .prop-label-text
	{
	background-color: #6db1eb
}

.module-cy-user-notice .noticeinfo-detail .prop-label-1 .prop-label-arrow
	{
	border-top: 4px solid #eb6d6d
}

.module-cy-user-notice .noticeinfo-detail .prop-label-2 .prop-label-arrow
	{
	border-top: 4px solid #6db1eb
}

.module-cy-user-notice .noticeinfo-detail .prop-label-3 .prop-label-arrow
	{
	border-top: 4px solid #ff9c00
}

.module-cy-user-notice .noticeinfo-detail .prop-label-4 .prop-label-arrow
	{
	border-top: 4px solid #3e82ff
}

.module-cy-user-notice .noticeinfo-detail .prop-label-5 .prop-label-arrow
	{
	border-top: 4px solid #fd3838
}

.module-cy-user-notice .noticeinfo-detail .prop-label-6 .prop-label-arrow
	{
	border-top: 4px solid #3e82ff
}

.module-cy-user-notice .noticeinfo-detail .prop-label-7 .prop-label-arrow
	{
	border-top: 4px solid #6db1eb
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content .feedback-content-wrap
	{
	display: inline-block;
	font-size: 100%;
	line-height: 1
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content .feedback-content-wrap span
	{
	font-size: 14px
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content .feedback-content
	{
	display: inline-block;
	max-width: 168px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	line-height: 1;
	color: #4398ed
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content .feedback-result-content
	{
	font-size: 14px;
	line-height: 21px;
	color: #b0b0b0
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content .feedback-content img
	{
	vertical-align: -1px;
	*vertical-align: 0
}

.module-cy-user-notice .notice-info .noticeinfo-list li .notice-content .feedback-note
	{
	color: #38a3fd
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap .official-reply-wrap
	{
	margin: 18px 18px 2px;
	font-size: 16px
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap .official-reply-wrap .feedback-title
	{
	display: block
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap .official-reply-wrap .official-reply
	{
	display: block;
	margin-top: 20px;
	line-height: 20px
}

.module-cy-user-notice .noticeinfo-detail .feedback-content-warp .comment-detail
	{
	padding: 0
}

.module-cy-user-notice .noticeinfo-detail .feedback-content-warp .comment-detail .reply-content
	{
	padding: 10px 25px 10px 10px;
	line-height: 20px;
	color: #a6a6a6;
	margin-bottom: 25px
}

.module-cy-user-notice .noticeinfo-detail .feedback-content-warp .comment-detail .feedback-time
	{
	position: absolute;
	right: 25px;
	bottom: 10px
}

.module-cy-user-notice .noticeinfo-detail .feedback-content-warp .comment-detail .feedback-time em
	{
	display: inline-block;
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/time-ico.png);
	width: 12px;
	height: 12px;
	vertical-align: -1px;
	*vertical-align: 3px
}

.module-cy-user-notice .noticeinfo-detail .feedback-content-warp .comment-detail .feedback-time i
	{
	margin-left: 4px;
	font-style: normal;
	font-size: 12px;
	color: #999;
	font-family: "Microsoft YaHei"
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap .feedback-extra
	{
	font-size: 16px;
	margin: 0 18px 0 30px
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap .feedback-qrcode-wrap
	{
	margin-top: 24px;
	text-align: center
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap .feedback-qrcode-wrap .feedback-qrcode
	{
	display: block;
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-notice/045/image/qrcode.jpg);
	width: 258px;
	height: 258px;
	margin: 0 auto
}

.module-cy-user-notice .noticeinfo-detail .notice-content-wrap .feedback-qrcode-wrap .feedback-qrnote
	{
	display: inline-block;
	font-size: 16px;
	margin: 10px 0
}

.module-cy-user-page .cy-tab-list li .cy-feedback-ico {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/tab-list-icon5.png)
		no-repeat
}

.module-cy-user-page .cy-tab-list .feedback-li:hover .cy-feedback-ico {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/tab-list-icon-active5.png)
		no-repeat
}

.module-cy-user-page .cy-tab-list .feedback-li:hover .feedback-text {
	color: #38a3fd
}

.module-cy-user-page .cy-tab-list li.active .cy-feedback-ico {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/tab-list-icon-active5.png)
		no-repeat
}

.module-cy-user-page .cy-tab-list li.active .feedback-text {
	color: #38a3fd
}

.module-cy-user-page .module-cy-user-feedback {
	height: 100%;
	overflow-x: hidden;
	overflow-y: auto;
	display: none;
	position: relative
}

.module-cy-user-page .module-cy-user-feedback input:hover {
	cursor: text
}

.module-cy-user-page .module-cy-user-feedback .main {
	width: 100%;
	height: 100%;
	font-family: "microsoft yahei";
	position: relative;
	min-height: 640px;
	overflow-y: auto;
	overflow-x: hidden
}

.module-cy-user-page .module-cy-user-feedback .title {
	width: 100%;
	height: 60px;
	line-height: 60px;
	padding: 0 0 0 25px;
	font-size: 20px;
	font-family: "microsoft yahei";
	margin-bottom: -60px
}

.module-cy-user-page .module-cy-user-feedback .form {
	width: 100%;
	margin: 60px 0 0;
	border: solid #ccc 1px;
	border-width: 1px 0 0;
	padding: 40px 0 0 25px
}

.module-cy-user-page .module-cy-user-feedback .form .faq {
	font-size: 16px;
	font-family: "microsoft yahei"
}

.module-cy-user-page .module-cy-user-feedback .form .faq-questions {
	margin: 10px 0 0;
	font-size: 16px;
	font-family: "microsoft yahei";
	overflow: hidden
}

.module-cy-user-page .module-cy-user-feedback .form .faq-questions .faq-question
	{
	float: left;
	width: 278px;
	margin: 10px 0 0;
	font-family: "microsoft yahei";
	font-size: 14px;
	color: #666;
	cursor: pointer;
	line-height: 1
}

.module-cy-user-page .module-cy-user-feedback .form .faq-questions .faq-question:hover
	{
	color: #5eb0fd
}

.module-cy-user-page .module-cy-user-feedback .form .faq-questions .faq-question .point
	{
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/point.png)
		no-repeat;
	width: 4px;
	height: 4px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: middle;
	position: static;
	margin: 0 6px 0 0
}

.module-cy-user-page .module-cy-user-feedback .form .faq-questions .faq-question:hover .point
	{
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/point-hover.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-feedback .form .question {
	font-size: 16px;
	font-family: "microsoft yahei";
	margin: 40px 0 0
}

.module-cy-user-page .module-cy-user-feedback .form .questionCon {
	margin-top: 20px;
	padding: 10px 0 10px 10px;
	width: 560px;
	height: 140px;
	border-radius: 3px;
	resize: none;
	font-family: "microsoft yahei";
	border: solid #ccc 1px;
	overflow: auto;
	font-size: 14px;
	text-align: left;
	line-height: normal
}

.module-cy-user-page .module-cy-user-feedback .link {
	width: 560px;
	margin: 40px 0 0;
	font-family: "microsoft yahei";
	line-height: 1;
	background-color: #fff
}

.module-cy-user-page .module-cy-user-feedback .link .phone {
	font-size: 16px
}

.module-cy-user-page .module-cy-user-feedback .link .select {
	float: right;
	color: #ccc
}

.module-cy-user-page .module-cy-user-feedback .link .text {
	width: 100%;
	height: 38px;
	line-height: 38px;
	margin: 20px 0 0;
	padding-left: 10px;
	border: solid #ccc 1px;
	border-radius: 3px;
	font-size: 14px;
	font-family: microsoft yahei
}

.module-cy-user-page .module-cy-user-feedback .tip {
	height: 36px;
	line-height: 36px;
	background-color: #e9eef1;
	font-size: 14px;
	bottom: 70px;
	display: none
}

.module-cy-user-page .module-cy-user-feedback .tip .ok {
	width: 14px;
	height: 14px;
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/ok.png)
		no-repeat;
	vertical-align: middle;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	margin: 0 0 0 10px
}

.module-cy-user-page .module-cy-user-feedback .tip .error {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/error.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-feedback .tip .tipText {
	margin: 0 10px 0 0
}

.module-cy-user-page .module-cy-user-feedback .button {
	width: 100%;
	height: 50px;
	line-height: 50px;
	bottom: 0;
	border: solid #ccc 1px;
	border-width: 1px 0 0;
	padding: 0 0 0 25px
}

.module-cy-user-page .module-cy-user-feedback .button .confirm {
	width: 84px;
	height: 32px;
	line-height: 32px;
	color: #51acf9;
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/btn.png)
		no-repeat;
	vertical-align: top;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	font-size: 16px;
	font-weight: 500;
	text-align: center;
	cursor: pointer;
	margin: 9px 0 0
}

.module-cy-user-page .module-cy-user-feedback .button .confirm:hover {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/btn-hover.png)
		no-repeat;
	color: #fff
}

.module-cy-user-page .module-cy-user-feedback .button .confirm-click,
	.module-cy-user-page .module-cy-user-feedback .button .confirm-click:hover
	{
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/btn-already.png)
		no-repeat;
	color: #9fa8b3
}

.module-cy-user-page .module-cy-user-feedback .feedback-second {
	width: 100%
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .feedback-detail-title
	{
	width: 100%;
	height: 59px;
	line-height: 54px;
	border: 1px solid #c3cad4;
	border-width: 0 0 1px
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .feedback-detail-title .feedback-back
	{
	display: inline-block;
	*display: inline;
	*zoom: 1;
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/back.png)
		no-repeat;
	width: 35px;
	height: 28px;
	margin: 0 0 0 24px;
	vertical-align: middle;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .faq-lists
	{
	margin: 0 0 0 30px
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .faq-lists .faq
	{
	margin: 16px 0 0;
	width: 550px;
	padding-bottom: 21px;
	border-bottom: 1px solid #e9f0f5
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .faq-lists .faq .faq-title
	{
	font-size: 16px;
	height: 20px;
	line-height: 20px
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .faq-lists .faq .faq-title .title-bar
	{
	width: 3px;
	height: 20px;
	background-color: #38a3fd;
	border-radius: 2px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: middle
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .faq-lists .faq .faq-title .title-text
	{
	margin: 0 0 0 7px;
	font-family: microsoft yahei
}

.module-cy-user-page .module-cy-user-feedback .feedback-second .faq-lists .faq .faq-detail
	{
	margin: 19px 0 0;
	font-size: 14px;
	color: #959595;
	line-height: 21px
}

.module-cy-user-page .module-cy-user-feedback .photo {
	width: 560px;
	margin: 40px 0 0;
	font-family: "microsoft yahei";
	line-height: 1;
	background-color: #fff
}

.module-cy-user-page .module-cy-user-feedback .photo .add-img {
	font-size: 16px
}

.module-cy-user-page .module-cy-user-feedback .photo .select {
	float: right;
	color: #ccc
}

.module-cy-user-page .module-cy-user-feedback .photo .img-container {
	margin-top: 20px
}

.module-cy-user-page .module-cy-user-feedback .photo .img-preview-content
	{
	display: inline-block;
	position: relative;
	*display: inline;
	*zoom: 1
}

.module-cy-user-page .module-cy-user-feedback .photo .img-preview-content:hover .remove-img
	{
	display: inline-block;
	*display: inline;
	*zoom: 1
}

.module-cy-user-page .module-cy-user-feedback .photo .img-preview-content .remove-img
	{
	position: absolute;
	top: 0;
	left: 0;
	font-size: 16px;
	width: 80px;
	height: 80px;
	line-height: 80px;
	text-align: center;
	background-color: rgba(0, 0, 0, .6);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	color: #fff;
	cursor: pointer;
	display: none
}

.module-cy-user-page .module-cy-user-feedback .photo .img-preview {
	margin-right: 16px;
	width: 80px;
	height: 80px
}

.module-cy-user-page .module-cy-user-feedback .photo .upload-img {
	background:
		url(//changyan.sohu.com/mdevp/extensions/cy-user-feedback/047/image/add-img.png)
		no-repeat;
	width: 80px;
	height: 80px;
	cursor: pointer;
	vertical-align: middle;
	display: inline-block;
	*display: inline;
	*zoom: 1
}

.module-cy-user-page .module-cy-user-feedback .photo .img-upload-tip {
	line-height: 28px;
	height: 28px;
	font-size: 14px;
	color: #ccc
}

.module-cy-user-page .cy-tab-list li .cy-set-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/set-icon.png)
		no-repeat
}

.module-cy-user-page .cy-tab-list .set-li:hover .cy-set-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/set-icon-active.png)
		no-repeat
}

.module-cy-user-page .cy-tab-list .set-li:hover .set-text {
	color: #38a3fd
}

.module-cy-user-page .cy-tab-list li.active .cy-set-ico {
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/set-icon-active.png)
		no-repeat
}

.module-cy-user-page .cy-tab-list li.active .set-text {
	color: #38a3fd
}

.module-cy-user-page .module-cy-user-set {
	display: none;
	height: 100%;
	position: relative;
	overflow-x: hidden;
	overflow-y: auto
}

.cy-clearfix:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden
}

.cy-clearfix {
	zoom: 1
}

.module-cy-user-page .module-cy-user-set .set-header-s {
	width: 100%;
	height: 60px;
	padding: 0 0 0 25px;
	font-family: "microsoft yahei";
	margin-bottom: 40px;
	border-bottom: 1px solid #c3cad4
}

.module-cy-user-page .module-cy-user-set .set-header-s .set-title-s {
	display: inline;
	line-height: 60px;
	font-size: 20px;
	color: #111
}

.module-cy-user-page .module-cy-user-set .set-header-s .set-logout-s {
	float: right;
	margin: 21px 35px 0 0;
	line-height: 18px;
	font-size: 16px;
	color: #999;
	cursor: pointer
}

.module-cy-user-page .module-cy-user-set .set-header-s .set-logout-s .logout-ico
	{
	width: 15px;
	height: 18px;
	float: left;
	margin-right: 7px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/logout.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-set .set-header-s .set-logout-s:hover
	{
	color: #e74851
}

.module-cy-user-page .module-cy-user-set .set-header-s .set-logout-s:hover .logout-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/logout-hover.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-set .set-container-s .set-remind {
	float: left;
	width: 160px;
	text-align: center;
	margin-top: 10px;
	font-size: 15px
}

.module-cy-user-page .module-cy-user-set .set-container-s .setlists {
	margin-left: 160px;
	overflow: hidden
}

.module-cy-user-page .module-cy-user-set .set-container-s .setlists .setlist
	{
	line-height: 36px !important;
	vertical-align: middle;
	font-size: 15px
}

.module-cy-user-page .module-cy-user-set .set-container-s .setlists .setlist .remind-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/btn.png)
		no-repeat;
	width: 16px;
	height: 16px;
	float: left;
	margin: 10px;
	color: #000
}

.module-cy-user-page .module-cy-user-set .set-container-s .setlists .setlist .remind-hover-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/btn-hover.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-set .set-container-s .setlists .setlist .remind-click-ico
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/btn-click.png)
		no-repeat
}

.module-cy-user-page .module-cy-user-set .set-container-s .set-tip {
	height: 36px;
	line-height: 36px;
	background-color: #e9eef1;
	font-size: 14px;
	position: absolute;
	bottom: 65px;
	left: 25px;
	display: none
}

.module-cy-user-page .module-cy-user-set .set-container-s .set-tip .ok {
	width: 14px;
	height: 14px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/ok.png)
		no-repeat;
	vertical-align: middle;
	display: inline-block;
	margin: 0 0 0 10px
}

.module-cy-user-page .module-cy-user-set .set-container-s .set-tip .tipText
	{
	margin: 0 10px 0 0
}

.module-cy-user-page .module-cy-user-set .set-bottom-s {
	width: 100%;
	height: 50px;
	line-height: 50px;
	position: absolute;
	bottom: 0;
	border: solid #ccc 1px;
	border-width: 1px 0 0;
	padding: 0 0 0 25px
}

.module-cy-user-page .module-cy-user-set .set-bottom-s .set-submit {
	width: 84px;
	height: 32px;
	line-height: 32px;
	color: #51acf9;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/sumbit-btn.png)
		no-repeat;
	vertical-align: top;
	display: inline-block;
	font-size: 16px;
	font-weight: 500;
	text-align: center;
	cursor: pointer;
	margin: 9px 0 0
}

.module-cy-user-page .module-cy-user-set .set-bottom-s .set-submit:hover
	{
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cy-user-set/008/images/sumbit-btn-hover.png)
		no-repeat;
	color: #fff
}

#SOHUCS #SOHU_MAIN .module-cmt-notice-dot, .module-cmt-notice-dot {
	z-index: 1000;
	display: block;
	width: 4px;
	height: 4px;
	background-color: #F74F4F;
	border-radius: 2px;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-notice-bubble, .module-cmt-notice-bubble
	{
	z-index: 1000;
	display: block;
	min-width: 12px;
	height: 16px;
	line-height: 16px;
	padding: 0 2px;
	text-align: center;
	font-size: 12px;
	font-style: normal;
	font-family: arial;
	color: #FFF;
	background-color: #F74F4F;
	border-radius: 8px;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .module-cmt-notice {
	position: fixed;
	right: 0;
	bottom: 0;
	padding: 38px 0;
	font-family: "Microsoft YaHei";
	z-index: 999999
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list {
	max-width: 300px;
	text-align: right;
	overflow: visible;
	position: relative
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item {
	position: relative;
	display: inline-block;
	max-width: 260px;
	min-width: 200px;
	height: 38px;
	line-height: 38px;
	background-color: #fff;
	color: #000 !important;
	margin: 5px 0 5px 10px;
	padding-left: 36px;
	padding-right: 30px;
	border: 1px solid #4398ed;
	border-right: 0;
	text-decoration: none;
	cursor: pointer;
	font-size: 15px
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item .nt-logo {
	position: absolute;
	top: -1px;
	left: -20px;
	width: 40px;
	height: 40px;
	background:
		url(https://changyan.itc.cn/mdevp/extensions/cmt-notice/022/images/notice-logo.png)
		no-repeat
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item .nt-text {
	color: #4398ed !important;
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .module-cmt-notice ul.nt-list li.nt-item .nt-text i {
	color: #4398ed !important;
	padding: 0 4px;
	font-weight: bolder;
	font-size: 17px;
	font-family: "Microsoft YaHei"
}

#SOHUCS #SOHU_MAIN .module-cmt-notice .nt-close {
	display: inline-block;
	position: absolute;
	right: 11px;
	top: 11px;
	width: 16px;
	height: 16px;
	background: transparent
		url(https://changyan.itc.cn/mdevp/extensions/cmt-notice/022/images/notice-close.png)
		no-repeat
}

.module-cy-user-page .module-cmt-notice-dot {
	position: absolute;
	top: 0;
	right: 6px;
	width: 6px;
	height: 6px;
	background-color: #F74F4F;
	border-radius: 6px
}

.module-cy-user-page .module-cmt-notice-bubble {
	display: inline-block;
	position: absolute;
	min-width: 12px;
	height: 16px;
	line-height: 16px;
	padding: 0 2px;
	text-align: center;
	font-size: 12px;
	font-style: normal;
	font-family: arial;
	color: #FFF;
	background-color: #F74F4F;
	border-radius: 16px;
	margin-left: 4px
}

.module-cmt-float-bar .module-cmt-notice-bubble {
	position: absolute;
	top: -8px;
	*top: -4px;
	left: 20px;
	min-width: 12px;
	height: 16px;
	line-height: 16px;
	padding: 0 2px;
	text-align: center;
	font-size: 12px;
	font-style: normal;
	font-family: arial;
	color: #FFF;
	background-color: #F74F4F;
	border-radius: 8px
}

#SOHUCS #SOHU_MAIN .more-comment {
	padding: 0 0 17px
}

#SOHUCS #SOHU_MAIN .more-comment a {
	color: #95c0f3;
	background-color: #ecf4fd;
	padding: 5px 0;
	line-height: 18px;
	display: block;
	text-align: center;
	font-family: "宋体"
}

#SOHUCS #SOHU_MAIN .more-comment a:hover {
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .more-comment a em {
	font-family: Impact;
	font-size: 20px;
	color: #95c0f3;
	margin: 0 6px;
	vertical-align: -2px;
	*vertical-align: 0
}

#SOHUCS #SOHU_MAIN .module-sohu-treaty .title-link-w {
	padding: 18px 0 0;
	font-size: 12px;
	color: #ccd3d9;
	text-align: right
}

#SOHUCS #SOHU_MAIN .module-sohu-treaty .title-link-w a {
	display: inline-block;
	line-height: 16px;
	color: #c9c9c9
}

#SOHUCS #SOHU_MAIN .module-sohu-treaty .title-link-w a:hover {
	text-decoration: underline
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw {
	width: 400px;
	height: 254px;
	border: 1px solid #ccd4d9;
	background-color: #fff;
	font-size: 12px
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-title-dw {
	height: 30px;
	line-height: 18px;
	padding: 14px 0 0;
	background-color: #fafafa;
	border-bottom: 1px solid #ccd4d9
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-title-dw .title-close-dw
	{
	float: right;
	width: 18px;
	height: 18px;
	overflow: hidden;
	margin: 0 12px 0 0;
	background:
		url(//changyan.sohu.com/mdevp/extensions/phone-verify/004/image/b17.png);
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-title-dw .title-close-dw:hover
	{
	background:
		url(//changyan.sohu.com/mdevp/extensions/phone-verify/004/image/b18.png)
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-title-dw .title-name-dw
	{
	font-size: 14px;
	font-weight: 700;
	display: inline-block;
	padding: 0 0 0 20px;
	color: #333
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-form-dw {
	padding: 30px 0 0;
	height: 33px;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-form-dw .form-name-dw {
	float: left;
	line-height: 16px;
	padding: 9px 12px 0 0;
	width: 90px;
	text-align: right;
	font-size: 14px;
	color: #333
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-form-dw .form-action-dw .action-text-dfw
	{
	width: 254px;
	height: 31px;
	line-height: 31px;
	padding: 0 0 0 8px;
	font-size: 14px;
	float: left;
	vertical-align: -4px;
	border: 1px solid #ccd4d9;
	color: #333
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-prompt-dw {
	height: 16px;
	line-height: 16px;
	overflow: hidden;
	padding: 0 0 0 102px !important;
	margin: 5px 0 4px;
	color: #ee542a
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-verify-dw {
	height: 33px;
	overflow: hidden
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-verify-dw .verify-name-dw
	{
	float: left;
	font-size: 14px;
	line-height: 16px;
	padding: 9px 12px 0 0;
	text-align: right;
	width: 90px;
	color: #333
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-verify-dw .verify-action-dw .action-text-dfw
	{
	float: left;
	font-size: 14px;
	height: 31px;
	line-height: 31px;
	padding: 0 0 0 8px;
	width: 98px;
	border: 1px solid #ccd4d9;
	color: #333
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-verify-dw .verify-action-dw .verify-btn-dw
	{
	float: left;
	width: 146px;
	height: 33px;
	overflow: hidden;
	line-height: 34px;
	margin-left: 10px;
	text-align: center;
	color: #fff;
	background-color: #5488af;
	font-size: 14px;
	cursor: pointer
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-verify-dw .verify-action-dw .verify-time-dw
	{
	display: none;
	float: left;
	width: 134px;
	height: 31px;
	overflow: hidden;
	line-height: 32px;
	margin-left: 10px;
	padding: 0 5px;
	border: 1px solid #d1d2d4;
	color: #9a9a9a;
	background-color: #f5f6f8
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-btn-dw {
	height: 33px;
	overflow: hidden;
	padding: 0 0 0 102px
}

div.windows-define-dg a {
	color: #44708e;
	text-decoration: none
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-btn-dw .btn-dfw {
	width: 78px;
	height: 33px;
	padding: 0;
	cursor: pointer;
	border: 0;
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/phone-verify/004/image/bg11.gif)
}

#SOHUCS #SOHU_MAIN .bind-phone-wrapper-dw .cont-btn-dw .btn-dfw:hover {
	background-image:
		url(//changyan.sohu.com/mdevp/extensions/phone-verify/004/image/bg12.gif)
}

#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .module-prop-prompt
	{
	width: 181px;
	height: 80px;
	background:
		url(//changyan.sohu.com/mdevp/extensions/first-login-prompt/003/image/prompt-prop.png);
	position: absolute;
	right: 10px;
	top: -84px
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .module-person-page-prompt
	{
	width: 193px;
	height: 80px;
	background:
		url(//changyan.sohu.com/mdevp/extensions/first-login-prompt/003/image/prompt-person-page.png);
	position: absolute;
	top: 40px;
	left: 56px
}

#SOHUCS #SOHU_MAIN .module-cmt-header .section-cbox-w .block-head-w .module-person-page-prompt .prompt-close-btn,
	#SOHUCS #SOHU_MAIN .module-cmt-list .wrap-action-gw .action-click-gw .module-prop-prompt .prompt-close-btn
	{
	width: 14px;
	height: 14px;
	display: block;
	position: absolute;
	right: 0;
	top: 0;
	cursor: pointer
}
</style>
</head>
<body>
	<%@ include file="/public/header.jsp"%>
	<article class="aboutcon">
		<h1 class="t_nav">
			<span>你，生命中最重要的过客，之所以是过客，因为你未曾为我停留。</span> <a
				href="http://wll.kuvip.top/" class="n1">网站首页</a><a
				href="http://wll.kuvip.top/e/tool/gbook/?bid=1#" class="n2">留言版</a>
		</h1>
		<div class="book left">
			<!--高速版-->
			<!--PC版-->
			<div id="SOHUCS" sid="00101"></div>
			<script charset="utf-8" type="text/javascript"
				src="https://changyan.sohu.com/upload/changyan.js"></script>
			<script type="text/javascript">
				window.changyan.api.config({
				appid: 'cytmzVekL',
				conf: 'prod_ce79614696b4fc22a0f61cdccd5a03c3'
				});
				</script>
		</div>
		<aside class="right">
			<div class="about_c">
				<p>
					网名：<span>DanceSmile</span> | 即步非烟
				</p>
				<p>姓名：吴亮亮</p>
				<p>籍贯：湖南省</p>
				<p>现居：湘潭市—岳塘</p>
				<p>职业：学生</p>
				<!-- a target="_blank"
						href="http://wp.qq.com/wpa/qunwpa?idkey=d4d4a26952d46d564ee5bf7782743a70d5a8c405f4f9a33a60b0eec380743c64">
						<img src="http://pub.idqqimg.com/wpa/images/group.png"
						alt="吴亮亮个人博客网站" title="吴亮亮个人博客网站">
					</a> <a target="_blank"
						href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&amp;email=HHh9cn95b3F1cHVye1xtbTJ-c3E"><img
						src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_22.png"
						alt="吴亮亮个人博客网站"></a -->
			</div>
		</aside>
	</article>
	<%@ include file="/public/info.jsp"%>
</body>
</html>