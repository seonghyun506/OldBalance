package mybatis.oldBalance.session;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mvc.oldBalance.model.*;

public class CartRepository {
   private String namespace = "mapper.CartMapper";
   
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
   
   public List<ObCart> selectCartPage(String id) {
      SqlSession sess =  getSqlSessionFactory().openSession(); // CON 과같은 연결객체
      // JDBC의 연결객체 얻어오기 -> SqlSession
      try {
         List<ObCart> list =  sess.selectList(namespace + ".selectAll", id);
         return list;
      } finally {
         sess.close();
      }
   }
   
//   public int insertMember(ObMember member) {
//      SqlSession sess = getSqlSessionFactory().openSession();
//      
//      try {
//         int result =  sess.insert(namespace + ".insertMember", member);
//         if(result > 0) {
//            sess.commit();
//         } else {
//            sess.rollback();
//         }
//         
//         return result;
//      } finally {
//         sess.close();
//      }
//   }
   
//   public List<ObMember> selectComment() {
//      SqlSession sess =  getSqlSessionFactory().openSession(); // CON 과같은 연결객체
//      // JDBC의 연결객체 얻어오기 -> SqlSession
//      try {
//         return sess.selectList(namespace + ".selectAll");
//      } finally {
//         sess.close();
//      }
//   }
   
}