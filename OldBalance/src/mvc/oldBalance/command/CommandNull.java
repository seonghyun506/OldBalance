package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
public class CommandNull implements MyCommand{
=======
public class CommandNull implements MainCommand{
>>>>>>> branch 'master' of https://github.com/seonghyun506/OldBalance.git
	private String next;

	public CommandNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response   ){
		return next;
	}
}