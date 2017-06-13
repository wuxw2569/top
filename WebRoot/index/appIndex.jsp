<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<base href="<%=basePath%>">
<title>上升ing</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="上升,keyword2,keyword3">
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
<link rel="icon" href="../img/toping2.ico" type="image/x-icon"/>
<script  type="text/javascript" >
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?1a00bdc215756c02925a322ce18ab928";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<meta content="text/html; charset=utf-8" http-equiv="content-type">
<style type="text/css">
body.hp {
	background: #000;
	color: #fff;
	margin: 0;
	font-family: Helvetica, sans-serif, Arial;
	overflow-x: hidden;
	overflow-y: auto;
	backface-visibility: hidden
}

#bLogo {
	height: 40px;
	width: 98px
}


#bgDiv {
	height: 100%;
	width: 100%;
	background-repeat: no-repeat;
	background-position-x: center;
	position: relative;
	background-size: cover;
	z-index: 0
}


* {
	margin: 0;
	padding: 0
}

html,body {
	background: #fff;
	overflow-x: hidden;
	-webkit-text-size-adjust: none;
	color: #000
}

li {
	list-style-type: none
}


a,a:visited {
	text-decoration: none;
	color: #36b
}

img {
	border-width: 0
}

a:visited,a.sb_link:visited,.sb_link a:visited,.sb_h3 a:visited,.sb_h3 a
	{
	text-decoration: none;
	color: #36b
}

body {
	min-width: 0
}

body {
	font-family: Helvetica, Arial;
	font-size: 14px
}

#hplas {
	bottom: 10px;
	right: 10px;
	z-index: 2
}


#hpla_scroll {
	position: absolute;
	display: none;
	z-index: 1
}

</style>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="mobileoptimized" content="0">
<style type="text/css">
#hpla {
	background-color: #eeeef0;
	color: #222;
	letter-spacing: .8px;
	font-size: 15px;
	padding-bottom: 50px;
	width: 100%
}

#hpla img {
	width: 100%;
	padding-top: 30px
}

</style>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Roboto:100,400,700');
#bgBox{
    margin: 0 auto; 
    padding:10px;
	display:block; 
	position: absolute;
	top:50%;
	left:8%;
    margin-top: -240px;
	 right:8%
}
#msg_inner{
	font-family: 'Roboto', sans-serif;
    font-weight: 100;
    color: #000000;
}
#container {
    height: 60%;
}
aside,
#main {
    flex-grow: 1;
    text-align:center;
}
aside {
    background-color: #2F373F;
}
#main {
    background-color: #E7EDED; 
    
}
aside header {
    background-color: #343E48;
    padding: 20px;
    padding-bottom: 0;
    display: flex;
    align-items: center;
    justify-content: space-between;
    color: #fff;
    font-weight: bold;
}
aside ul {
    padding-left: 10px;
    list-style-type: none;
    overflow: auto;
}
aside ul li {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    color: #c0c0c0;
    margin-bottom: 10px;
}
aside ul li div {
    flex-grow: 1;
}
aside ul li .color {
    border: 2px solid #2F373F;
}
.avatar {
    margin-bottom: -5px;
    margin-right: -10px;
}
.avatar img {
    width: 40px;
    height: 40px;
    border-radius: 100%;
}
.color {
    background-color: #4AD99B;
    width: 8px;
    height: 8px;
    border-radius: 100%;
    position: relative;
    top: -16px;
    right: -32px;
    border: 2px solid #343E48;
}
.away {
    background-color: #FA676A;
}
.main_li {
    flex-grow: 2;
}
.selected {
    border-bottom: 2px solid #fff;
}
.username {
    margin-top: 5px;
}
.text {
    font-size: 0.7em;
}
.time {
    font-size: 0.6em;
    flex-grow: 0.3;
    margin-top: 10px;
}
#main {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    
}
#main footer {
    background-color: #fff;
    padding: 10px;
    display: flex;
    justify-content: space-between;
}
#main footer textarea {
    flex-grow: 2;
    margin: 0 10px;
    resize: none;
    border: none;
    padding-top: 5px;
    height: 28px;
}
#main footer textarea:focus {
    outline: none;
}
#main footer i {
    color: #c0c0c0;
    cursor: pointer;
    cursor: hand;
}
#messages {
    overflow: auto;
    flex-grow: 2;
    padding: 10px;
    color: red;
    height:400px;
    overflow-x:hidden;
    -webkit-overflow-scrolling:touch;
}
#messages article {
    display: flex;
    justify-content: flex-start;
    margin-bottom: 20px;
}
#messages article .avatar {
    margin-right: 10px;
}
#messages .right .avatar {
    margin-right: 0;
}
.msg {
    display: flex;
    justify-content: space-between;
}
.msg .tri {
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 0 10px 15px 0;
    border-color: transparent #ffffff transparent transparent;
}
.msg_inner {
    background-color: #fff;
    width: 100%;
    padding: 15px 10px;
    border-radius: 0 4px 4px 4px;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
    text-align: left;
    color: #000000;
}
.right {
    flex-direction: row-reverse;
}
.right .msg {
    flex-direction: row-reverse;
}
.right .msg .tri {
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 15px 10px 0 0;
    border-color: #ffffff transparent transparent transparent;
}
.right .msg .msg_inner {
    border-radius: 4px 0 4px 4px;
    box-shadow: -2px 2px 5px rgba(0, 0, 0, 0.1);
    text-align: right;
}
#credits {
    position: fixed;
    bottom: 0;
    width: 100%;
}
#credits img {
    border-radius: 100%;
    width: 30px;
    height: 30px;
    margin-left: 10px;
}
#credits span {
    display: block;
    padding: 10px;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    user-select: none;
}
#spanTitle{
    color: white;
    font-size: 30px;
    position: absolute;
    top: 24px;
    left: 10%;
    z-index: 555;
}
</style>


<script type="text/javascript">
 $(function(){
 	var postUrl = "/getImg";
	$.ajax({
        url:postUrl,
        type:'GET',
        dataType:'JSON',
        success: function(data){ 
			var jsonObj = eval(data);
			var jsonLen = 0;
        	$.each(jsonObj, function(index, obj) {  
        		jsonLen=jsonLen+1;
        	}); 
			var indexed = Math.ceil(Math.random()*jsonLen);
			$.each(jsonObj, function(index, obj) {   
				if(indexed==index){
					$("#bgDiv").fadeOut(300,
						function(){
							$(this).css('background-image',"url(http://www.bing.com//"+obj.url+")");
						}).fadeIn(300);
					return false;
				}
        	}); 			
        }
    });	
	console.info("结束了;");
 
		var firstLoad = true;
		 function headHtml(text,isRight){
			 var headImg = "/img/headImg/timg (1).jpg";
			 var haveClass="";
			 if(isRight){
				 // 右边属于自己
				 headImg = "/img/headImg/timg (3).jpg";
				 haveClass = "right"
			 }
			 var html = "<article class='"+haveClass+"' >"+
				" <div class='avatar'>"+
				" <img alt='avatar' src='"+headImg+"' />"+
			" </div> "+
			" <div class='msg'>"+
			" <div class='tri'></div>"+
				" <div class='msg_inner'>"+text+"</div>"+
			" </div>"+
			" </article>";
			
			return html;
		 }
		
		
		$("#send").click(function(){
			
			var searchtml = $("#search").val();
			if(searchtml==null || searchtml==""){
				return false;
			}
			
			firstLoad = false;
			if(firstLoad==false){
				$("#container").css("visibility","visible");
			}
			$("#messages").append(headHtml(searchtml,true));
		    $("#messages").trigger("refresh");
		    $.ajax({
		        cache: true,
		        type: "POST",
		        url:"/tuling/getContent",
		        data:{"text":searchtml},// 你的formid
		        async: false,
		        error: function(request) {
		            console.info("Connection error");
		        },
		        success: function(data) {
		            $("#search").val("");
		        	setTimeout(function(){
		        		$("#messages").append(headHtml(data.showMessage,false));
		        		$("#messages").scrollTop( $('#messages')[0].scrollHeight );
			    	    $("#messages").trigger("refresh");
		        	}, 1000);
		        	
		        }
		    });
		});
		
		$(':input').bind('keyup', function(event){
		   if (event.keyCode=="13"){
		    	$("#send").trigger("click");
		    return false;
		   }
		});
		
	});
</script>
	<!-- 发送按钮小样式 -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body class="hp">
	<div id="HpContainer">
	
		<div id="bgDiv" data-bm="0" style="height: 100%; opacity: 1;">
		<span id="spanTitle">上升ing...</span>
			<div id="bgBox">
				<!-- 聊天内容框框 -->
				<section id="container" style="visibility:hidden"  >
				    <aside style="display:none" >
				        <header>
				            <div class="avatar">
				                <img alt="avatar" src="" />
				                <div class="color"></div>
				            </div>
				            <div>CHAT</div>
				            <i class="material-icons">search</i>
				        </header>
				        <ul>
				            <li>
				                <div class="avatar">
				                    <img alt="avatar" src="" />
				                    <div class="color"></div>
				                </div>
				                <div class="main_li">
				                    <div class="username">Marina Braga</div>
				                    <div class="text">Ok. Bye!</div>
				                </div>
				                <div class="time">Now
				                </div>
				            </li>
				            <li>
				                <div class="avatar">
				                    <img alt="avatar" src="" />
				                    <div class="color away"></div>
				                </div>
				                <div class="main_li">
				                    <div class="username">Isah Cacique</div>
				                    <div class="text">Party tonight, ok?</div>
				                </div>
				                <div class="time">18:52
				                </div>
				            </li>
				        </ul>
				    </aside>
				    <section id="main" >
				        <section id="messages">
				        	
				        </section>
				        <footer style="visibility:visible">
				            <i class="material-icons">attach_file</i>
				            <textarea id="search" placeholder="Say something..."></textarea><i class="material-icons"  id="send">send</i>
				        </footer>
				    </section>
				</section>
			</div>
		
		</div>
	</div>
	
	
</body>
</html>
