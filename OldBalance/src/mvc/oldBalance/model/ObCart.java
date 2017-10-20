package mvc.oldBalance.model;

public class ObCart {
   private int cartNum;
   private String custId;
   private int prodId;
   private int amount;
   private int prodPrice;
   private String    prodSize;
   private String prodName;
   private   String mainCate;
   private String subCate;
   private String detailCate;

   
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
   public int getProdPrice() {
      return prodPrice;
   }
   public void setProdPrice(int prodPrice) {
      this.prodPrice = prodPrice;
   }
   public String getProdName() {
      return prodName;
   }
   public void setProdName(String prodName) {
      this.prodName = prodName;
   }
   public int getCartNum() {
      return cartNum;
   }
   public void setCartNum(int cartNum) {
      this.cartNum = cartNum;
   }
   public String getCustId() {
      return custId;
   }
   public void setCustId(String custId) {
      this.custId = custId;
   }
   public int getProdId() {
      return prodId;
   }
   public void setProdId(int prodId) {
      this.prodId = prodId;
   }
   public int getAmount() {
      return amount;
   }
   public void setAmount(int amount) {
      this.amount = amount;
   }
   public String getProdSize() {
      return prodSize;
   }
   public void setProdSize(String prodSize) {
      this.prodSize = prodSize;
   }
}