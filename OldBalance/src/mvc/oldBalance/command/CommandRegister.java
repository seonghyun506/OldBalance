package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandRegister implements Command {
	private String next;
	
	public CommandRegister(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		return next;
	}
}