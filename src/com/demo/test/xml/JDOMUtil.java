package com.demo.test.xml;

import java.io.IOException;
import java.util.List;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;

import com.sun.org.apache.xerces.internal.util.Status;


/**
 * @author Alexia
 * 
 * JDOM 解析XML文档
 * 
 */
public class JDOMUtil implements XmlDocument {

    public  void parserXml(String fileName) {
        SAXBuilder builder = new SAXBuilder();

        try {
            Document document = builder.build(fileName);
            Element users = document.getRootElement();
            List userList = users.getChildren("user");

            for (int i = 0; i < userList.size(); i++) {
                Element user = (Element) userList.get(i);
                List userInfo = user.getChildren();

                for (int j = 0; j < userInfo.size(); j++) {
                    System.out.println(((Element) userInfo.get(j)).getName()
                            + ":" + ((Element) userInfo.get(j)).getValue());

                }
                System.out.println();
            }
        } catch (JDOMException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
