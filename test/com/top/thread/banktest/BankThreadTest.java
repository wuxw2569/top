package com.top.thread.banktest;
/**
 * <p class="detail">
 * 功能： 以银行取款为例，有一个账号，里面存1000元，
 * 			然后创建两个线程模拟从银行柜台和ATM同时个取N元。这里我们的银行卡不能透支。
 * 
 * 解决方法: synchronized关键字是同步的意思，当synchronized修饰一个方法时，该方法叫做同步方法。
 * 	我们这里 同步getMoney()方法,同步ThreadBanck.MyBank 这个对象也行, 同步后, 只许一个线程访问该对象,不能同时访问;
 * </p>
 * @ClassName: BankThreadTest 
 * @version V1.0  
 * @date 2017-7-5 
 * @author wuxw
 * Copyright 2017 b-force.cn, Inc. All rights reserved
 */
public class BankThreadTest {
	 public static void main(String[] args) {
		BankAccount myBank = new BankAccount();
		
			ThreadBanck t1 = new ThreadBanck(myBank);
			t1.setSubMoeny(700);
			ThreadBanck t2 = new ThreadBanck(myBank);
			t2.setSubMoeny(400);
			
			t1.start();
			t2.start();
		
	 }
}
