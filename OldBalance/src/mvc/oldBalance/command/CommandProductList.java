package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.ObProduct;
import mybatis.oldBalance.service.ProductService;

public class CommandProductList implements ProductCommand {
	private String next;

	public CommandProductList(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String cate = request.getParameter("cate");
		// String detailCate = request.getParameter("detailCate");
		String range = request.getParameter("range");

		ProductService service = ProductService.getInstance();

		
		if (range.equals("new")) {
			List<ObProduct> productList = service.selByMainCateOrderByNew(cate);
			request.setAttribute("param", productList);
		} else if (range.equals("popular")) {
			List<ObProduct> productList = service.selByMainCateOrderByPopular(cate);
			request.setAttribute("param", productList);
		} else if (range.equals("low")) {
			List<ObProduct> productList = service.selByMainCateOrderByLow(cate);
			request.setAttribute("param", productList);
		} else if (range.equals("high")) {
			List<ObProduct> productList = service.selByMainCateOrderByHigh(cate);
			request.setAttribute("param", productList);
		} else if(range.equals("all")){
			List<ObProduct> productList = service.selectByMainCate(cate);
			request.setAttribute("param", productList);
		} else {
			List<ObProduct> productList = service.selectByMainCate(cate);
			request.setAttribute("param", productList);
		}

		int totalCount = Integer.parseInt(service.getInstance().selectTotalCount(cate));
		request.setAttribute("param2", totalCount);

		return next;
	}
}