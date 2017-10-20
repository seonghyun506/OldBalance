package mybatis.oldBalance.session;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mvc.oldBalance.model.ObProduct;

public class PdsAddRepository {
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
	
	public int insertPds(ObProduct Obproduct) {
		SqlSession sess = getSqlSessionFactory().openSession();
		
		try {
			int result =  sess.insert(namespace + ".insertPds", Obproduct);
			if(result > 0) {
				sess.commit();
			} else {
				sess.rollback();
			}
			
			return result;
		} finally {
			sess.close();
		}
	}
	
	
}