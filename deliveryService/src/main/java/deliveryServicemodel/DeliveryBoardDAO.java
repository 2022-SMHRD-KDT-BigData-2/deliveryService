package deliveryServicemodel;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DeliveryBoardDAO {
	private static SqlSessionFactory sqlSessionFactory;

	// �ʰ�ȭ �� --> �⺻������ �����ڰ� ����Ǳ� ����
	// Staitic �ʱ�ȭ �� -->
	static {

		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public int writeBoard(DeliveryBoardVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int cnt= session.insert("writeBoard",vo); // mapper���� insert id= writeBoard
		
		session.close();
		
		return cnt;
	}
	 
}
