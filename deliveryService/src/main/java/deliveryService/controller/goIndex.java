package deliveryService.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import deliveryService.model.MemberVO;




public class goIndex extends HttpServlet {
		
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		if(vo != null) {
			// �α���O
			// �α��� ������ �� �޼��� �ҷ���
			
			
			// List��ü�� main.jsp�� �Ѱ��ֱ�
			// request scope�� ��Ƽ� �̵�

			
		}else {
			// �α��� X
		}
		
		// ������ ������� �̵�
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

}
