package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MainCommand {
	public String execute( HttpServletRequest request, HttpServletResponse response  ) ;
}