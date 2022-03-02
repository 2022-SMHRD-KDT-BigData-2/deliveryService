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
import deliveryService.model.DeliveryBoardVO;

public class requestService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String savePath = request.getServletContext().getRealPath("img");

		// 2) �ִ� ũ��
		int maxSize = 1024 * 1024 * 5;// 5mb

		// 3) ���ڵ� Ÿ��
		String encoding = "euc-kr";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());

		String title = multi.getParameter("title");
		String helper_Gender = multi.getParameter("gender");
		String helper_exception = multi.getParameter("major");
		String place = multi.getParameter("place");
		int money = Integer.parseInt(multi.getParameter("money"));
		int separation = Integer.parseInt(multi.getParameter("separation"));
		String content = multi.getParameter("content");
		String deadLine = multi.getParameter("deadLine");
		String fileName = multi.getFilesystemName("file");
		//String bid = multi.getPara
		DeliveryBoardVO uvo = new DeliveryBoardVO(title, helper_Gender, helper_exception, place, money, separation, content, deadLine, fileName);

		DeliveryBoardDAO dao = new DeliveryBoardDAO();
		int cnt = dao.writeBoard(uvo);
		
		if(uvo != null) {

			HttpSession session = request.getSession();
			session.setAttribute("uvo", uvo);
		}

		if (cnt > 0) {
			System.out.println("�Խñ� �ۼ� ����");
		} else {
			System.out.println("�Խñ� �ۼ� ����");
		}
	}
}
