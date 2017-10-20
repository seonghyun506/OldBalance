package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandSelectCart implements MyPageCommand {
	private String next;
	
	public CommandSelectCart(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		List<ObCart> mList = MyPageService.getInstance().selectCart(id);
		request.setAttribute("mList", mList);
		return next;
	}
}