package mvc.oldBalance.model;

public class ObProduct {
	private int		prodId;
	private int		orderId;
	private int		prodPrice;
	private String	mainCate;
	private String	subCate;
	private String	detailCate;
	private String	prodName;
	private int		discount;
	private int		readName;
	
	
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getReadName() {
		return readName;
	}
	public void setReadName(int readName) {
		this.readName = readName;
	}
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
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public String getMainCate() {
		return mainCate;
	}
	public void setMainCate(String mainCate) {
		this.mainCate = mainCate;
	}
	public String getSubCate() {
		return subCate;
	}
	public void setSubCate(String subCate) {
		this.subCate = subCate;
	}
	public String getDetailCate() {
		return detailCate;
	}
	public void setDetailCate(String detailCate) {
		this.detailCate = detailCate;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
}