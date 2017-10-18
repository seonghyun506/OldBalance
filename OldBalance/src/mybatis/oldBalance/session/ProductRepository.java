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
}