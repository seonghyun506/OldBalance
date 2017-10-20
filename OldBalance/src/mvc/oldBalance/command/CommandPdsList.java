package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.ObProduct;
import mybatis.oldBalance.service.ListPdsItemService;
import mybatis.oldBalance.service.ProductService;

public class CommandPdsList implements PdsCommand {
	private String next;

	public CommandPdsList(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ObProduct product = new ObProduct();
		
		String cate = request.getParameter("cate");
		String subCate = request.getParameter("subCate");
		String detailCate = request.getParameter("detailCate");
		String range = request.getParameter("range");

		product.setMainCate(cate);
		product.setSubCate(subCate);
		product.setDetailCate(detailCate);
		product.setCondition(range);  //order by 문
		

		ListPdsItemService service = ListPdsItemService.getInstance();
		List<ObProduct> itemListModel = service.getPdsItemList(product);
		request.setAttribute("listModel", itemListModel);
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Cache-Control", "no-store");
		response.setDateHeader("Expires", 1L);

		// subCate가 all(신발 and 의류)일 때

		return next;
	}
}