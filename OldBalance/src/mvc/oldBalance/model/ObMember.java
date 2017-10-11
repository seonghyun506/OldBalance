package mvc.oldBalance.model;

public class ObMember {
	private	String	custId;
	private String	custPw;
	private int 	custPost;
	private String	custAddr;
	private String 	custTel;
	private int		custMig;
	
	
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getCustPw() {
		return custPw;
	}
	public void setCustPw(String custPw) {
		this.custPw = custPw;
	}
	public int getCustPost() {
		return custPost;
	}
	public void setCustPost(int custPost) {
		this.custPost = custPost;
	}
	public String getCustAddr() {
		return custAddr;
	}
	public void setCustAddr(String custAddr) {
		this.custAddr = custAddr;
	}
	public String getCustTel() {
		return custTel;
	}
	public void setCustTel(String custTel) {
		this.custTel = custTel;
	}
	public int getCustMig() {
		return custMig;
	}
	public void setCustMig(int custMig) {
		this.custMig = custMig;
	}
	
}
