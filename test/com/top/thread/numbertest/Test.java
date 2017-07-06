package com.top.thread.numbertest;

public class Test {
	public static void main(String[] args) {
		Number num = new Number();
		AddThread add =new AddThread(num);
		SubThread sub =new SubThread(num);
		add.start();
		sub.start();
		
		try {
			Thread.sleep(2000l);
			// 停止取货
			sub.setFlag();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(sub.isAlive()){
			System.out.println("停止取货");
		}
		
	}
}
