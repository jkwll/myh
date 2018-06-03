<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta charset="utf-8">
<title>木鱼湖生态休闲网站—一个站在web前段设计之路的男技术员生态休闲网站</title>
<meta name="keywords" content="生态休闲,木鱼湖生态休闲,生态休闲模板,木鱼湖" />
<meta name="description"
	content="木鱼湖生态休闲，是一个站在web前端设计之路的男生态休闲个人网站，提供生态休闲模板免费资源下载的个人原创网站。" />
<link href="${pageContext.request.contextPath }/css/base.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/learn.css"
	rel="stylesheet">
<%-- 搜索 --%>
<link href="${ pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet">
<%-- 换页 --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>

<script type="text/javascript">
	function changePage(pageNum){
		//1 将页码的值放入对应表单隐藏域中
			$("#currentPageInput").val(pageNum);			

		//2 提交表单
			$("#pageForm").submit();
	};
</script>
</head>
<body>
	<form id="pageForm" name="customerForm"
		action="${pageContext.request.contextPath}/knowledge.action<s:property value="#changeurl" />"
		method=post>
		<!-- 隐藏域.当前页码 -->
		<input type="hidden" name="currentPage" id="currentPageInput"
			value="<s:property value="#pageBean.currentPage" />" />
	</form>
	<%@ include file="/public/header.jsp"%>
	<article class="blogs">
		<h1 class="t_nav">
			<span>我们长路漫漫，只因学无止境。 </span><a href="/" class="n1">网站首页</a><a
				href="/" class="n2">学无止境</a>
		</h1>
		<div class="newblog left">
			<iframe id="toolshow" width="650" scrolling="no" height="750"
				frameborder="0" allowtransparency="true"
				src="http://www.wull.top/File"> </iframe>
		</div>
		<aside class="right">

			<div class="news">


				<h3 class="ph">
					<p>
						工具<span>列表</span>
					</p>
				</h3>
				<ul class="paih">
					<li><a href="javascript:void(0);" onclick="select(1)"
						title="小上传与下载" target="_blank">文件上传下载</a></li>
					<li><a href="javascript:void(0);" onclick="select(2)"
						title="小上传与下载" target="_blank">字符传输</a></li>
				</ul>
			</div>
			<div class="visitors">
				<h3>
					<p>最近访客</p>
				</h3>
				<ul>

				</ul>
			</div>
			<!-- Baidu Button BEGIN -->
			<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
				<a class="bds_tsina"></a><a class="bds_qzone"></a><a class="bds_tqq"></a><a
					class="bds_renren"></a><span class="bds_more"></span><a
					class="shareCount"></a>
			</div>
			<script type="text/javascript" id="bdshare_js"
				data="type=tools&amp;uid=6574585"></script>
			<script type="text/javascript" id="bdshell_js"></script>
			<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
			<!-- Baidu Button END -->
		</aside>
	</article>
	<%@ include file="/public/info.jsp"%>

	<script src="js/silder.js"></script>
</body>
</html>