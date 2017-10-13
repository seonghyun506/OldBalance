package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class MainService {
	private static MainService service;
	
	public static MainService getInstance() {
		if(service == null) service = new MainService();
		return service;
	}
	
	private MainService() {}
	
	OldBalanceRepository repo = new OldBalanceRepository();
	
//	public int insertMember(ObMember member) {
//		return repo.insertMember(member);
//	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}