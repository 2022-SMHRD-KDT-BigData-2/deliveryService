package deliveryService.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import deliveryService.model.MemberDAO;
import deliveryService.model.MemberVO;


public class updateService extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // 0. ���ڵ�
      request.setCharacterEncoding("euc-kr");
      
      // 1. ���ǿ� ����� ID��������
      HttpSession session = request.getSession();
      
      MemberVO vo = (MemberVO)session.getAttribute("vo");
      String id = vo.getId();
      
      // 1-1. �Ķ���ͼ������� form�±� ���� ���� �� ��������
      String pw = request.getParameter("pw");

      MemberVO uvo = new MemberVO( id, pw );
      
      MemberDAO dao = new MemberDAO();
      
      // DAO�� �α��� �޼��� ���
      int cnt = dao.update(uvo);
      
            
      if(cnt > 0) {
                  
         response.sendRedirect("index.jsp");
               
      }else {
          response.sendRedirect("pwUpdate.jsp");   
      }
            
      
   }

}