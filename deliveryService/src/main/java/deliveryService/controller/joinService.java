package deliveryService.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import deliveryServicemodel.MemberDAO;
import deliveryServicemodel.MemberVO;

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
		
		System.out.println("id1");
			
		MemberVO vo = new MemberVO(id, pw, gender, major, nation, email, helper_check);
		
		
		MemberDAO dao = new MemberDAO();
		
	
		 
		  System.out.println("id2");
		  
		 int cnt = dao.join(vo); 
		 System.out.println("id3");
		  
		  if(cnt > 0) { // ¼º°ø response.sendRedirect("join_success.jsp"); }else {
		  response.sendRedirect("Main.jsp"); }
		
	}
}
