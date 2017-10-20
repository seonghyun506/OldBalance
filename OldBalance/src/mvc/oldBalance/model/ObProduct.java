package mvc.oldBalance.model;

public class ObProduct {
	private int		prodId;
	private String	prodName;
	private int		prodPrice;
	private String	mainCate;
	private String	subCate;
	private String	detailCate;
	private String	prodPath;
	private int		discount;
	private int		readNum;
	private String	release_date;
	private String condition;
	
	
	
	
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getProdPath() {
		return prodPath;
	}
	public void setProdPath(String prodPath) {
		this.prodPath = prodPath;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getReadNum() {
		return readNum;
	}
	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
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