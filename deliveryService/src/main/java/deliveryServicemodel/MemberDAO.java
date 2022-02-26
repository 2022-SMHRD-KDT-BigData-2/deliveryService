package deliveryServicemodel;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {

	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {

			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			System.out.println("Ʈ���� ����4");

		} catch (Exception e) {
			System.out.println("Ʈ���� ����");
		}
	}

	public int join(MemberVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("joinService", vo);

		session.close();

		return cnt;

	}

	public MemberVO login(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();

		MemberVO uvo = session.selectOne("loginService", vo);

		session.close();

		return uvo;

	}

}