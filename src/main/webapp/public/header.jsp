<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<header>
	<div id="logo">
		<a href="/"></a>
	</div>
	<nav class="topnav" id="topnav">
		<a href="${ pageContext.request.contextPath }/index"><span>首页</span><span class="en">Protal</span></a> 
		<a href="${pageContext.request.contextPath}/life1"><span>新闻</span><span class="en">Life</span></a>
	    <a href="${pageContext.request.contextPath}/about"><span>木鱼湖概况</span><span class="en">About</span></a>
	    <a href="${pageContext.request.contextPath}/mood"><span>公园景色</span><span class="en">Doing</span></a> 
	    <a href="${pageContext.request.contextPath}/leaveword"><span>留言版</span><span class="en">Gustbook</span></a> 
	    <a href="${pageContext.request.contextPath}/knowledge1"><span>指南</span><span class="en">Learn</span></a> 
	    
		<!-- a href="${pageContext.request.contextPath}/tool.action"><span>实用工具</span> <span class="en">Tool</span></a> -->
	</nav>
</header>
