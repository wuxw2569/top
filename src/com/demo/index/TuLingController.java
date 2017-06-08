package com.demo.index;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.demo.common.utils.tuling.TuLingUtil;
import com.jfinal.core.Controller;

/**
 * 
 * @author 图灵机器人controller
 *
 */
public class TuLingController extends Controller {
	
	public String url ="http://www.tuling123.com/openapi/api";
	
	public void getContent() {
		String text = getPara("text");
		if(StringUtils.isBlank(text)){
			renderJson("{\"status\":\"0\",\"showMessage\":\"请输入要提交的内容\"}");
		}else{
	        String result = TuLingUtil.sayThing(text);
	        JSONObject tempResult = JSONObject.fromObject(result);
	        renderJson("{\"status\":\""+tempResult.get("code")+"\",\"showMessage\":\""+tempResult.get("text")+"\"}");
		}
	        
	}
	
}





