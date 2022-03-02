package deliveryService.model;

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
			System.out.println("트라이 성공4");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("트라이 예외");
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
	
public int helpercheck(MemberVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("HelperCheck", vo);

		session.close();

		return cnt;
}

	public MemberVO IdCheck(String id) {
		SqlSession session = sqlSessionFactory.openSession();

		MemberVO vo = (MemberVO) session.selectOne("IdCheck", id);

		session.close();

		return vo;
	}

	public String emailDupleCheck(String email) {
		SqlSession session = sqlSessionFactory.openSession();

		String result = session.selectOne("emailDupleCheck", email);

		session.close();

		return result;
	}

}