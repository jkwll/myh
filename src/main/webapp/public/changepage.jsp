<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="page">
	<a title="Total record"><b><s:property
				value="#pageBean.totalCount" /></b> </a>
	<!-- 左边 -->
	<s:if test="#pageBean.currentPage>1">
		<a href="javaScript:void(0)"
			onclick="changePage(<s:property value='#pageBean.currentPage-1' />)">
			<s:property value="#pageBean.currentPage-1" />
		</a>

	</s:if>
	<!-- 中间 -->
	<b><s:property value="#pageBean.currentPage" /></b>
	<!-- 右边-->
	<s:if
		test="#pageBean.totalCount/#pageBean.pageSize>=#pageBean.currentPage">
		<a href="javaScript:void(0)"
			onclick="changePage(<s:property value='#pageBean.currentPage+1' />)">
			<s:property value="#pageBean.currentPage+1" />
		</a>
		<a href="javaScript:void(0)"
			onclick="changePage(<s:property value='#pageBean.currentPage+1' />)">&gt;</a>
		<a href="javaScript:void(0)"
			onclick="changePage(<s:property value='#pageBean.totalCount' />)">&gt;&gt;</a>

	</s:if>
</div>