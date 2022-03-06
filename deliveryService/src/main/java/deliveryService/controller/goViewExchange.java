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
import deliveryService.model.ExchangeCommentDAO;
import deliveryService.model.ExchangeCommentVO;
import deliveryService.model.ExchangeDAO;
import deliveryService.model.ExchangeVO;


public class goViewExchange extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));

		// 2. DAO 메서드 사용
		ExchangeDAO dao = new ExchangeDAO();
		ExchangeVO bvo = dao.viewExchange(num);

		// 3. request scope에 저장

		// DAO 메서드 사용 -> 모든 게시글 가져오기
		ExchangeCommentDAO dao1 = new ExchangeCommentDAO();
		List<ExchangeCommentVO> list = dao1.ExComment();

		// request scope에 list 담기
		request.setAttribute("bvo", bvo);
		request.setAttribute("list", list);

		// 4. 포워드방식으로 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("viewExchange.jsp");
		rd.forward(request, response);
	}

}
