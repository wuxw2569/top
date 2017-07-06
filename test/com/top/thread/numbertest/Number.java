package com.top.thread.numbertest;

public class Number {
	private int number = 1;
	static int maxGoods = 100;
	static int minGoods = 10;
	public synchronized void AddNumber(){
		if(number > maxGoods){
			try{
				//当条件不符合进入等待,让出cpu资源
				System.out.println("产品已满,请稍候再生产");
				wait();
			} catch (InterruptedException exception){
				exception.printStackTrace();
			}
		}

		// 执行加操作
		number+=50;
		System.out.println("库存加: "+ number);
		// 唤醒减操作
		notify();
		
	}
	
	
	public synchronized void SubNumber(){
		if(number < minGoods ){
			// 等于0时,进入等待状态
			try {
				System.out.println("缺货,稍候再取");
				wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		//执行减减操作
		number-=30;
		System.out.println("库存减: "+number);
		//唤醒加操作
		notify();
	}
	
}
