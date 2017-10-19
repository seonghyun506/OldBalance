package mvc.oldBalance.model;

public class ObDeliver {
	private int		delId;
	private int		delPrice;
	private String	delDate;
	private String	delState;
	private int		orderId;
	
	
	public int getDelId() {
		return delId;
	}
	public void setDelId(int delId) {
		this.delId = delId;
	}
	public int getDelPrice() {
		return delPrice;
	}
	public void setDelPrice(int delPrice) {
		this.delPrice = delPrice;
	}
	public String getDelDate() {
		return delDate;
	}
	public void setDelDate(String delDate) {
		this.delDate = delDate;
	}
	public String getDelState() {
		return delState;
	}
	public void setDelState(String delState) {
		this.delState = delState;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
}
