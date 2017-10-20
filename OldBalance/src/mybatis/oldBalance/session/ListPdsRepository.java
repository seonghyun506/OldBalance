package mybatis.oldBalance.session;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mvc.oldBalance.model.ObProduct;

public class ListPdsRepository {
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
	
	public List<ObProduct> selectPds(ObProduct obproduct) {
		SqlSession sess =  getSqlSessionFactory().openSession(); // CON 과같은 연결객체
		// JDBC의 연결객체 얻어오기 -> SqlSession
			return sess.selectList(namespace + ".selectPds", obproduct);
	}
	
	
}