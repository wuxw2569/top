package com.demo.test.xml;

public class XmlTest {
	public static void main(String[] args) {
		/*JDOMUtil tempJdomUtil = new JDOMUtil();
		tempJdomUtil.parserXml("res/testDom.xml");
		*/
		DOM4JUtil tempDom4Util = new DOM4JUtil();
		tempDom4Util.parserXml("res/testDom.xml");
	}
}
