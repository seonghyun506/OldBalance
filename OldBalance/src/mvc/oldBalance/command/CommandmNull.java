package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandmNull implements MyPageCommand{
	private String next;

	public CommandmNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response   ){
		return next;
	}
}