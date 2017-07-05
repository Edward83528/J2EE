package web;

public class web07_Model {
	private int x, y;

	
	// 帶有參數的建構式方法(把表單接收的字串參數轉整數)
	public web07_Model(String x, String y) {
		this.x = Integer.parseInt(x);
		this.y = Integer.parseInt(y);
	}

	// 加起來回傳
	public int add() {
		return x + y;
	}

}
