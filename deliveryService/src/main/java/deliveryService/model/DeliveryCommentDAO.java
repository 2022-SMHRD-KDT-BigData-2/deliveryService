package deliveryService.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DeliveryCommentDAO {
	
	private static SqlSessionFactory sqlSessionFactory;

	// �ʱ�ȭ �� --> �⺻������ �����ڰ� ����Ǳ� ����
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
	
//	public int writeComment(DeliveryCommentVO vo) {
//		SqlSession session = sqlSessionFactory.openSession(true);
//		
//		int cnt= session.insert("writeComment",vo); // mapper insert id= writeComment
//		
//		session.close();
//		
//		return cnt;
//	}

	public List<DeliveryCommentVO> writeComment() {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		List<DeliveryCommentVO> list = session.selectList("writeComment");
		
		session.close();
		
		return list;
	}
	
	public List<DeliveryCommentVO> Scomment() {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		List<DeliveryCommentVO> list = session.selectList("Scomment");
		
		session.close();
		
		return list;
	}
}
