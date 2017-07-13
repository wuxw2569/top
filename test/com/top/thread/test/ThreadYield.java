package com.top.thread.test;

public class ThreadYield implements Runnable {
	
	
	@Override
	public void run() {
		System.out.println(Thread.currentThread().getName() + "线程开始运行...");
		for (int i = 0; i < 50; i++) {
			System.out.println(Thread.currentThread().getName()  + "运行" + i);
			try {
				Thread.sleep((int)Math.random() * 10 );
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 当i为30时，该线程就会把CPU时间让掉，让其他或者自己的线程执行（也就是谁先抢到谁执行）  
            if (i ==30) {  
            	Thread.yield();  
            } 
			
		}
		System.out.println(Thread.currentThread().getName() + "线程结束运行...");
		
	}
}
