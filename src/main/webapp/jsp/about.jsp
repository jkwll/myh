<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta charset="utf-8">
<title>吴亮亮个人博客网站—一个正在学习路上的程序员个人博客网站</title>
<meta name="keywords" content="个人博客,吴亮亮个人博客,个人博客模板,吴亮亮" />
<meta name="description" content="一个正在学习路上的程序员个人博客网站" />
<link href="${ pageContext.request.contextPath }/css/base.css"
	rel="stylesheet">
<link href="${ pageContext.request.contextPath }/css/about.css"
	rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
	<%@ include file="/public/header.jsp"%>
	<article class="aboutcon">
		<h1 class="t_nav">
			<span>像“草根”一样，紧贴着地面，低调的存在，冬去春来，枯荣无恙。</span><a href="/" class="n1">网站首页</a><a
				href="/" class="n2">关于我</a>
		</h1>
		<div class="about left">
			<h2>Just about me</h2>
			<ul>
				<p>关于我，一个网瘾少年~ 混迹网络多年！热衷于编程</p>

			</ul>
			<h2>About my blog</h2>
			<p>
				域 名：wull.top 创建于2017年11月 <a href="/" class="blog_link"
					target="_blank">注册域名</a>
			</p>
			<p>
				服务器：阿里云服务器<a href="/" class="blog_link" target="_blank">购买空间</a>
			</p>
		</div>
		<aside class="right">
			<div class="about_c">
				<p>
					网名：<span>DanceSmile</span> | 即步非烟
				</p>
				<p>姓名：吴亮亮</p>
				<p>生日：1996-10-19</p>
				<p>籍贯：湖南省</p>
				<p>现居：湘潭市—岳塘区</p>
				<p>爱好：编程、魔术、音乐</p>
				<!--  a target="_blank"
					href="http://wp.qq.com/wpa/qunwpa?idkey=d4d4a26952d46d564ee5bf7782743a70d5a8c405f4f9a33a60b0eec380743c64">
					<img src="http://pub.idqqimg.com/wpa/images/group.png"
					alt="吴亮亮个人博客网站" title="吴亮亮个人博客网站">
				</a> <a target="_blank"
					href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&amp;email=HHh9cn95b3F1cHVye1xtbTJ-c3E"><img
					src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_22.png"
					alt="吴亮亮个人博客网站"></a-->
			</div>
		</aside>
	</article>
	<%@ include file="/public/info.jsp"%>
	<script src="${ pageContext.request.contextPath }/js/silder.js"></script>
</body>
</html>