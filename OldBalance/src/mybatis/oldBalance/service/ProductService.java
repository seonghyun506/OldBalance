package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class ProductService {
	private static ProductService service;
	
	public static ProductService getInstance() {
		if(service == null) service = new ProductService();
		return service;
	}
	
	private ProductService() {}
	
	ProductRepository repo = new ProductRepository();
	
	public List<ObProduct> selectByMainCate(String cate) {
		return repo.selectByMainCate(cate);
	}
	
	public ObProduct selectById(String id) {
		return repo.selectById(id);
	}
//	public int insertMember(ObMember member) {
//		return repo.insertMember(member);
//	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}