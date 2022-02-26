package deliveryService.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import deliveryServicemodel.MemberDAO;
import deliveryServicemodel.MemberVO;


public class loginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberVO vo = new MemberVO(id, pw);
		
		MemberDAO dao = new MemberDAO();
		/*
		 * MemberVO uvo= dao.login(vo);
		 * 
		 * if(uvo != null) {
		 * 
		 * HttpSession session = request.getSession(); session.setAttribute("vo", uvo);
		 * 
		 * }else {
		 * 
		 * 
		 * } response.sendRedirect("main.jsp");
		 */
	}

}
