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
		
		ProductService service = ProductService.getInstance();
				
		List <ObProduct> productList = service.selectByMainCate(cate);	
	    request.setAttribute("param", productList );
	    

		return next;
	}
}