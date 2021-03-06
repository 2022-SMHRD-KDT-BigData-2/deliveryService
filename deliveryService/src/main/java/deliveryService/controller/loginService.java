package deliveryService.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import deliveryService.model.MemberDAO;
import deliveryService.model.MemberVO;

public class loginService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO(id, pw);

		MemberDAO dao = new MemberDAO();

		MemberVO uvo = dao.login(vo);

		if (uvo != null) {

			HttpSession session = request.getSession();
			session.setAttribute("vo", uvo);

		} else {

		}
		response.sendRedirect("index.jsp");

	}

}
