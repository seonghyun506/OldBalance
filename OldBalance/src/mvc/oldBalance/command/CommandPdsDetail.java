package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.ObCart;
import mvc.oldBalance.model.ObProduct;
import mvc.oldBalance.model.ObReview;
import mybatis.oldBalance.service.DetailPdsItemService;
import mybatis.oldBalance.service.ProductService;

public class CommandPdsDetail implements PdsCommand {
	private String next;
	
	public CommandPdsDetail(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");

		DetailPdsItemService service = DetailPdsItemService.getInstance();
		
		ObProduct product = service.selectById(id);
		List<ObReview> reviewList = service.selectByProductId(id);
		service.updateReadNum(id);

		request.setAttribute("param", product);
		request.setAttribute("param2", reviewList);

		return next;
	}
}