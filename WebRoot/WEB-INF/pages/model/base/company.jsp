<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
  <title>VMS - 管理平台</title>
  <%@include file="../../common.jsp" %>
  <style type="text/css">
	.center {width:100%px; clear:both; }
	.center .leftArea ,.rightArea {float:left;  }
	.center .leftArea {width:260px; background:#eee; }
	.center .rightArea {  }
	.center .clear {clear:both; }
	
	body {font-family:"微软雅黑";}
	.box {width:1000px; margin:20px auto; }
	.title {height:50px; width:100%; border-bottom:1px solid #ccc; line-height:50px; text-align:center; font-size:20px; }
	.box input[type="text"]{width:300px; height:25px; border:1px solid #ccc; line-height:25px; padding:2px 10px; font-size:14px; background:#fff;  }
	#fullName {width:500px; }
	.box span {width:100px; color:#666; margin-top:10px; padding-bottom:2px; font-size:14px;  }
	#submit,#reset {width:50px; margin-right:10px;  }
	#submit {margin-left:85px; }
	#content .i-list span {color:red; padding:5px; }
	/* 响应式布局 */
	@media screen and (max-width: 800px) { 
		.rightArea {display:none; }
		.header .logo .l-text,.header .nav .nav-right {display:none; }
	} 
		
  </style>
</head>
  <body>  	
  	<%@include file ="../../header.jsp" %>
    <div class="center">
    	<!-- 左侧开始 -->
    	<div class="leftArea">
    		<%@include file ="../../menu.jsp" %>
    	</div>
    	<!-- 左侧结束 -->
    	
    	<!-- 右侧开始 -->
    	<div class="rightArea">
    		<div class="content">
    			<div class="box">
					<div id="content">
						<div class="con-nav">
							<ul class="nav nav-tabs">
								<li class="active"><a href="javascript:void(0);">公司信息</a></li>
							</ul>
						</div>
						<!-- <div class="title">公司信息维护</div> -->
							<input type="hidden" id="c-id" value="${company.id}"/> 
							<div class="i-list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代码：<input type="text" id="code" autocomplete="off" value="${company.code }" /><span>*</span></div>
							<div class="i-list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全称：<input type="text" id="fullName" autocomplete="off" value="${company.fullName }" /><span>*</span></div>
							<div class="i-list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;简称：<input type="text" id="shortName" autocomplete="off" value="${company.shortName }" /><span>*</span></div>
							<div class="i-list">&nbsp;&nbsp;网站URL：<input type="text" id="web" autocomplete="off" placeholder="以 http://开始的格式" value="${company.web}" /></div>
							<div class="i-list">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：<input type="text" id="phone" autocomplete="off" value="${company.phone}" /></div><br/>
						</div>
					<p><a class="btn" href="javascript:void(0);" id="submit" onclick="submit()">提交</a><a class="btn" href="javascript:void(0);" id="reset">重置</a></p>
				</div>
    		</div>
    	<%@include file ="../../footer.jsp" %>
    	</div>
    </div>
   <script type="text/javascript">
		/* 提交 */
		function submit() {
			var id = $("#c-id").val();
			var code = $("#code").val();
			var fullName = $("#fullName").val();
			var shortName = $("#shortName").val();
			var web = $("#web").val();
			var phone = $("#phone").val();
			if (code == '') {
				alert("公司代码不能为空,请输入后重试！");
				return false;
			}
			if (fullName == '') {
				alert("公司全称不能为空,请输入后重试！");
				return false;
			}
			if (shortName == '') {
				alert("公司简称不能为空,请输入后重试！");
				return false;
			}

			var params = {
				"id" : id,
				"fullName" : fullName,
				"code" : code,
				"shortName" : shortName,
				"web" : web,
				"phone" : phone
			};
			$.ajax({
				type : "post",
				url : "${basePath}company/create.jxp",
				data : params,
				success : function(response) {
					var jdata = eval("(" + response + ")");
					if (jdata != null) {
						$("#c-id").val(jdata.id);
						$("#code").val(jdata.code);
						$("#fullName").val(jdata.fullName);
						$("#shortName").val(jdata.shortName);
						$("#web").val(jdata.web);
						$("#phone").val(jdata.phone);
						msgBox("消息提示框");
					}
				}
			});
		}
	</script> 

    
  <script type="text/javascript">
  	/* 浏览器初始化  */
	$(function(){
		autoRigthWidth();
		autoLeftHeight();
	});
	
	/* 监听窗口变化 */
	window.onresize=function(){ 
		autoRigthWidth();
		autoLeftHeight();
	};  
	

  </script>  
  </body>
</html>
