package deliveryService.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import deliveryService.model.DeliveryBoardDAO;
import deliveryService.model.DeliveryBoardVO;


public class goBoardMain extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DAO �޼��� ��� -> ��� �Խñ� ��������
				DeliveryBoardDAO dao = new DeliveryBoardDAO();
				List<DeliveryBoardVO> list = dao.selectDeliveryB();
				
				// request scope�� list ���
				request.setAttribute("list", list);
				
				// ������ ��� ������ �̵�
				RequestDispatcher rd = request.getRequestDispatcher("deliveryBoard.jsp");
				rd.forward(request, response);
	}

}
