package com.top.test.queue;

import java.util.LinkedList;
import java.util.Queue;

public class QueueTest {
	public static void main(String[] args) {
		Queue<String> temp =new LinkedList();
	
		temp.offer("llala3");
		temp.offer("llala2");
		temp.offer("llala6");
		temp.offer("llala61");
		
		
		System.out.println("队列内容: "+ temp.toString());
		
		for (String string : temp) {
			System.out.println(string);
		}
		
	}
	
}
