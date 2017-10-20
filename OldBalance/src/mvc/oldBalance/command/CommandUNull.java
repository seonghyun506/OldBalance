package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandUNull implements PdsCommand{
	private String next;

	public CommandUNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response   ){
		return next;
	}
}