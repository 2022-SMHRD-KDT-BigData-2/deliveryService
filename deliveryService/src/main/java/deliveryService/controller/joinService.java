package deliveryService.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import deliveryService.model.MemberDAO;
import deliveryService.model.MemberVO;

public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		int major = Integer.parseInt(request.getParameter("major"));
		String nation = request.getParameter("nation");
		String email = request.getParameter("email");
		String helper_check = request.getParameter("helper_check");
		

		MemberVO vo = new MemberVO(id, pw, gender, major, nation, email, helper_check);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(vo); 

		  
		if(cnt > 0) { // ¼º°ø response.sendRedirect("join_success.jsp"); }else {
		 response.sendRedirect("Main.jsp"); }
		else {
			
		}
		
	}
}
