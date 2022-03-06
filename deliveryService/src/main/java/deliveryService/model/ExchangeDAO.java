package deliveryService.model;

import java.io.InputStream;
import java.util.List;

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
		
		public List<ExchangeVO> selectExchangeB(){
			
			SqlSession session = sqlSessionFactory.openSession();
			
			List<ExchangeVO> list = session.selectList("selectExchangeB");
			
			session.close();
			
			return list;
		}
		
		public ExchangeVO viewExchange(int num) {
			
			SqlSession session = sqlSessionFactory.openSession();
			
			ExchangeVO vo = session.selectOne("viewExchange",num);
			
			session.close();
			
			return vo;
		}

		
		
    }
