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
		// 0. ���ڵ�
		
			request.setCharacterEncoding("UTF-8");
			
			// 1. �Ķ���� ����
			String id = request.getParameter("signup-id");
			
			// 2.DAO �ÿ�
			MemberDAO dao = new MemberDAO();
			MemberVO vo = dao.IdCheck(id);
			
			// 3. ����
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(vo == null);
			
			// vo�� ��������� out.print(true); --> ��밡���� �̸���
			// vo�� ��� ���� ������ out.print(false); --> �ߺ��� �̸���
			
			
	}

}
