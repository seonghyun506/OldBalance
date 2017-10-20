package mvc.oldBalance.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.ObCart;

public class CommandDirectOrder implements MyPageCommand{
	private String next;
	
	public CommandDirectOrder(String _next) {
		next=_next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ObCart cart = new ObCart();
		cart.setProdId(Integer.parseInt(request.getParameter("prodId")));
		cart.setCustId(request.getParameter("custId"));
		cart.setProdName(request.getParameter("prodName"));
		cart.setAmount(Integer.parseInt(request.getParameter("amount")));
		cart.setProdSize(request.getParameter("prodSize"));		
		cart.setProdPrice(Integer.parseInt(request.getParameter("prodPrice")));
		
		List<ObCart> mList = new ArrayList<ObCart>();
		mList.add(cart);
		request.setAttribute("mList", mList);
		
					
		return next;
	}

}
