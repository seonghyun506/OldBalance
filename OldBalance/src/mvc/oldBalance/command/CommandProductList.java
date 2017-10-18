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
		String subCate = request.getParameter("subCate");
		String detailCate = request.getParameter("detailCate");
		String range = request.getParameter("range");

		ProductService service = ProductService.getInstance();

		// subCate가 all(신발 and 의류)일 때
		if (subCate.equals("all")) {
			int totalCount = Integer.parseInt(service.getInstance().selectTotalCount(cate));
			request.setAttribute("param2", totalCount);
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
			} else if (range.equals("all")) {
				List<ObProduct> productList = service.selectByMainCate(cate);
				request.setAttribute("param", productList);
			} else {
				List<ObProduct> productList = service.selectByMainCate(cate);
				request.setAttribute("param", productList);
			}
		} else if (subCate.equals("신발")) {// subCate가 '신발'일 때
			if(detailCate.equals("러닝화")) {//subCate가 '신발' 이고 detailCate가 '러닝화'일 때
				int totalCount = Integer.parseInt(service.getInstance().runningTotalCount(cate));
				request.setAttribute("param2", totalCount);
				if (range.equals("new")) {
					List<ObProduct> productList = service.runningShoesOrderByNew(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("popular")) {
					List<ObProduct> productList = service.runningShoesOrderByPopular(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("low")) {
					List<ObProduct> productList = service.runningShoesOrderByLow(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("high")) {
					List<ObProduct> productList = service.runningShoesOrderByHigh(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("all")) {
					List<ObProduct> productList = service.runningShoes(cate);
					request.setAttribute("param", productList);
				} else {
					List<ObProduct> productList = service.runningShoes(cate);
					request.setAttribute("param", productList);
				}
			}else if(detailCate.equals("워킹화")) {//subCate가 '신발' 이고 detailCate가 '워킹화'일 때
				int totalCount = Integer.parseInt(service.getInstance().walkingTotalCount(cate));
				request.setAttribute("param2", totalCount);
				if (range.equals("new")) {
					List<ObProduct> productList = service.walkingShoesOrderByNew(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("popular")) {
					List<ObProduct> productList = service.walkingShoesOrderByPopular(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("low")) {
					List<ObProduct> productList = service.walkingShoesOrderByLow(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("high")) {
					List<ObProduct> productList = service.walkingShoesOrderByHigh(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("all")) {
					List<ObProduct> productList = service.walkingShoes(cate);
					request.setAttribute("param", productList);
				} else {
					List<ObProduct> productList = service.walkingShoes(cate);
					request.setAttribute("param", productList);
				}
			}else if(detailCate.equals("축구화")) {//subCate가 '신발' 이고 detailCate가 '축구화'일 때
				int totalCount = Integer.parseInt(service.getInstance().soccerTotalCount(cate));
				request.setAttribute("param2", totalCount);
				if (range.equals("new")) {
					List<ObProduct> productList = service.soccerShoesOrderByNew(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("popular")) {
					List<ObProduct> productList = service.soccerShoesOrderByPopular(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("low")) {
					List<ObProduct> productList = service.soccerShoesOrderByLow(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("high")) {
					List<ObProduct> productList = service.soccerShoesOrderByHigh(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("all")) {
					List<ObProduct> productList = service.soccerShoes(cate);
					request.setAttribute("param", productList);
				} else {
					List<ObProduct> productList = service.soccerShoes(cate);
					request.setAttribute("param", productList);
				}
			}
		} else if (subCate.equals("의류")) {// subCate가 '의류'일 때
			if(detailCate.equals("티셔츠")) {//subCate가 '의류' 이고 detailCate가 '티셔츠'일 때
				int totalCount = Integer.parseInt(service.getInstance().tshirtTotalCount(cate));
				request.setAttribute("param2", totalCount);
				if (range.equals("new")) {
					List<ObProduct> productList = service.tShirtOrderByNew(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("popular")) {
					List<ObProduct> productList = service.tShirtOrderByPopular(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("low")) {
					List<ObProduct> productList = service.tShirtOrderByLow(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("high")) {
					List<ObProduct> productList = service.tShirtOrderByHigh(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("all")) {
					List<ObProduct> productList = service.tShirt(cate);
					request.setAttribute("param", productList);
				} else {
					List<ObProduct> productList = service.tShirt(cate);
					request.setAttribute("param", productList);
				}
			}else if(detailCate.equals("맨투맨")) {//subCate가 '의류' 이고 detailCate가 '맨투맨'일 때
				int totalCount = Integer.parseInt(service.getInstance().mtmTotalCount(cate));
				request.setAttribute("param2", totalCount);
				if (range.equals("new")) {
					List<ObProduct> productList = service.mtmOrderByNew(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("popular")) {
					List<ObProduct> productList = service.mtmOrderByPopular(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("low")) {
					List<ObProduct> productList = service.mtmOrderByLow(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("high")) {
					List<ObProduct> productList = service.mtmOrderByHigh(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("all")) {
					List<ObProduct> productList = service.mtm(cate);
					request.setAttribute("param", productList);
				} else {
					List<ObProduct> productList = service.mtm(cate);
					request.setAttribute("param", productList);
				}
			}else if(detailCate.equals("자켓")) {//subCate가 '의류' 이고 detailCate가 '자켓'일 때
				int totalCount = Integer.parseInt(service.getInstance().jacketTotalCount(cate));
				request.setAttribute("param2", totalCount);
				if (range.equals("new")) {
					List<ObProduct> productList = service.jacketOrderByNew(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("popular")) {
					List<ObProduct> productList = service.jacketOrderByPopular(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("low")) {
					List<ObProduct> productList = service.jacketOrderByLow(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("high")) {
					List<ObProduct> productList = service.jacketOrderByHigh(cate);
					request.setAttribute("param", productList);
				} else if (range.equals("all")) {
					List<ObProduct> productList = service.jacket(cate);
					request.setAttribute("param", productList);
				} else {
					List<ObProduct> productList = service.jacket(cate);
					request.setAttribute("param", productList);
				}
			}
			
		}

		return next;
	}
}