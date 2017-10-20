package mybatis.oldBalance.session;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mvc.oldBalance.model.ObCart;
import mvc.oldBalance.model.ObProduct;
import mvc.oldBalance.model.ObReview;

public class DetailPdsRepository {
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
	
	public ObProduct selectById(String id) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		try {
			return sess.selectOne(namespace + ".selectById", id);
		} finally {
			sess.close();
		}
	}
	public int insertReview(ObReview review) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		
				try {
					int result = sess.insert(namespace + ".insertReview", review);
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
	public int insertCart(ObCart cart) {
		SqlSession sess = getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
		
				try {
					int result = sess.insert(namespace + ".insertCart", cart);
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
	
	
	
}