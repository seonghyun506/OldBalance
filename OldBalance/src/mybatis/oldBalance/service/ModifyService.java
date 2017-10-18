package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class ModifyService {
	private static ModifyService service;
	
	public static ModifyService getInstance() {
		if(service == null) service = new ModifyService();
		return service;
	}
	
	private ModifyService() {}
	
	ModifyRepository repo = new ModifyRepository();
	
	public List<ObMember> selectModify(String id) {
		return repo.selectModify(id);
	}
	
	public Integer updateModify(ObMember member) {
		return repo.updateModify(member);
	}
	
//	public int insertMember(ObMember member) {
//		return repo.insertMember(member);
//	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}