package deliveryService.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import deliveryServicemodel.DeliveryBoardDAO;
import deliveryServicemodel.DeliveryBoardVO;

public class WriteDeliveryService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String savePath = request.getServletContext().getRealPath("img");

		// 2) 최대 크기
		int maxSize = 1024 * 1024 * 5;// 5mb

		// 3) 인코딩 타입
		String encoding = "euc-kr";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());

		int num = Integer.parseInt(multi.getParameter("num"));
		String title = multi.getParameter("title");
		String helperGender = multi.getParameter("helperGender");
		String exception = multi.getParameter("exception");
		String place = multi.getParameter("place");
		int money = Integer.parseInt(multi.getParameter("money"));
		int separation = Integer.parseInt(multi.getParameter("separation"));
		String content = multi.getParameter("content");
		String day = multi.getParameter("day");
		String deadLine = multi.getParameter("deadLine");
		String bid = multi.getParameter("bid");
		String helperCheck = multi.getParameter("helpercheck");
		String helperId = multi.getParameter("helperId");
		String fileName = multi.getFilesystemName("file");

		DeliveryBoardVO vo = new DeliveryBoardVO(num, title, helperGender, exception, place, money, separation, content,
				day, deadLine, bid, helperCheck, helperId, fileName);

		DeliveryBoardDAO dao = new DeliveryBoardDAO();
		int cnt = dao.writeBoard(vo);

		if (cnt > 0) {
			System.out.println("게시글 작성 성공");
		} else {
			System.out.println("게시글 작성 실패");
		}
	}

}
