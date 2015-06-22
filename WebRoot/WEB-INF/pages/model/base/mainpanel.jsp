<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
.mp-box {
	padding-left: 40px;
}
.mp-box .showbox{
	width: 100%;
	height: 200px;
	background: #fcfcfc;
	margin-top: 5px;
	border-bottom:1px solid #f3f3f3; 
	box-shadow:1px 3px #f3f3f3;
	
}

.mp-box .showbox .showtitle {
	height: 50px;
	border-bottom: 1px solid #ddd;
	background: #f3f3f3;
	font-size:12px; 
	line-height:50px;
	color:#096;
	padding-left:20px; 
}

.mp-box .showbox .showlist ul li {
	width: 30%;
	height: 100px;
	margin:0;
	list-style:none;
	float:left;
	text-align:center; 
	font-family:"微软雅黑";
	font-size:16px; 
	color:#666; 
	margin:5px; 
	border-radius:4px;
}

#s_newMsg {
	background:#ff9;
}

#s_newServer {
	background:#9cf; 
}
#s_newOnline {
	background:#cfc; 
}

.mp-box .showbox .showlist .s_text {
	padding-top:25px;  
}

.mp-box .showbox .showlist .s_number {
	line-height:35px; 
	border-radius:35px; 
	width:35px;
	height:35px;
	display:block; 
	background:#fff; 
	margin:0 auto; 
	color:#09c; 
	cursor:pointer; 
}

/* 图表视图部分 */ 
.mp-box .charbox {
	width: 100%;
	height: 400px;
	margin-top: 80px;
}

.mp-box .charbox .chartitle{
	height: 50px;
	border-bottom: 1px solid #ddd;
	background: #f3f3f3;
	font-size:16px; 
	line-height:50px;
	color:#096;
	padding-left:20px; 
	font-family:"微软雅黑";
}

</style>
<div class="mp-box">
	<!-- 消息部分 -->
	<div class="showbox">
		<div class="showtitle"><i class="icon-fire"></i>&nbsp;&nbsp;恭喜鹏博物流VMS系统上线！</div>
		<div class="showlist">
			<ul>
				<li id="s_newMsg">
					<p class="s_text">新消息</p>
					<p class="s_number animated bounceIn">3</p>
				</li>
				<li id="s_newServer">
					<p class="s_text">新事务</p>
					<p class="s_number animated bounceIn">3</p>
				</li>
				<li id="s_newOnline">
					<p class="s_text">今日出车</p>
					<p class="s_number animated bounceIn">3</p>				
				</li>
			</ul>
		</div>
	</div>
	
	<!-- 图表部分 -->
	<div class="charbox">
		<div class="chartitle"><i class="icon-indent-right"></i>&nbsp;&nbsp;监控视图</div>
		<div class="charshow">
			<img src="${basePath}images/char1.jpg" alt="图表">
			<img src="${basePath}images/char2.jpg" alt="图表">
		</div>
	</div>
</div>
<script type="text/javascript">
	$(".s_number").on("mouseover",function(){
		$(this).stop(true,true).removeClass("bounceIn").addClass("wobble");
	}).on("mouseout",function(){
		$(this).stop(true,true).addClass("bounceIn").removeClass("wobble");
	});

</script>

