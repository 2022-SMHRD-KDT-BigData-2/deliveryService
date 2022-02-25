package deliveryService.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ExchangeDAO{
	private static SqlSessionFactory sqlSessionFactory;{
		
	}
	static {
		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch (Exception e) {
			
		}
	
	}
		public int resi(ExchangeVO vo){
			
			SqlSession session = sqlSessionFactory.openSession(true);
			
			int cnt = session.insert("ExchangeService", vo);
			
			session.close();
			
			return cnt;
			
		}
		
    }
