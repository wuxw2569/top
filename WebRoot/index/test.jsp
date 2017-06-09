<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>上升img</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
<link rel="icon" href="../img/toping2.ico" type="image/x-icon"/>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Roboto:100,400,700');
html,
body {
    height: 100%;
    margin: 0;
    font-family: 'Roboto', sans-serif;
    font-weight: 100;
}
body {
    display: flex;
    justify-content: center;
    align-items: center;
}
#container {
    width: 80%;
    height: 80%;
    display: flex;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    min-width: 600px;
}
aside,
#main {
    flex-grow: 1;
    height: 100%;
    min-width: 300px;
}
aside {
    background-color: #2F373F;
}
#main {
    background-color: #E7EDED;
}
aside header {
    background-color: #343E48;
    padding: 10px;
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
    height: 20px;
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
}background: rgba(0, 0, 0, 0.2)
}
</style>
<script type="text/javascript">
$(function(){
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
		firstLoad = false;
		if(firstLoad==false){
			$("#container").css("visibility","visible");
		}
		$("#messages").append(headHtml($("#search").val(),true));
	    $("#messages").trigger("refresh");
	    $.ajax({
	        cache: true,
	        type: "POST",
	        url:"/tuling/getContent",
	        data:{"text":$("#search").val()},// 你的formid
	        async: false,
	        error: function(request) {
	            console.info("Connection error");
	        },
	        success: function(data) {
	            $("#search").val("");
	        	setTimeout(function(){
	        		$("#messages").append(headHtml(data.showMessage,false));
		    	    $("#messages").trigger("refresh");
	        	}, 1000);
	        	
	        }
	    });

	});
	    
	    
});
</script>
</head>
<body>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<section id="container" style="visibility:hidden"  >
    <aside style="display:none" >
        <header>
            <div class="avatar">
                <img alt="avatar" src="/assets/coolboy.jpg" />
                <div class="color"></div>
            </div>
            <div>CHAT</div>
            <i class="material-icons">search</i>
        </header>
        <ul>
            <li>
                <div class="avatar">
                    <img alt="avatar" src="/assets/coolgirl.jpg" />
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
                    <img alt="avatar" src="/assets/coolgirl.jpg" />
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
</body>
</html>
