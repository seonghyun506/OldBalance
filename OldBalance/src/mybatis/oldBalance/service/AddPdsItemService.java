package mybatis.oldBalance.service;

import java.sql.Connection;


import java.sql.SQLException;

import mvc.oldBalance.model.ObProduct;
import mybatis.oldBalance.service.RegisterService;
import mybatis.oldBalance.session.PdsAddRepository;
import mybatis.oldBalance.session.RegisterRepository; 

public class AddPdsItemService {

	private static AddPdsItemService instance;

	public static AddPdsItemService getInstance() {
		if(instance == null) instance = new AddPdsItemService();
		return instance;
	}
	
	private AddPdsItemService() {}
	
	PdsAddRepository repo = new PdsAddRepository();
	
	public int insertProduct(ObProduct obproduct) {
		return repo.insertPds(obproduct);
	}
}
