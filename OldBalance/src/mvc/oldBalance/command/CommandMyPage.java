package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandMyPage implements MyPageCommand {
	private String next;
	
	public CommandMyPage(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		
		MyPageService service = MyPageService.getInstance();
		
		List <ObMember> mypagelist	= service.selectMyPage(id);	
		List <ObOrder>	orderlist	= service.selectOrder(id);
		List <String>	namePrice	= service.findNamePrice(id);
	    request.setAttribute("param", mypagelist );
	    request.setAttribute("order", orderlist);
	    request.setAttribute("namePrice", namePrice);
	    
		return next;
	}
}