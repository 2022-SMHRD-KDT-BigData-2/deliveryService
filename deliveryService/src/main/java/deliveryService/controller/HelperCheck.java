package deliveryService.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import deliveryService.model.MemberDAO;
import deliveryService.model.MemberVO;

public class HelperCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		
		MemberVO uvo = (MemberVO)session.getAttribute("vo");
		String id = uvo.getId();
		// 세션에 저장된 아이디 값 호출 (로그인 된 id)
		
		String helper_check = request.getParameter("userName");

		MemberVO vo = new MemberVO(id, "1", helper_check);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.helpercheck(vo); 

		  
		session.setAttribute("requsetService", vo);
		
	}

}
