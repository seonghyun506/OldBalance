package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.ObCart;
import mvc.oldBalance.model.ObReview;
import mybatis.oldBalance.service.DetailPdsItemService;

public class CommandInputCartReview implements PdsCommand {
	private String next;

	public CommandInputCartReview(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String mId = request.getParameter("mId");
		String content = request.getParameter("content");
		String amount = request.getParameter("amount");
		String size = request.getParameter("size");

		ObReview review = new ObReview();
		ObCart cart = new ObCart();

		DetailPdsItemService service = DetailPdsItemService.getInstance();

		if (content != null) {
			review.setProdId(Integer.parseInt(id));
			review.setCustId(mId);
			review.setContent(content);
			service.insertReview(review);
		}
		if (amount != null && size != null) {
			cart.setProdId(Integer.parseInt(id));
			cart.setCustId(mId);
			cart.setAmount(Integer.parseInt(amount));
			cart.setProdSize(size);

			service.insertCart(cart);
		}
		
		request.setAttribute("id", id);
		request.setAttribute("mid",mId);
		return next;
	}
}
