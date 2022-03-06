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



public class deleteService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("EUC-KR");
      // 1. 파라미터 수집 
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      
      MemberVO vo = new MemberVO(id,pw);
      
      MemberDAO dao = new MemberDAO();
      // 2. DAO에서 delete메서드 사용
      
      int cnt = dao.delete(vo);
      
      // 3. 삭제 성공인지 실패인지 구분
      
      if(cnt > 0 ){
         HttpSession session = request.getSession();
         
         session.removeAttribute("vo");
         response.sendRedirect("deleteUser.jsp");
      }else {
         response.sendRedirect("deleteUserForm.jsp");
      }
      
      
   }


   
   
   
   
}