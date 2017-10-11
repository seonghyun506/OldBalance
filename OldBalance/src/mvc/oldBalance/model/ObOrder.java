package mvc.oldBalance.model;

public class ObOrder {
	private int		orderId;
	private int		delId;
	private int		orderNum;
	private String	orderDate;
	private String	delAddr;
	private String	delTel;
	private String	payState;
	private	int		custId;
	private String	guestTel;
	
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getDelId() {
		return delId;
	}
	public void setDelId(int delId) {
		this.delId = delId;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
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
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getGuestTel() {
		return guestTel;
	}
	public void setGuestTel(String guestTel) {
		this.guestTel = guestTel;
	}
	
}