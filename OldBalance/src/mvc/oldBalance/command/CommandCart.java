package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandCart implements Command {
	private String next;
	
	public CommandCart(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		return next;
	}
}