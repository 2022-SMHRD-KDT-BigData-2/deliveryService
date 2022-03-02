package deliveryService.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DeliveryBoardDAO {
	private static SqlSessionFactory sqlSessionFactory;

	// 초가화 블럭 --> 기본적으로 생성자가 실행되기 직전
	// Staitic 초기화 블럭 -->
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
		
		int cnt= session.insert("writeBoard",vo); // mapper에서 insert id= writeBoard
		
		session.close();
		
		return cnt;
	}
	
	public List<DeliveryBoardVO> selectDeliveryB(){
		
		SqlSession session = sqlSessionFactory.openSession();
		
		List<DeliveryBoardVO> list = session.selectList("selectDeliveryB");
		
		session.close();
		
		return list;
	}
	
	public List<DeliveryBoardVO> selectDeliveryCate(){
		SqlSession session = sqlSessionFactory.openSession();
		
		List<DeliveryBoardVO> list = session.selectList("selectDeliveryCate");
		
		session.close();
		
		return list;
	}
	
	public DeliveryBoardVO viewDelivery(int num) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		DeliveryBoardVO vo = session.selectOne("viewDelivery",num);
		
		session.close();
		
		return vo;
	}

	
}
