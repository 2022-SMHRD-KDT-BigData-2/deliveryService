package deliveryService.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import deliveryService.model.DeliveryBoardDAO;
import deliveryService.model.DeliveryBoardVO;
import deliveryService.model.MemberVO;


public class DeliveryCall extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		MemberVO uvo = (MemberVO)session.getAttribute("vo");

		String work = request.getParameter("work");
		String helperId = uvo.getId();
		String helperCheck = uvo.getHelper_check();
		int num = Integer.parseInt(request.getParameter("num"));

		DeliveryBoardVO vo = new DeliveryBoardVO(helperCheck,helperId,work,num);
		DeliveryBoardDAO dao = new DeliveryBoardDAO();
		
		int cnt = dao.deliverycall(vo);
		
	    
	}

}
