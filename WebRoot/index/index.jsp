<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>上升ing</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
<link rel="icon" href="../img/toping2.ico" type="image/x-icon"/>
<style type="text/css">
body {  
    margin: 0;  
    overflow: hidden;  
    background-color: #333;  
}  
#bgBox {  
    height: 100%;  
    width: 100%;  
    margin: auto;  
    position: relative;  
    min-width: 1115px;  
    max-width: 1366px;  
    min-height: 599px;  
    max-height: 768px;  
}  
#bgDiv {  
    position: absolute;  
    top: 0;  
    overflow: hidden;  
    width: 100%;  
    height: 100%;  
    max-width: 1366px;  
    /*这里放置背景图及图片属性*/
    background-repeat: no-repeat;  
    background-color: #666;  
    -webkit-background-size: cover;  
    -moz-background-size: cover;  
    -o-background-size: cover;  
    background-size: cover;  
}  
#spanTitle{
    color: white;
    font-size: 65px;
    position: absolute;
    top: 24px;
    left: 64px;
    z-index: 555;
}
@media only screen and (min-height:806px) and (orientation:landscape), screen and (min-width:1433px) and (orientation:landscape) {  
    #bgBox, #bgDiv {  
        max-width: 1920px;  
        max-height: 1080px;  
    }  
}

#search
{
	width:540px;/*定义搜索框的宽度*/
	height:36px;/*定义搜索框的高度*/
	font-size:18px;/*定义搜索框文字大小*/
	font-family:"Gill Sans", "Gill Sans MT", "Myriad Pro", "DejaVu Sans Condensed", Helvetica, Arial, sans-serif;/*定义搜索框的字体，妈蛋我不知道百度搜索框是什么字体，你们凑合看吧*/
}
#submit
{
	position:static;/*搜索框定位，绝对定位，请大家帮我看看，这种定位方式是不是有问题，共勉学习*/
	left:547px;/*定位，左边开始547px*/
	width:100px;/*提交按钮宽度*/
	height:36px;/*提交按钮高度*/
	background:#3385ff;/*提交按钮背景颜色*/
	color:#FFFFFF;/*提交按钮文字颜色。白色*/
	font-size:14px;/*提交按钮文字大小*/
	border:1px solid #4791ff;/*提交按钮边框定义，如果不定义就是默认的按钮效果，好难看的。*/
}
#fromDiv{
	margin:20% 0% 0% 0%;
	text-align:center;
}
</style>
<script type="text/javascript">
(function($) {  
	console.info("进来了;");
	var postUrl = "/getImg";
	$.ajax({
        url:postUrl,
        type:'GET',
        dataType:'JSONP',
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
	
	  // 背景图片尺寸  
	  var imgWidh = 1920,  
	    imgHeight = 1080;  
	  // 图片宽高比  
	  var imgRatio = imgWidh / imgHeight;  
	  var $bgDiv = $("#bgDiv");  
	  var offsetLeft = 0,  
	    offsetTop = 0;  
	  var resize = function() {  
	    // 浏览器viewport尺寸  
	    var winWidth = window.innerWidth,  
	      winHeight = window.innerHeight;  
	    // 浏览器viewport宽高比  
	    var winRatio = winWidth / winHeight;  
	    if (winWidth > imgWidh) {  
	      $bgDiv.css({  
	        width: imgWidh,  
	        height: imgHeight  
	      });  
	    } else {  
	      if (winRatio > imgRatio) {  
	        // 屏幕宽高比大于图片宽高比，屏幕高度不足，图片向上偏移  
	        offsetLeft = 0;  
	        offsetTop = (Math.ceil(winWidth / imgRatio) - winHeight) / 2;  
	        $bgDiv.css({  
	          width: winWidth,  
	          height: winWidth / imgRatio,  
	          top: -offsetTop,  
	          left: offsetLeft  
	        });  
	      } else if (winRatio < imgRatio) {  
	        // 屏幕宽高比大于图片宽高比，屏幕宽度不足，图片向左偏移  
	        offsetLeft = (Math.ceil(winHeight * imgRatio) - winWidth) / 2;  
	        offsetTop = 0;  
	        $bgDiv.css({  
	          width: winHeight * imgRatio,  
	          height: winHeight,  
	          top: offsetTop,  
	          left: -offsetLeft  
	        });  
	      }  
	    }  
	  };  
	  resize();  
	  
	  
	 
	  
	})(jQuery); 
	
	$(function(){
		$("#submit").click(function(){
			$.ajax({
                cache: true,
                type: "POST",
                url:"/tuling/getContent",
                data:$('#textForm').serialize(),// 你的formid
                async: false,
                error: function(request) {
                    console.info("Connection error");
                },
                success: function(data) {
                    $("#answerDiv").append(data.showMessage+"<br/>");
                    $("#search").val("");
                }
            });
			
		});
		
		function enterClick(){
		
			return false;
		}
		
	})
	/* enter不自动提交表单 */
	 document.onkeydown = function(event) {
	        var target, code, tag;
	        if (!event) {
	            event = window.event; //针对ie浏览器
	            target = event.srcElement;
	            code = event.keyCode;
	            if (code == 13) {
	                tag = target.tagName;
	                if (tag == "TEXTAREA") { return true; }
	                else { return false; }
	            }
	        }
	        else {
	            target = event.target; //针对遵循w3c标准的浏览器，如Firefox
	            code = event.keyCode;
	            if (code == 13) {
	                tag = target.tagName;
	                if (tag == "INPUT") { return false; }
	                else { return true; }
	            }
	        }
	    };
	
	</script>
</head>
<body>
	<span id="spanTitle">上升ing...</span>
	
	<div id="answerDiv" style="color: white;" ></div>
	<div id="bgDiv"></div>
	<div id="bgBox" style="display: none" >
		<div id="fromDiv" >
			<form id="textForm" method="get" >
				<input name="text" type="text" id="search" tabindex="q" >
				<input type="button" id="submit" value="上升">
			</form>
		</div>
	</div>
</body>
</html>
