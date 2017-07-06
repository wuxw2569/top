package com.top.thread.numbertest;

public class SubThread extends Thread {
	//设置执行的标志
		boolean flag = true;
		private Number number;
		public SubThread(Number nm){
			this.number = nm;
		}
		// 改变标志,使线程停止
		public void setFlag(){
			this.flag =false;
		}
		
		
		public void run(){
			while(flag){
				try {
					Thread.sleep((long)(Math.random()*1000));
					this.number.SubNumber();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
}
