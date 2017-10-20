package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.ObProduct;
import mybatis.oldBalance.session.ListPdsRepository;
import mybatis.oldBalance.session.MyPageRepository;

public class ListPdsItemService {

	private static ListPdsItemService instance;

	public static ListPdsItemService getInstance() {
		if(instance == null) instance = new ListPdsItemService();
		return instance;
	}

	private ListPdsItemService() {}
	
	ListPdsRepository repo = new ListPdsRepository();

	public List<ObProduct> getPdsItemList(ObProduct obproduct) {
		return repo.selectPds(obproduct);
	}
	
}