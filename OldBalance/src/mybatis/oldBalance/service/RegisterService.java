package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class RegisterService {
	private static RegisterService service;
	
	public static RegisterService getInstance() {
		if(service == null) service = new RegisterService();
		return service;
	}
	
	private RegisterService() {}
	
	RegisterRepository repo = new RegisterRepository();
	
	public int insertMember(ObMember member) {
		return repo.insertMember(member);
	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}