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
		
		// DAO �޼��� ��� -> ��� �Խñ� ��������
		DeliveryCommentDAO dao = new DeliveryCommentDAO();
		List<DeliveryCommentVO> list = dao.writeComment();
				
		// request scope�� list ���
		request.setAttribute("list", list);
				
		// ������ ��� ������ �̵�
		RequestDispatcher rd = request.getRequestDispatcher("goViewBoard");
		rd.forward(request, response);

	}

}
