package com.demo.index;

import java.util.HashMap;
import java.util.Map;

import com.demo.common.utils.http.HttpUtils;
import com.jfinal.core.Controller;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * IndexController
 */
public class DouBanController extends Controller {
	
	public String url ="https://api.douban.com/v2/movie/";
	
	public void top250() {
		Map<String, String> parameters = new HashMap<String, String>();  
	        parameters.put("name", "sarin111");  
	        String result = HttpUtils.sendPost(url+"/top250", parameters);
		renderJson(result);
	}
	public void subject() {
		Map<String, String> parameters = new HashMap<String, String>();  
	        parameters.put("id", getPara("id"));  
	        String result = HttpUtils.sendPost(url+"/subject/"+getPara("id"), parameters);
		renderJson(result);
	}
	public void in_theaters() {
		Map<String, String> parameters = new HashMap<String, String>();  
	        parameters.put("name", "sarin111");  
	        String result = HttpUtils.sendPost(url+"/in_theaters", parameters);
		renderJson(result);
	}
	
	public void search() {
		Map<String, String> parameters = new HashMap<String, String>();  
	        parameters.put("q", getPara("q"));  
	        String result = HttpUtils.sendPost(url+"/search", parameters);
		renderJson(result);
	}
}





