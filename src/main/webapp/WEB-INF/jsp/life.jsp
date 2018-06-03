<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta charset="utf-8">
<title>木鱼湖生态休闲网站—生态休闲网站</title>
<meta name="keywords" content="生态休闲,木鱼湖生态休闲,生态休闲模板,木鱼湖" />
<meta name="description"
	content="木鱼湖生态休闲，是一个站在web前端设计之路的男生态休闲个人网站，提供生态休闲模板免费资源下载的个人原创网站。" />
<link href="${ pageContext.request.contextPath }/css/base.css"
	rel="stylesheet">
<link href="${ pageContext.request.contextPath }/css/style.css"
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
	<!-- 服务端传来的#changeurl 识别是点了导航栏还是head -->
	<form id="pageForm" name="customerForm"
		action="${pageContext.request.contextPath}/life.action<s:property value="#changeurl" />"
		method=post>
		<!-- 隐藏域.当前页码 -->
		<input type="hidden" name="currentPage" id="currentPageInput"
			value="<s:property value="#pageBean.currentPage" />" />
	</form>
	<%@ include file="/public/header.jsp"%>
	<article class="blogs">
		<h1 class="t_nav">
			<span>“新闻资讯”获取最新消息。</span><a href="/"
				class="n1">网站首页</a><a href="/" class="n2">新闻资讯</a>
		</h1>
		<%@ include file="/public/essay_list.jsp"%>

		<%@ include file="/public/life_right.jsp"%>

	</article>
	<%@ include file="/public/info.jsp"%>

	<script src="js/silder.js"></script>
</body>
</html>