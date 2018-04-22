<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<%@ include file="/public/include.jsp"%>
<title>12123</title>
</head>
<body>
	<%@ include file="/public/header.jsp"%>
	<article class="aboutcon">
		<%-- 头的下方--%>
		<%@ include file="/public/header2.jsp"%>
		<div class="index_about">
			<%-- 文章标题 --%>
			<%@ include file="/public/title.jsp"%>
			<div class="book left" style="width:95%">
				<%-- 正文 --%>
				<p style="margin-top: 0px; margin-bottom: 16px; padding: 0px; box-sizing: border-box; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 14px; white-space: normal; color: rgb(79, 79, 79); line-height: 1.75em; text-align: justify;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; font-size: 15px; color: rgb(136, 136, 136);">阿里妹导读：近期，2018国际智能科技峰会开幕式暨主论坛在深圳举行。本次峰会邀请了中国工程院院士高文、院士徐扬生、院士丁文华、图灵奖获得者John E.Hopcroft等多位重量嘉宾参会并做主题演讲。</span></p><p><span style="margin: 0px; padding: 0px; box-sizing: border-box; font-size: 15px; color: rgb(136, 136, 136);"><br/></span></p><p><br/></p>
				<%@ include file="/public/lower.jsp"%>
			</div>
		</div>
		<%@ include file="/public/knowledge_right.jsp"%>
	</article>
	<%@ include file="/public/info.jsp"%>
	<script
		src="${ pageContext.request.contextPath }/knowledge/js/common.js"></script>
	<script
		src="${ pageContext.request.contextPath }/knowledge/js/silder.js"></script>
</body>
</html>