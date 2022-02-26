package deliveryServicemodel;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class InquiryDAO {

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

	public int writeInquiry(InquiryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = session.insert("writeInquiry", vo); // mapper¿¡¼­ insert id= writeInquiry

		session.close();

		return cnt;
	}
}
