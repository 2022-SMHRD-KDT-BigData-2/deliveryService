package deliveryService.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExchangeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.parseInt(request.getParameter("num"));
		String exid = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		String deadline = request.getParameter("deadline");
		String helper_check = request.getParameter("helper_check");
		
	}

}