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

	public List<ObProduct> runningShoesOrderByNew(String cate) {
		return repo.runningShoesOrderByNew(cate);
	}

	public List<ObProduct> runningShoesOrderByPopular(String cate) {
		return repo.runningShoesOrderByPopular(cate);
	}

	public List<ObProduct> runningShoesOrderByLow(String cate) {
		return repo.runningShoesOrderByLow(cate);
	}

	public List<ObProduct> runningShoesOrderByHigh(String cate) {
		return repo.runningShoesOrderByHigh(cate);
	}

	public List<ObProduct> runningShoes(String cate) {
		return repo.runningShoes(cate);
	}

	public List<ObProduct> walkingShoesOrderByNew(String cate) {
		return repo.walkingShoesOrderByNew(cate);
	}

	public List<ObProduct> walkingShoesOrderByPopular(String cate) {
		return repo.walkingShoesOrderByPopular(cate);
	}

	public List<ObProduct> walkingShoesOrderByLow(String cate) {
		return repo.walkingShoesOrderByLow(cate);
	}

	public List<ObProduct> walkingShoesOrderByHigh(String cate) {
		return repo.walkingShoesOrderByHigh(cate);
	}

	public List<ObProduct> walkingShoes(String cate) {
		return repo.walkingShoes(cate);
	}

	public List<ObProduct> soccerShoesOrderByNew(String cate) {
		return repo.soccerShoesOrderByNew(cate);
	}

	public List<ObProduct> soccerShoesOrderByPopular(String cate) {
		return repo.soccerShoesOrderByPopular(cate);
	}

	public List<ObProduct> soccerShoesOrderByLow(String cate) {
		return repo.soccerShoesOrderByLow(cate);
	}

	public List<ObProduct> soccerShoesOrderByHigh(String cate) {
		return repo.soccerShoesOrderByHigh(cate);
	}

	public List<ObProduct> soccerShoes(String cate) {
		return repo.soccerShoes(cate);
	}

	public List<ObProduct> tShirtOrderByNew(String cate) {
		return repo.tShirtOrderByNew(cate);
	}

	public List<ObProduct> tShirtOrderByPopular(String cate) {
		return repo.tShirtOrderByPopular(cate);
	}

	public List<ObProduct> tShirtOrderByLow(String cate) {
		return repo.tShirtOrderByLow(cate);
	}

	public List<ObProduct> tShirtOrderByHigh(String cate) {
		return repo.tShirtOrderByHigh(cate);
	}

	public List<ObProduct> tShirt(String cate) {
		return repo.tShirt(cate);
	}

	public List<ObProduct> mtmOrderByNew(String cate) {
		return repo.mtmOrderByNew(cate);
	}

	public List<ObProduct> mtmOrderByPopular(String cate) {
		return repo.mtmOrderByPopular(cate);
	}

	public List<ObProduct> mtmOrderByLow(String cate) {
		return repo.mtmOrderByLow(cate);
	}

	public List<ObProduct> mtmOrderByHigh(String cate) {
		return repo.mtmOrderByHigh(cate);
	}

	public List<ObProduct> mtm(String cate) {
		return repo.mtm(cate);
	}

	public List<ObProduct> jacketOrderByNew(String cate) {
		return repo.jacketOrderByNew(cate);
	}

	public List<ObProduct> jacketOrderByPopular(String cate) {
		return repo.jacketOrderByPopular(cate);
	}

	public List<ObProduct> jacketOrderByLow(String cate) {
		return repo.jacketOrderByLow(cate);
	}

	public List<ObProduct> jacketOrderByHigh(String cate) {
		return repo.jacketOrderByHigh(cate);
	}

	public List<ObProduct> jacket(String cate) {
		return repo.jacket(cate);
	}

	public String jacketTotalCount(String cate) {
		return repo.jacketTotalCount(cate);
	}

	public String mtmTotalCount(String cate) {
		return repo.mtmTotalCount(cate);
	}

	public String tshirtTotalCount(String cate) {
		return repo.tshirtTotalCount(cate);
	}

	public String soccerTotalCount(String cate) {
		return repo.soccerTotalCount(cate);
	}

	public String walkingTotalCount(String cate) {
		return repo.walkingTotalCount(cate);
	}

	public String runningTotalCount(String cate) {
		return repo.runningTotalCount(cate);
	}

	public int updateReadNum(String id) {
		return repo.updateReadNum(id);
	}

	public List<ObReview> selectByProductId(String id) {
		return repo.selectByProductId(id);
	}

}