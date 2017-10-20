package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.ObCart;
import mvc.oldBalance.model.ObProduct;
import mvc.oldBalance.model.ObReview;
import mybatis.oldBalance.session.DetailPdsRepository;
import mybatis.oldBalance.session.ListPdsRepository;

public class DetailPdsItemService {

	private static DetailPdsItemService instance;

	public static DetailPdsItemService getInstance() {
		if(instance == null) instance = new DetailPdsItemService();
		return instance;
	}

	private DetailPdsItemService() {}
	
	DetailPdsRepository repo = new DetailPdsRepository();

	public ObProduct selectById(String id) {
		return repo.selectById(id);
	}
	public int insertReview(ObReview review) {
		return repo.insertReview(review);
	}
	public int insertCart(ObCart cart) {
		return repo.insertCart(cart);
		
	}
	public List<ObReview> selectByProductId(String id) {
		return repo.selectByProductId(id);
	}
	public int updateReadNum(String id) {
		return repo.updateReadNum(id);
	}
}