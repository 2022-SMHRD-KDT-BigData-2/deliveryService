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
		// 1. 파라미터 수집
				int num = Integer.parseInt(request.getParameter("num"));
				
				// 2. DAO 메서드 사용 
				DeliveryBoardDAO dao = new DeliveryBoardDAO();
				DeliveryBoardVO bvo = dao.viewDelivery(num);
				
				// 3. request scope에 저장 
				request.setAttribute("bvo", bvo);
				
				//4. 포워드방식으로 페이지 이동
				RequestDispatcher rd = request.getRequestDispatcher("viewBoard.jsp");
				rd.forward(request, response);
	}

}
