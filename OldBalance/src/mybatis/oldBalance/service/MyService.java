package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class MyService {
	private static MyService service;
	
	public static MyService getInstance() {
		if(service == null) service = new MyService();
		return service;
	}
	
	private MyService() {}
	
	OldBalanceRepository repo = new OldBalanceRepository();
	
//	public int insertMember(ObMember member) {
//		return repo.insertMember(member);
//	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}