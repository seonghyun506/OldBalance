package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.ObProduct;
import mybatis.oldBalance.service.ProductService;

public class CommandProductFind implements PdsCommand {
	private String next;

	public CommandProductFind(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String prodName = request.getParameter("prodName");

		ProductService service = ProductService.getInstance();
		List<ObProduct> productList = service.selectByName(prodName);
		request.setAttribute("param", productList);
		
		return next;
	}
}