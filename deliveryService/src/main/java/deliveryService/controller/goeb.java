package deliveryService.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import deliveryService.model.ExchangeDAO;
import deliveryService.model.ExchangeVO;


public class goeb extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExchangeDAO dao = new ExchangeDAO();
		List<ExchangeVO> list = dao.selectExchangeB();
		
		
		
		
		// request scope에 list 담기
		request.setAttribute("list", list);
		
		// 포워드 방식 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("Exchange.jsp");
		rd.forward(request, response);
	}

}
