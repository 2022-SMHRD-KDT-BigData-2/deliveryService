package deliveryService.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import deliveryService.model.DeliveryBoardDAO;
import deliveryService.model.DeliveryBoardVO;


public class goViewBoard extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. �Ķ���� ����
				int num = Integer.parseInt(request.getParameter("num"));
				
				// 2. DAO �޼��� ��� 
				DeliveryBoardDAO dao = new DeliveryBoardDAO();
				DeliveryBoardVO bvo = dao.viewDelivery(num);
				
				// 3. request scope�� ���� 
				request.setAttribute("bvo", bvo);
				
				//4. ������������ ������ �̵�
				RequestDispatcher rd = request.getRequestDispatcher("viewBoard.jsp");
				rd.forward(request, response);
	}

}
