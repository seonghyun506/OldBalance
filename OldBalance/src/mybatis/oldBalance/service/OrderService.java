package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class OrderService {
	private static OrderService service;
	
	public static OrderService getInstance() {
		if(service == null) service = new OrderService();
		return service;
	}
	
	private OrderService() {}
	
	OrderRepository repo = new OrderRepository();
	
	public int insertOrder(ObOrder order) {
		return repo.insertOrder(order);
	}
//	public int insertMember(ObMember member) {
//		return repo.insertMember(member);
//	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}