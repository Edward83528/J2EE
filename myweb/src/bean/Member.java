package bean;

import java.io.Serializable;

//一支class要被稱為Bean，需符合三個條件：
//1. 提供一個公開的，無引數的建構子。(public no-argument constructor)
//2. 所有的屬性權限都是private的，並提供getter/setter來存取。
//3. 實作java.io.Serializable介面。
/*
 * JavaBean rules
 * 1. implements Serializable
 * 2. public class
 * 3. field member can not a public
 * 4. getter & setter => getXxx, setXxx => field xxx
 * 5. none argument Constructor (default Constructor)
 */
public class Member implements Serializable {
	// 所有屬性必需為私有
	private String id, name;

	// 要有一個無參數的public建構子
	public Member() {
		System.out.println("Member()");
	}

	public Member(String id, String name) {
		System.out.println("Member(String,String)");
		this.id = id;
		this.name = name;
	}

	// 屬性必定set和get
	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void m1() {
		System.out.println("member.m1()");
	}

	@Override
	public String toString() {
		return id + ":" + name;
	}

}