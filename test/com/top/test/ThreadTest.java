package com.top.test;
/**
 * <p class="detail">
 * 功能：线程测试
 * </p>
 * @ClassName: ThreadTest 
 * @version V1.0  
 * @date 2017-6-27 
 * @author wuxw
 * Copyright 2017 b-force.cn, Inc. All rights reserved
 */
public class ThreadTest {
	public static void main(String[] args) {
		 Thread t1= new Thread("可怕"){
			 public void run() { 
			        for (int i = 0; i < 10; i++) { 
			            for (long k = 0; k < 100000000; k++) ; 
			            System.out.println(this.getName() + ": " + i); 
			        } 
			    } 
		 };
		 
		 Thread t2= new Thread("haha "){
			 public void run() { 
			        for (int i = 0; i < 10; i++) { 
			            for (long k = 0; k < 100000000; k++) {}; 
			            System.out.println(this.getName() + ": " + i); 
			        } 
			    } 
		 };
		 
		 t1.start();
		 
		 t2.start();
	}
}
