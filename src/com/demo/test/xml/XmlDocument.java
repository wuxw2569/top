package com.demo.test.xml;
/**
 * <p class="detail">
 * 功能：定义解析dom的接口
 * </p>
 * @ClassName: XmlDocument 
 * @version V1.0  
 * @date 2017-6-14 
 * @author wuxw
 * Copyright 2017 b-force.cn, Inc. All rights reserved
 */
public interface XmlDocument  {
	/**
	 * <p class="detail">
	 * 功能：解析xml文档
	 * </p>
	 * @author wuxw
	 * @param fileName 文件全路径及文件名
	 * @throws
	 */
	public void parserXml(String fileName);
}
