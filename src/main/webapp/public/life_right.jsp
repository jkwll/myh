<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<aside class="right">
	<!-- 导航栏 -->
	<div class="rnav">
		<ul>
			<s:iterator var="et" value="#EssayType" status="status">
				<li class="rnav1"><a
					href="${ pageContext.request.contextPath }/life/select<s:property value="#et.url" />"
					target="_blank"> <s:property value="#et.name" />
				</a></li>
			</s:iterator>
		</ul>
	</div>
	<div class="news">
		<%@ include file="/public/right_essay.jsp"%>
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