package deliveryService.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MailController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		String viewPage= null;
		switch (com) {

			//...
		    
			case "/confirmEmail.jsp":
				DupleEmailCheckCommand check = new DupleEmailCheckCommand();
				check.execute(request, response);
				viewPage = "confirmEmail.jsp";
				break;
		        
		    //...
		    
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);

	}

}
