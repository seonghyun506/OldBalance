package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class ProductService {
	private static ProductService service;

	public static ProductService getInstance() {
		if (service == null)
			service = new ProductService();
		return service;
	}

	private ProductService() {
	}

	ProductRepository repo = new ProductRepository();

	public List<ObProduct> selectByMainCate(String cate) {
		return repo.selectByMainCate(cate);
	}

	public ObProduct selectById(String id) {
		return repo.selectById(id);
	}

	public String selectTotalCount(String cate) {
		return repo.selectTotalCount(cate);
	}

	public List<ObProduct> selByMainCateOrderByNew(String cate) {
		return repo.selByMainCateOrderByNew(cate);

	}

	public List<ObProduct> selByMainCateOrderByPopular(String cate) {
		return repo.selByMainCateOrderByPopular(cate);
	}

	public List<ObProduct> selByMainCateOrderByLow(String cate) {
		return repo.selByMainCateOrderByLow(cate);
	}

	public List<ObProduct> selByMainCateOrderByHigh(String cate) {
		return repo.selByMainCateOrderByHigh(cate);
	}

}