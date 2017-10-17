package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandProductDetail implements ProductCommand {
	private String next;
	
	public CommandProductDetail(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		
		ProductService service = ProductService.getInstance();
		
		ObProduct product = service.selectById(id);
		request.setAttribute("param", product);
		
		return next;
	}
}