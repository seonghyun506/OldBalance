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
	
	MainRepository repo = new MainRepository();
	
	public int checkMember(String id, String pwd) {
		int result = 0;
		
		if(id != null && pwd != null) {	return repo.checkMember(id, pwd); }
		return result;
	}
	
//	public int insertMember(ObMember member) {
//		return repo.insertMember(member);
//	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}