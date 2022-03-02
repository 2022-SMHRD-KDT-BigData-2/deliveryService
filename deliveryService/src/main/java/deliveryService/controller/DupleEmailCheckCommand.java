package deliveryService.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import deliveryService.model.MemberDAO;

public class DupleEmailCheckCommand implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		MemberDAO dao = new MemberDAO();
		String result = dao.emailDupleCheck(email);
		
		request.setAttribute("emailDupleCheckResult", result);
		request.setAttribute("email", email);
		
		return result;
	}
	

}
