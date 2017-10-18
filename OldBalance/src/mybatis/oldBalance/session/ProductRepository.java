package mybatis.oldBalance.session;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mvc.oldBalance.model.*;

public class ProductRepository {
	private String namespace = "mapper.ProductMapper";

	SqlSessionFactory getSqlSessionFactory() {
		InputStream in = null;

		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
		} catch (IOException e) {
			System.out.println("mybatis 설정 실패 : " + e.getMessage());
		}

		SqlSessionFactory sessFac = new SqlSessionFactoryBuilder().build(in);
		return sessFac;
	}

	public List<ObProduct> selectByMainCate(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectList(namespace + ".selectByMainCate", cate);
		} finally {
			sess.close();
		}
	}

	public ObProduct selectById(String id) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".selectById", id);
		} finally {
			sess.close();
		}
	}

	public String selectTotalCount(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".selectTotalCount", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> selByMainCateOrderByNew(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectList(namespace + ".selByMainCateOrderByNew", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> selByMainCateOrderByPopular(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectList(namespace + ".selByMainCateOrderByPopular", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> selByMainCateOrderByLow(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectList(namespace + ".selByMainCateOrderByLow", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> selByMainCateOrderByHigh(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectList(namespace + ".selByMainCateOrderByHigh", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> runningShoesOrderByNew(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".runningShoesOrderByNew", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> runningShoesOrderByPopular(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".runningShoesOrderByPopular", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> runningShoesOrderByLow(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".runningShoesOrderByLow", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> runningShoesOrderByHigh(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".runningShoesOrderByHigh", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> runningShoes(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".runningShoes", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> walkingShoesOrderByNew(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".walkingShoesOrderByNew", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> walkingShoesOrderByPopular(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".walkingShoesOrderByPopular", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> walkingShoesOrderByLow(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".walkingShoesOrderByLow", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> walkingShoesOrderByHigh(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".walkingShoesOrderByHigh", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> walkingShoes(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".walkingShoes", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> soccerShoesOrderByNew(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".soccerShoesOrderByNew", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> soccerShoesOrderByPopular(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".soccerShoesOrderByPopular", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> soccerShoesOrderByLow(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".soccerShoesOrderByLow", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> soccerShoesOrderByHigh(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".soccerShoesOrderByHigh", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> soccerShoes(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".soccerShoes", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> tShirtOrderByNew(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".tShirtOrderByNew", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> tShirtOrderByPopular(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".tShirtOrderByPopular", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> tShirtOrderByLow(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".tShirtOrderByLow", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> tShirtOrderByHigh(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".tShirtOrderByHigh", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> tShirt(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".tShirt", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> mtmOrderByNew(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".mtmOrderByNew", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> mtmOrderByPopular(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".mtmOrderByPopular", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> mtmOrderByLow(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".mtmOrderByLow", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> mtmOrderByHigh(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".mtmOrderByHigh", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> mtm(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".mtm", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> jacketOrderByNew(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".jacketOrderByNew", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> jacketOrderByPopular(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".jacketOrderByPopular", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> jacketOrderByLow(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".jacketOrderByLow", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> jacketOrderByHigh(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".jacketOrderByHigh", cate);
		} finally {
			sess.close();
		}
	}

	public List<ObProduct> jacket(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".jacket", cate);
		} finally {
			sess.close();
		}
	}

	public String jacketTotalCount(String cate) {
		// TODO Auto-generated method stub
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".jacketTotalCount", cate);
		} finally {
			sess.close();
		}
	}

	public String mtmTotalCount(String cate) {
		// TODO Auto-generated method stub
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".mtmTotalCount", cate);
		} finally {
			sess.close();
		}
	}

	public String tshirtTotalCount(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".tshirtTotalCount", cate);
		} finally {
			sess.close();
		}
	}

	public String soccerTotalCount(String cate) {
		// TODO Auto-generated method stub
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".soccerTotalCount", cate);
		} finally {
			sess.close();
		}
	}

	public String walkingTotalCount(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".walkingTotalCount", cate);
		} finally {
			sess.close();
		}
	}

	public String runningTotalCount(String cate) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".runningTotalCount", cate);
		} finally {
			sess.close();
		}
	}

	public int updateReadNum(String id) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
				try {
					int result = sess.update(namespace + ".updateReadNum", id);
					if(result>0) {
						sess.commit();
					}else {
						sess.rollback();
					}
					return result;
				}finally {
					sess.close();
				}
	}

	public List<ObReview> selectByProductId(String id) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		try {
			return sess.selectList(namespace + ".selectByProductId", id);
		} finally {
			sess.close();
		}
	}
}