package deliveryService.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import deliveryService.model.DeliveryBoardDAO;
import deliveryService.model.ExchangeDAO;
import deliveryService.model.ExchangeVO;

public class ExchangeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession();
		String savePath = request.getServletContext().getRealPath("img");

	
		int maxSize = 1024 * 1024 * 5;// 5mb

	
		String encoding = "euc-kr";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());
		
		int num = Integer.parseInt(request.getParameter("num"));
		String exid = session.getId();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String day = request.getParameter("day");
		String deadline = request.getParameter("deadline");
		String ex_finish = request.getParameter("exfinish");
		String exfileName = request.getParameter("exfileName");
		
		ExchangeVO vo = new ExchangeVO(num, exid, title, content, day, deadline, ex_finish, exfileName);

		ExchangeDAO dao = new ExchangeDAO();
		int cnt = dao.resi(vo);

		if (cnt > 0) {
			System.out.println("게시글 작성 성공");
			response.sendRedirect("goExchangeBoard");
		} else {
			System.out.println("게시글 작성 실패");
			response.sendRedirect("ExchangePopup.html");
			
		}
	}

}
