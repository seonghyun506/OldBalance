package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class OldBalanceService {
	private static OldBalanceService service;
	
	public static OldBalanceService getInstance() {
		if(service == null) service = new OldBalanceService();
		return service;
	}
	
	private OldBalanceService() {}
	
	OldBalanceRepository repo = new OldBalanceRepository();
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}
