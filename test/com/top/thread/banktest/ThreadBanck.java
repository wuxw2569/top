package com.top.thread.banktest;

public class ThreadBanck extends Thread{
	private BankAccount MyBank;
	private int subMoeny; 
	public ThreadBanck(BankAccount ba){
		MyBank = ba;
	}
	public void run(){
		synchronized(MyBank){
			MyBank.getMoney(subMoeny);
		}
	}
	public final int getSubMoeny() {
		return subMoeny;
	}
	public final void setSubMoeny(int subMoeny) {
		this.subMoeny = subMoeny;
	}
	
}
