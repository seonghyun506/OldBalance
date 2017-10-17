package mvc.oldBalance.command;

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
<<<<<<< HEAD
		String cate = request.getParameter("cate");
		
		ProductService service = ProductService.getInstance();
				
		List <ObProduct> productList = service.selectByMainCate(cate);	
	    request.setAttribute("param", productList );
	    
=======
		
>>>>>>> branch 'master' of https://github.com/seonghyun506/OldBalance.git
		return next;
	}
}