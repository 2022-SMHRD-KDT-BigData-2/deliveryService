package deliveryServicemodel;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ExchangeCommentDAO {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	static {

		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public int writeExComment(ExchangeCommentVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int cnt= session.insert("writeExComment",vo); // mapper¿¡¼­ insert id=writeExComment
		
		session.close();
		
		return cnt;
	}
}
