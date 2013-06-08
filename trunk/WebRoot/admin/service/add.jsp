<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="../common/website.jsp"%>
<head>
<title>添加服务</title>
<%@ include file="/common/ueditor.jsp"%>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/service/">服务中心</a> <span
						class="divider">/</span></li>
					<li class="active">添加服务</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="${ctx}/admin/service/add" class="btn btn-primary">
								添加</a>
						</div>
						<h3 class="yahei">服务添加</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="${ctx}/admin/service"
							data-toggle="tab">服务列表</a>
						</li>
						<li><a data-toggle="tab"
							href="/admin/serviceType">服务类型</a>
						</li>
					</ul>
					<s:form id="serviceForm" cssClass="form-horizontal" action="service!save.action" enctype="multipart/form-data" method="post">
						<input type="hidden" id="website" name="service.website" value="${website}" />
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="title">服务标题 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="service.title">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="serviceTypeId">服务类型</label>
								<s:action name="service-type!list" id="serviceTypeList" executeResult="false">
									<s:param name="query.enabled">true</s:param>
								</s:action>
								<div class="controls">
									<select id="serviceTypeId" name="serviceTypeId">
										<option value="">无</option>
										<s:iterator value="%{#serviceTypeList.serviceTypes}"
											status="rowStatus">
											<option value="${id}">${name}</option>
										</s:iterator>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="file">选择图片</label>
								<div class="controls">
									<input class="input-file" id="file" type="file" name="file">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">服务内容</label>
								<div class="controls">
									<textarea id="content" name="service.content" class="content"></textarea>
									<script type="text/javascript">
										var editorOption = {
											toolbars : [ [ 'Bold', 'underline',
													'forecolor', 'Undo',
													'Redo', 'insertimage',
													'link', 'unlink',
													'justifyleft',
													'justifycenter',
													'justifyright',
													'insertunorderedlist',
													'insertorderedlist', '|',
													'AutoTypeSet',
													'FormatMatch',
													'RemoveFormat', '|',
													'highlightcode', 'Source',
													'FullScreen' ] ],
											wordCount : false,
											initialContent : '',
											elementPathEnabled : false,
											minFrameHeight : 341,
											maxInputCount : 20
										};
										var _editor = new baidu.editor.ui.Editor(
												editorOption);
										_editor.render('content');
									</script>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">保存</button>
								<a class="btn" onclick="javascript:history.back();">取消</a>
							</div>
						</fieldset>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>

