package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandProductList implements ProductCommand {
	private String next;
	
	public CommandProductList(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ObProduct product = new ObProduct();
		
		String cate = request.getParameter("cate");
		
		product.setMainCate(cate);
		
		ProductService service = ProductService.getInstance();
		service.selectByMainCate(product);
		
		List <ObProduct> productList = service.selectByMainCate(product);	
	    request.setAttribute("param", productList );
	    
		return next;
	}
}