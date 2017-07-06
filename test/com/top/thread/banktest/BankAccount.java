package com.top.thread.banktest;

public class BankAccount {
	private int MyMoney = 1000;
	public void  getMoney(int money){
		System.out.println("输入取款金额: "+ money+";");
		if(MyMoney <=0 || (MyMoney-money)<0 ){
			System.out.println("余额不足");
		}else{
			try {
				//当一个线程进入到取钱代码部分时先进行了睡眠，
				// 另一个也进来了，且也进入睡眠。当其中一个醒来时，取完钱后，另一个也醒来继续取钱。
				// 结果: 1000 - 700 = 300, 1000 - 400 = 600; 存在异常,实际结果应该是: 1000-700-400;禁止提取: 余额不足
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			MyMoney = MyMoney-money;
		}
		
		 System.out.println("账户剩余的钱"+MyMoney);
	}
}
