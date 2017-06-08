package com.demo.common.utils.tuling;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import com.demo.common.utils.http.HttpUtils;

public class TuLingUtil {
	static final String tulingApi = "http://www.tuling123.com/openapi/api";
	
	static final String tulingKey = "b32dd747264a1c8de9f5003cadd4845c";
	
	public static void main(String[] args) {
		
		boolean flag = true;
		System.out.println("请先输入文字:\n");
		Scanner temp  = new Scanner(System.in);
		int n = 0 ;
		String tempInput="";
		while(flag){
			
			if(n>5){
				System.out.println("温馨提示:如果累了,请输入break;");
			}
			
			System.err.println("你说:");
			tempInput = temp.next();
			if("break".equals(tempInput)){
				flag =false;
				break;
			}
			System.out.println("图灵:"+sayThing(tempInput)+"\n");
			n++;
		}
		
	}
	/**
	 * {"code":100000,"text":"真的啊？"}
	 * @param text
	 * @return
	 */
	public synchronized static String sayThing(String text){
		Map<String, String> tempMap = new HashMap<String, String>();
		tempMap.put("key", tulingKey);
		tempMap.put("info", text);
		return HttpUtils.sendPost(tulingApi,tempMap);
	}
	
}
