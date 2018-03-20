<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>后台登录-X-admin1.1</title>
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
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/admin/css/font.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/admin/css/xadmin.css">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/admin/lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/xadmin.js"></script>
<style>
.wrapper {
	position: relative;
	left: 300px;
	top: 100px;
}
</style>
</head>

<body>
	<!-- 中部开始 -->
	<div class="wrapper">
		<!-- 右侧主体开始 -->
		<div class="page-content">
			<div class="content">
				<s:form action="moodUpload" method="post"
					enctype="multipart/form-data">

					<table class="table-edit" width="40%">
						<tr>
							<td>内容：</td>
							<td><input type="text" name="content" class="layui-input"
								label="内容" /></td>
						</tr>
						<tr>
							<td>图片：</td>
							<td><input type="file" class="layui-input" name="upload"
								label="选择文件" accept="image/*" /></td>
						</tr>
						<tr>
							<td>展示：</td>
							<td><input type="checkbox" checked="checked" name="flag" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<button class="layui-btn">发表</button> <font color="red">
									<s:property value="prompt_message" />
							</font>
							</td>

						</tr>
					</table>
				</s:form>

				<!-- 右侧内容框架，更改从这里结束 -->
			</div>
		</div>
		<!-- 右侧主体结束 -->
	</div>
	<!-- 中部结束 -->
	<script>
    //网站统计
   /* var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
 		//每次加载都会进入这个路径
      hm.src = "${ pageContext.request.contextPath }/statistics/add?url=knowledge/001.jsp";
      var s = document.getElementsByTagName("script")[0]; 
     	s.parentNode.insertBefore(hm, s);
    })();*/
    </script>
</body>
</html>