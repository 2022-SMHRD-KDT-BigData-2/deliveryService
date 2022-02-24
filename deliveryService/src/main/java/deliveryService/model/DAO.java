package deliveryService.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DAO {
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
	
	public int join(MemberVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		int cnt = session.insert("joinService", vo);
		return cnt;
		
	}

}