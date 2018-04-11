<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="newblog left">
	<s:iterator var="e" value="#pageBean.list" status="status">
		<h2>
			<b><s:property value="#e.title" /></b>
		</h2>
		<p class="dateview">
			<span>发布时间：<s:property value="#e.time" /></span><span>作者：<s:property
					value="#e.editor" /></span><span>分类：[<a href="/news/life/"><s:property
						value="#e.essayType.name" /></a>]
			</span>
		</p>
		<figure>
			<s:if test="#e.picsrc!=null">
				<img name="img" src="<s:property value="#e.picsrc" />">
			</s:if>
		</figure>
		<ul class="nlist">
			<p>
				<s:property value="#e.introduction" />
			</p>

			<a href="<s:property value="#e.url+#e.essay_id" />" class="readmore">详细信息>></a>
		</ul>
		<div class="line"></div>
	</s:iterator>
	<div class="blank"></div>
	<div class="ad">
		<!-- 可以放广告 -->
		<img src="">
	</div>

	<%@ include file="/public/changepage.jsp"%>
</div>