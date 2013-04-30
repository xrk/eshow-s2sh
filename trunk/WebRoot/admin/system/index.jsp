<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>

<head>
	<title>网站参数</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/system.css'/>"
		type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<s:include value="../title.jsp"></s:include>

				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">系统管理</h3>
					</div>
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

