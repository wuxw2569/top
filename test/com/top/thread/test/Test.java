package com.top.thread.test;

public class Test {
	public static void main(String[] args) {
		System.out.println("主线程main开始运行");
		Thread1 thread1 = new Thread1("t1");
		
		Thread thread2 = new Thread( new ThreadYield());
		
		
		thread2.start();
		thread1.start();
		try {
			thread1.join();
			thread2.join();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("这是什么 : " +thread1.interrupted());		
		System.out.println("主线程main结束运行");
	}
}
