package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class MyPageService {
	private static MyPageService service;
	
	public static MyPageService getInstance() {
		if(service == null) service = new MyPageService();
		return service;
	}
	
	private MyPageService() {}
	
	MyPageRepository repo = new MyPageRepository();
	
	public List<ObMember> selectMyPage(String id) {
		return repo.selectMyPage(id);
	}
	
	public List<ObCart> selectCart(String id) {
		return repo.selectCart(id);
	}
	
//	public int insertMember(ObMember member) {
//		return repo.insertMember(member);
//	}
	
//	public List<BoardRec> selectComment() {
//		return repo.selectComment();
//	}
	
}