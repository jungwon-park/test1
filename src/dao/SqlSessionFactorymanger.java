package dao;

import java.io.Reader; 

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;



public class SqlSessionFactorymanger {
   private static SqlSessionFactory sessionFactory;
   static {
      try {
         Reader reader = Resources.getResourceAsReader("dao/Config.xml");
         sessionFactory = new SqlSessionFactoryBuilder().build(reader);
      } catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
      }
   }
   public static SqlSessionFactory getSqlSessionFactory() {
      return sessionFactory; 
   }
   public static void main(String[] args) {
      System.out.println(sessionFactory);
   }
}