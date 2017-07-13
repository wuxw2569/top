package com.top.test.queue;

import java.io.Serializable;
import java.util.Arrays;

import org.jsoup.select.Evaluator.IsEmpty;

public class ArrayQueue<T> implements Serializable {

	private static final long serialVersionUID = 2034112232777798360L;
	
	private int DEFAULT_SIZE = 0;
	//保存数组长度
	private int capatity ;
	private Object[] elementData;
	private int front = 0;
	private int rear = 0;
	
	public ArrayQueue() {
		capatity =DEFAULT_SIZE;
		elementData  = new Object[capatity];
	}
	
	//以一个初始化元素来创建队列
	public ArrayQueue(T element){
		this();
		elementData[0] = element;
		rear++;
	}
	/**
	 * <p class="detail">
	 * 功能：获取顺序队列大小
	 * </p>
	 * @author wuxw
	 * @return 
	 * @throws
	 */
	public int size(){
		return rear - front;
	} 
		
	
	public void offer(T element){
		ensureCapacity(rear +1 );
		elementData[rear++] = element;
	}
	
	
	private void ensureCapacity(int minCapacity){
		//如果数组的原有长度小于目前所需的长度  
		int oldCapatity = elementData.length;
		if(minCapacity > oldCapatity){
			int newCapacity = (oldCapatity * 3 )/2 +1;
			if(newCapacity < minCapacity){
				newCapacity = minCapacity;
			}
			
			elementData = Arrays.copyOf(elementData, newCapacity);
					
		} 
	}
	
	public T peek(){
		if (isEmpty()) {
			throw new IndexOutOfBoundsException("空队列异常");
		}
		
		return (T) elementData[front];
	}
	
	
	public boolean isEmpty(){
		return rear == front;
	}
	
	public void clear(){
		Arrays.fill(elementData, null);
		front = 0;
		rear = 0;
	}

	public String toString(){
		if(isEmpty()){
			return "[]";
		} else {
			StringBuffer sBuffer = new StringBuffer("[");
			for (int i = front; i < rear; i++) {
				sBuffer.append(elementData[i].toString()+",");
			}
			int len = sBuffer.length();
			return sBuffer.delete(len -1 , len).append("]").toString();
			
		}
	}
	
}
