package deliveryService.controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import deliveryService.model.DeliveryBoardDAO;
import deliveryService.model.DeliveryBoardVO;

public class requestService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String encoding = "euc-kr";
		String savePath = request.getServletContext().getRealPath("images");

		int maxSize = 1024 * 1024 * 5; // 5mb

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());

		String title = multi.getParameter("title");
		String helper_gender = multi.getParameter("gender");
		String helper_exception = multi.getParameter("major");
		String place = multi.getParameter("place");
		int money = Integer.parseInt(multi.getParameter("money"));
		int separation = Integer.parseInt(multi.getParameter("errand"));
		String content = multi.getParameter("content");
		String deadline = multi.getParameter("deadline");
		String bid = session.getId();
		String fileName = multi.getFilesystemName("file");
		DeliveryBoardVO uvo = new DeliveryBoardVO(title, helper_gender, helper_exception, place, money, separation,
				content, deadline, bid, fileName);
		DeliveryBoardDAO dao = new DeliveryBoardDAO();
		int cnt = dao.writeBoard(uvo);

		if (uvo != null) {

			session.setAttribute("uvo", uvo);
		}

		if (cnt > 0) {
			System.out.println("게시글 작성 성공");
			response.sendRedirect("goBoardMain");
		} else {
			System.out.println("게시글 작성 실패");
			response.sendRedirect("request.jsp");

		}


	}
}
