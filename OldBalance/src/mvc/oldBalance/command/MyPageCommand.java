package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MyPageCommand {
	public String execute( HttpServletRequest request, HttpServletResponse response  ) ;
}