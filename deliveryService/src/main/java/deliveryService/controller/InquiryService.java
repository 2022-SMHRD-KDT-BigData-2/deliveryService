package deliveryService.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import deliveryService.model.InquiryDAO;
import deliveryService.model.InquiryVO;

public class InquiryService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String send_id = request.getParameter("send_id");
		String receive_id = request.getParameter("receive_id");
		String content = request.getParameter("content");

		InquiryVO vo = new InquiryVO(send_id, receive_id, content);

		InquiryDAO dao = new InquiryDAO();
		int cnt = dao.writeInquiry(vo);

		if (cnt > 0) {
			System.out.println("문의글 작성 성공");
			response.sendRedirect("Inquiry.jsp");
		} else {
			System.out.println("문의글 작성 실패");
			
		}
	}

}
