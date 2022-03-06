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
      // 0. 인코딩
      request.setCharacterEncoding("euc-kr");
      
      // 1. 세션에 저장된 ID가져오기
      HttpSession session = request.getSession();
      
      MemberVO vo = (MemberVO)session.getAttribute("vo");
      String id = vo.getId();
      
      // 1-1. 파라미터수집에서 form태그 에서 보낸 값 가져오기
      String pw = request.getParameter("pw");

      MemberVO uvo = new MemberVO( id, pw );
      
      MemberDAO dao = new MemberDAO();
      
      // DAO의 로그인 메서드 사용
      int cnt = dao.update(uvo);
      
            
      if(cnt > 0) {
                  
         response.sendRedirect("index.jsp");
               
      }else {
          response.sendRedirect("pwUpdate.jsp");   
      }
            
      
   }

}