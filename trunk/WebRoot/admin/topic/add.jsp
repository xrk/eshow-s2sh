<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<c:set var="title">话题管理</c:set>
<c:set var="title1">话题添加</c:set>
<head>
	<title>讨论区</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/topic.css'/>"
		type="text/css" />
	<link media="screen" type="text/css"
		href="<c:url value='/scripts/validate/theme/grey/formcheck.css'/>"
		rel="stylesheet" />
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/lang/zh-CN.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/formcheck.js'/>"></script>
	<script type="text/javascript">
	 	window.addEvent('domready', function() {
			new FormCheck('topicForm');
		});
    </script>
	<script type="text/javascript" charset="utf-8"
		src="<c:url value="/components/kindeditor/kindeditor.js"/>"></script>
	<script type="text/javascript">
    KE.show({
        id : 'ke-text'
    });
  </script>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/topic/">${title}</a> <span
						class="divider">/</span>
					</li>
					<li class="active">${title1}</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/topic/add'/>" class="btn btn-primary">  添加</a>
						</div>
						<h3 class="yahei">添加话题</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a data-toggle="tab" href="<c:url value='/admin/topic/'/>">信息列表</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/topic/audit'/>">未审核</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/topic/mine'/>">我发表的话题</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/topic/replied'/>">我参与的话题</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/board'/>">话题板块</a></li>
						<li  class="active"><a data-toggle="tab" href="<c:url value='/admin/topic/add'/>">发表话题</a></li>
					</ul>
					<div id="analysis">
						<div id="analysisEdit">
							<form class="form-horizontal" action="topic!save.html" method="post"
							cssClass="creat_form clearfix">
							<div class="control-group">
								<label class="control-label" for="input01">话题标题</label>
								<div class="controls">
									<input type="text" class="input-xlarge"
										name="productCategory.name" >
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="select01">话题分类</label>
								<s:action name="board!search" id="boardList"
									executeResult="false"/>
								<div class="controls">
									<select id="boardId" name="boardId">
									<s:iterator value="%{#boardList.boards}"
										status="rowStatus">
										<option value="${id}">
											${name}
										</option>
									</s:iterator>
								</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">话题内容</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="3" name="topic.content"></textarea>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">保存</button>
								<button class="btn">取消</button>
							</div>
						</form>
						</div>
						<input type="hidden" id="stype" value="" />
						<div class="c"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

