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
import deliveryService.model.DeliveryCommentDAO;
import deliveryService.model.DeliveryCommentVO;

public class goViewBoard extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. �Ķ���� ����

		int num = Integer.parseInt(request.getParameter("num"));

		// 2. DAO �޼��� ���
		DeliveryBoardDAO dao = new DeliveryBoardDAO();
		DeliveryBoardVO bvo = dao.viewDelivery(num);

		System.out.println(bvo.getContent());

		// 3. request scope�� ����

		// DAO �޼��� ��� -> ��� �Խñ� ��������
		DeliveryCommentDAO dao1 = new DeliveryCommentDAO();
		List<DeliveryCommentVO> list = dao1.Scomment();

		// request scope�� list ���
		request.setAttribute("bvo", bvo);
		request.setAttribute("list", list);

		// 4. ������������ ������ �̵�
		RequestDispatcher rd = request.getRequestDispatcher("viewBoard.jsp");
		rd.forward(request, response);
	}

}
