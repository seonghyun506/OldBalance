package mvc.oldBalance.command;

import java.util.List;

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
		List<ObReview> review = service.selectByProductId(id);
		service.updateReadNum(id);
		request.setAttribute("param", product);
		request.setAttribute("param2", review);
		
		return next;
	}
}