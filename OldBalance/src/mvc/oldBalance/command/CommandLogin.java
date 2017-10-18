package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandLogin implements MainCommand {
	private String next;
	
	public CommandLogin(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("ID");
		String pwd = request.getParameter("PWD");
		
		MainService service = MainService.getInstance();
		int result = service.checkMember(id, pwd);
		
		if(result == 0) {
				next = "oldBalanceLoginFail.jsp";
		}else {
			next = "oldBalanceLoginForm.jsp";
		}
		
		return next;
	}
}