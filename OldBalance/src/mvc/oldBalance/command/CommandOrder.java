package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandOrder implements OrderCommand {
	private String next;
	
	public CommandOrder(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		OrderService service = OrderService.getInstance();
		ObOrder order = new ObOrder();
		
		String	id = request.getParameter("id");
		String	addr = request.getParameter("addr");
		String	tel = request.getParameter("tel");
		String	pay = request.getParameter("pay");
		String	imsi = request.getParameter("prodId");
		System.out.println("imsi : "+imsi);
		String	prodId[] = imsi.split("/");
		
		for (int i = 0; i < prodId.length; i++) {
			order.setCustId(id);
			order.setDelAddr(addr);
			order.setDelTel(tel);
			order.setPayState(pay);
			order.setProdId(Integer.parseInt(prodId[i]));
			service.insertOrder(order);			
		}
		return next;
	}
}