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
	</script>
</head>
<body>
	<span id="spanTitle">上升ing...</span>
	<div id="bgDiv"></div>
	<div id="bgBox"></div>
</body>
</html>
