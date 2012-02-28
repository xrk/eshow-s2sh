<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<title>微博</title>
	<link rel="stylesheet" href="<c:url value='/styles/twitter.css'/>"
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
			new FormCheck('twitterForm');
		});
    </script>
	<script type="text/javascript">
	　　function checkLength(which) {
	　　var maxChars = 200;
	　　if (which.value.length > maxChars)
	　　which.value = which.value.substring(0,maxChars);
	　　var curr = maxChars - which.value.length;
	　　document.getElementById("chLeft").innerHTML = curr.toString();
	    }
　　</script>
</head>
<body>

<div class="w980 ">
      <div class="wrap_top left" ></div>
   		<div class="wrapper">
       
        	<div class="banner"><img src="<c:url value='/images/twitter.jpg'/>" /></div>
               <div id="content">
						<ul class="mainTab">
							<li >
								<a href="<c:url value='/twitter'/>">大家的微博 </a> </span>
							</li>
							<li>
							   <a href="<c:url value='/twitter/mine'/>" >我的微博</a> 
							</li>
							<li>
								<a href="<c:url value='/twitter/add'/>" class="bg_a">继续说</a>
							</li>
						</ul>
					<s:form action="twitter!save.html" id="twitterForm"
									method="post">
									<div id="twitterCreate" >
										<div id="twitterTop">
											心情点滴，我要记录...（200字内）
										</div>
										<div style="padding-top: 10px;">
											<textarea class="inputtext text-input validate['required']"
												class="textarea" style="width: 500px; height: 100px;"
												name="twitter.content" id="inputBox" cols="" rows=""
												onkeyup="checkLength(this);"
												onblur="this.className='textarea'"
												onfocus="this.className='textarea2'" /></textarea>
											<br />
										</div>
										<div style="padding: 5px 0;">
											<span><input type="submit" class="botton" value="提交"
													onMouseOut="this.className='botton';"
													onMouseOver="this.className='botton2';" /> </span>
										</div>
									</div>
								</s:form>
					
                    
                    
                    
				</div>   
                 
        </div>
           <div class="wrap_bottom left"></div>   
            <div style="clear:both;"></div>     
    </div>

	
</body>
