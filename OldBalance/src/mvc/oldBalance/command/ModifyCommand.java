package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ModifyCommand {
	public String execute( HttpServletRequest request, HttpServletResponse response  ) ;
}