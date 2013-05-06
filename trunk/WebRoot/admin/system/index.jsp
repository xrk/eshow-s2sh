<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="title">系统管理</c:set>
<head>
	<title>网站参数</title>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li class="active">${title}</li>
				</ul>
				<s:include value="../title.jsp"></s:include>
				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">系统管理</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/system'/>"> 网络参数</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/role/index'/>"> 角色引导</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/role/add'/>"> 角色添加</a></li>
						<li><a data-toggle="tab" href="<c:url value='/admin/role/edit'/>"> 角色修改</a></li>
					</ul>
					
					<div id="stockbuy">
						<p>
							<span class="r cf00" style="float: left"> 设置网站前后台基本参数及变量!</span>
						</p>
						<p>
							<span class="l">网站地址：</span><span class="r"><input
									style="width: 150px;" class="inputtext" type="text"
									onblur="this.className='inputtext';sendCode()"
									onfocus="this.className='inputtext2'" id="SecuritiesId"
									name="SecuritiesId" /> </span>
						</p>
						<p>
							<span class="l">网站名称：</span><span class="r"><input
									style="width: 150px;" class="inputtext" type="text"
									onblur="this.className='inputtext';sendCode()"
									onfocus="this.className='inputtext2'" id="SecuritiesId"
									name="SecuritiesId" /> </span>
						</p>
						<p>
							<span class="l">公司名称：</span><span class="r"><input
									style="width: 150px;" class="inputtext" type="text"
									onblur="this.className='inputtext';checkSellPrice()"
									onfocus="this.className='inputtext2'" id="SellPrice"
									name="SellPrice" /> </span>
						</p>
						<p>
							<span class="l">备案号：</span><span class="r"><input
									style="width: 150px;" class="inputtext" type="text"
									onblur="this.className='inputtext';checkSellAmount()"
									onfocus="this.className='inputtext2'" id="SellAmount"
									name="SellAmount" /> </span>
						</p>
						<p>
							<span class="l"></span><span class="r"> <input
									type="button" class="botton" value="设置"
									onmouseout="this.className='botton';"
									onmouseover="this.className='botton2';" /> </span>
						</p>
						<div class="c h20"></div>
						<div class="msgtxt">
							网站参数说明：
							<br />
							1. 此功能正在设计中；
							<br />
							2. 此功能正在设计中；
							<br />
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>

