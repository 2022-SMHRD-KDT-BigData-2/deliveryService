package deliveryService.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import deliveryService.model.MemberDAO;
import deliveryService.model.MemberVO;




public class IdCheck extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 인코딩
		
			request.setCharacterEncoding("UTF-8");
			
			// 1. 파라미터 수집
			String id = request.getParameter("signup-id");
			
			// 2.DAO 시용
			MemberDAO dao = new MemberDAO();
			MemberVO vo = dao.IdCheck(id);
			
			// 3. 응답
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(vo == null);
			
			// vo가 비어있으면 out.print(true); --> 사용가능한 이메일
			// vo가 비어 있지 않으면 out.print(false); --> 중복된 이메일
			
			
	}

}
