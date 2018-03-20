<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<header>
	<div id="logo">
		<a href="/"></a>
	</div>
	<nav class="topnav" id="topnav">
		<a href="${ pageContext.request.contextPath }/index.action"><span>首页</span><span
			class="en">Protal</span></a> <a
			href="${pageContext.request.contextPath}/life.action"><span>慢生活</span><span
			class="en">Life</span></a> <a
			href="${pageContext.request.contextPath}/mood.action"><span>碎言碎语</span><span
			class="en">Doing</span></a> <a
			href="${pageContext.request.contextPath}/knowledge.action"><span>学无止境</span><span
			class="en">Learn</span></a> <a
			href="${pageContext.request.contextPath}/leaveword.action"><span>留言版</span><span
			class="en">Gustbook</span></a> <a
			href="${pageContext.request.contextPath}/about.action"><span>关于我</span><span
			class="en">About</span></a>
		<!-- a href="${pageContext.request.contextPath}/tool.action"><span>实用工具</span> <span class="en">Tool</span></a> -->
	</nav>
</header>
