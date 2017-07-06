package com.top.test;

public class Employee {
	public static String  company = "china soft";
	private String name;
	private String phone ="187458151299";

	static{
		System.out.println("0");
		System.out.println("Static Block");
		System.out.println("Empployee Company = "+ company);
		
	}
	
	{
		System.out.println("3");
		System.out.println("Non-Static Block");
		System.out.println("Employee phone: " + phone);
	}
	
	/*
	 * 默认构造函数
	 */
	public Employee(){
		this("bruce");
		System.out.println("1");
		System.out.print("Employee() : name= " + name);
	}
	
	
	public Employee(String name){
		System.out.println("2");
		System.out.println("Employee(String)");
		this.name  = name;
	}
	
	public static void main(String args[]){
		new Employee();
	}
	
}
