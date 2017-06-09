package com.demo.index;

import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.demo.common.utils.http.HttpUtils;
import com.jfinal.core.Controller;
import com.mysql.jdbc.StringUtils;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * IndexController
 */
public class IndexController extends Controller {
	public void index() {
		
		render("/index/index.jsp");
	}
	
	public void test() {
		
		render("/index/test.jsp");
	}
	public void getImg() {
		String postUrl =  "http://cn.bing.com/HPImageArchive.aspx?format=js&idx=0&n=10";
		String getHtml = HttpUtils.sendGet(postUrl);
		if(StringUtils.isNullOrEmpty(getHtml) == false){
			JSONObject imgHtml = JSONObject.fromObject(getHtml);
			JSONArray imgsArray = imgHtml.getJSONArray("images");
			renderJson(imgsArray);
		}else{
			renderJson("");
		}
	}
}





