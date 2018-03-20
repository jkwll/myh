<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2 class="c_titile">
	<s:property value="#lookEssay.title" />
</h2>
<p class="box_c">
	<%---使用sql这个是直接取得time的值，没有运行getTime --%>
	<span class="d_time">发布时间：<s:property value="#lookEssay.time" /></span>
	<span>编辑：<a href='mailto:1622913887@qq.com'><s:property
				value="#lookEssay.editor" /></a></span> <span>阅读（<s:property
			value="#lookEssay.count" />）
	</span>
</p>
