package deliveryService.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import deliveryService.model.DeliveryBoardDAO;
import deliveryService.model.DeliveryCommentDAO;
import deliveryService.model.DeliveryCommentVO;

public class deliveryComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// DAO 메서드 사용 -> 모든 게시글 가져오기
		DeliveryCommentDAO dao = new DeliveryCommentDAO();
		List<DeliveryCommentVO> list = dao.writeComment();
				
		// request scope에 list 담기
		request.setAttribute("list", list);
				
		// 포워드 방식 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("goViewBoard");
		rd.forward(request, response);

	}

}
