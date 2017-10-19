package mvc.oldBalance.model;

public class ObOrder {
	private int		orderId;
	private String	orderNum;
	private String	orderDate;
	private String	delAddr;
	private String	delTel;
	private String	payState;
	private	String	custId;
	private int		prodId;
	
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getDelAddr() {
		return delAddr;
	}
	public void setDelAddr(String delAddr) {
		this.delAddr = delAddr;
	}
	public String getDelTel() {
		return delTel;
	}
	public void setDelTel(String delTel) {
		this.delTel = delTel;
	}
	public String getPayState() {
		return payState;
	}
	public void setPayState(String payState) {
		this.payState = payState;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	
}