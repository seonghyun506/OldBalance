package mvc.oldBalance.model;

public class ObInventory {
	private int inventId;
	private int inventSize;
	private int inventAmount;
	private int prodId;
	public int getInventId() {
		return inventId;
	}
	public void setInventId(int inventId) {
		this.inventId = inventId;
	}
	public int getInventSize() {
		return inventSize;
	}
	public void setInventSize(int inventSize) {
		this.inventSize = inventSize;
	}
	public int getInventAmount() {
		return inventAmount;
	}
	public void setInventAmount(int inventAmount) {
		this.inventAmount = inventAmount;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
}
