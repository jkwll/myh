<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>发表文章</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 导入jquery核心类库 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/admin/js/jquery-1.8.3.js"></script>
<!-- 导入easyui类库 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/admin/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/admin/js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/admin/js/easyui/ext/portal.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/admin/css/default.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/admin/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/admin/js/easyui/ext/jquery.portal.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/admin/js/easyui/ext/jquery.cookie.js"></script>
<script
	src="${pageContext.request.contextPath }/admin/js/easyui/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<!-- 导入ztree类库 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/admin/js/ztree/zTreeStyle.css"
	type="text/css" />
<script
	src="${pageContext.request.contextPath }/admin/js/ztree/jquery.ztree.all-3.5.js"
	type="text/javascript"></script>
<style type="text/css">
.edit {
	position: relative;
	left: 40%;
	top: -350px;
}
</style>
</head>
<body class="easyui-layout">

	<s:form action="essayUpload" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="functionIds">
		<table class="table-edit" width="40%">
			<tr class="title">
				<td colspan="2">文章信息123</td>
				<td></td>
			</tr>
			<tr>
				<td width="200">标题</td>
				<td><input type="text" name="title" class="easyui-validatebox"
					data-options="required:true" /></td>
				<td></td>
			</tr>
			<tr>
				<td width="200">编辑人</td>
				<td><input type="text" name="editor" class="easyui-validatebox"
					data-options="required:true" /></td>
			</tr>
			<tr>
				<td width="200">导语</td>
				<td><input type="text" name="introduction"
					class="easyui-validatebox" data-options="required:true" /></td>
			</tr>
			<tr>
				<td width="200">文章分类</td>
				<td><select class="easyui-combobox" name="essayType">
						<s:iterator var="et" value="#etList" status="status">
							<option value="<s:property value="#et.type_id" />"><s:property
									value="#et.name" /></option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<td width="200">模块分类</td>
				<td><select class="easyui-combobox" name="flag">
						<option value="1">学无止境</option>
						<option value="2">慢生活</option>
						<option value="0">其他</option>
				</select></td>
			</tr>
			<tr>
				<td width="200">关键字</td>
				<td><input type="text" name="keywords"
					class="easyui-validatebox" data-options="required:true" /></td>
			</tr>
			<tr>
				<td width="200">jsp名字</td>
				<td><input type="text" name="jspName"
					class="easyui-validatebox" data-options="required:true" /></td>
			</tr>

			<tr>
				<td width="200">文章内容（html）</td>
				<td><input type="file" name="htmlFile" multiple
					class="easyui-validatebox" data-options="required:true" /></td>
			</tr>
			<tr>
				<td width="200">图片</td>
				<td><input type="file" name="pic" class="easyui-validatebox"
					data-options="required:true" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="发表"></input></td>
			</tr>
		</table>
		<div class="edit" style="width: 710px">
			<!-- 加载编辑器的容器 -->
			<script id="container" name="content" type="text/plain">
  				            		这里是文章的内容
        						</script>
		</div>

	</s:form>
	<!-- 配置文件 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/admin/js/UEditor/ueditor.config.js"></script>
	<!-- 编辑器源码文件 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/admin/js/UEditor/ueditor.all.js"></script>
	<!-- 实例化编辑器 -->
	<script type="text/javascript">
			        var editor = UE.getEditor('container');
			    </script>


</body>
</html>