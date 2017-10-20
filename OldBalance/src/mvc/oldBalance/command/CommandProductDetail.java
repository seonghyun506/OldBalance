package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandProductDetail implements ProductCommand {
	private String next;

	public CommandProductDetail(String _next) {
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

		ProductService service = ProductService.getInstance();

		if (content != null) {
			review.setProdId(Integer.parseInt(id));
			review.setCustId(mId);
			review.setContent(content);
			service.insertReview(review);
		}
		if(amount!=null&&size!=null) {
			cart.setProdId(Integer.parseInt(id));
			cart.setCustId(mId);
			cart.setAmount(Integer.parseInt(amount));
			cart.setProdSize(size);
			
			service.insertCart(cart);
		}
		ObProduct product = service.selectById(id);
		List<ObReview> reviewList = service.selectByProductId(id);
		service.updateReadNum(id);

		request.setAttribute("param", product);
		request.setAttribute("param2", reviewList);

		return next;
	}
}