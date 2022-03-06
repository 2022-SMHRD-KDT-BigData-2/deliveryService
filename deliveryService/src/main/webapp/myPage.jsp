<%@page import="deliveryService.model.DeliveryBoardVO"%>
<%@page import="deliveryService.model.MemberVO"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- js추가 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- js -->

    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>심부릉 : 마이페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <link rel="stylesheet" href="assets/css/deliverymain3.css" />
   <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body>
<body class="is-preload" id="nanno">
<%
    MemberVO uvo = (MemberVO)session.getAttribute("vo");
	List<DeliveryBoardVO> list = (List<DeliveryBoardVO>) request.getAttribute("list");
   %>
   <script>
   document.getElementById('nanno').style.font = '20px 넥슨Lv1고딕 OTF Light';
   </script>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Header -->
               <header id="header">
                  <a href="index.jsp" class="logo"><strong>심부릉</strong> </a>
                  <nav>
                     <a href="#menu">Menu</a>
                  </nav>
               </header>

            <!-- Menu -->
               <nav id="menu">
                  <ul class="links">
                  <ul class="actions stacked">
                  <%if(uvo == null){ %>
                     <li><a href="Join.jsp" class="button fit">회원가입</a></li>
                     <li><a href="Login.jsp" class="button fit">로그인</a></li>
                  <%}else{ %>
                     <li><a href="index.jsp" class="button fit">Home</a></li>
                     <li><a href="deliveryBoard.jsp" class="button fit">심부름 게시판</a></li>
                     <li><a href="Exchange.jsp" class="button fit">물물교환 게시판</a></li>
                     <li><a href="CallCenter.jsp" class="button fit">고객센터</a></li>
                     <li><a href="logoutService" class="button fit">로그아웃</a></li>
                  <%} %>
                  </ul>         
                  </ul>
               </nav>

            <!-- Main -->
               <div id="main" class="alt">

                  <!-- One -->
                     <section id="one">
                        <div class="inner">
                           <header class="major">
                              <h1>마이페이지</h1>
                           </header>



         

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
         
         
 <!-- Content -->
 <!-- 회원정보 -->         
   
<!-- js추가 -->   
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
   $(function(){
      let photo_path; // 파일의 경로(String)을 담을 변수
      let my_photo; // 파일 객체(DOM)를 담을 공간의 변수
      
      $('#photo_btn').click(function(){
         $('#photo_choice').show(); // 파일선택,전송,취소 버튼 노출
         $(this).hide(); // 수정버튼 감추기
      });
      
      //이미지 미리보기 취소
      $('#photo_reset').click(function(){
         $('.my-photo').attr('src',photo_path); //이미지 미리보기 전 이미지로 되돌리기
         $('#photo').val(''); // 파일선택값 초기화
         $('#photo_choice').hide(); // 파일선택,전송,취소 버튼 숨김
         $('#photo_btn').show(); // 수정 버튼 노출
      
      });
      
      //이미지 선택 및 이미지 미리보기
      $('#photo').change(function(){ // 파일선택이 첨부 or 미첨부가 될경우
         my_photo = this.files[0]; // 첨부한 file은 한개여도 항상 files[] 배열(객체)형으로 관리
         if(!my_photo){ // my_photo의 값이 비어있다면 = 첨부한 파일이 없다면,
            $('.my-photo').attr('src','${pageContext.request.contextPath}/images/face.png'); // 기본 이미지가 노출
            return; // 이벤트(함수) 종료
         }
         
         if(my_photo.size > 1024*1024){ // 선택한 파일이 이미지제한 1MB을 넘으면
            alert('1MB까지만 업로드 가능!');
            photo.value = ''; // 파일 선택값 지정을 취소
            return; // 이벤트(함수) 종료
         }
         
         let reader = new FileReader(); // 파일을 읽기위해선 FileReader 객체 생성
         reader.readAsDataURL(my_photo); // 파일을 읽기위해 readAsDataURL 메서드 실행
         
         reader.onload = function(){ // FileReader.readAsDataURL이 호출되어 파일을 다 읽으면
            photo_path = $('.my-photo').attr('src'); // 이미지 미리보기 전 이미지 저장
            $('.my-photo').attr('src',reader.result);
         };
      }); // end of change
      
      
      //이미지 전송
      $('#photo_submit').click(function(){
         // 파일 입력 유효성 체크
         if($('#photo').val()==''){
            alert('파일을 선택하세요!');
            $('#photo').focus();
            return;
         }
         
         // 파일 전송 (ajax(json 방식) 으로 페이지 이동없이 비동기 처리)
         let form_data = new FormData(); // ajax 방식 처리 시 FormData 객체 생성
         // FormData 객체 생성후 append 메서드 호출하여 인자값에 키와 value에 파일객체를 넣어준다.
         form_data.append('photo',my_photo); // 파일 선택하여 첨부된 파일(DOM) Element
         $.ajax({
            url : 'updateMyPhoto.do',
            type : 'post', // 파일 업로드 시 반드시 post 방식 사용
            data : form_data, // 선택한 파일이 append 메서드 처리된 FormData 객체를 데이터로 넘겨준다.
            dataType : 'json', //jackson 라이브러리를 사용하기위해 json 방식 
            contentType : false, // 데이터 객체를 문자열로 바꿀지 지정 (true일 경우 일반문자) - 파일을 넘겨주기 때문에 반드시 false
            processData : false, // 해당 타입을 true로 하면 일반 text로 구분  - 파일을 넘겨주기 때문에 반드시 false
            enctype : 'multipart/form-data', //비동기처리든 동기처리든 파일 라이브러리 사용시 enctype의 Multipart/form-data 설정은 필수
            success : function(param){ // ajax 비동기처리가 성공하면 plain 형식의 파일에 데이터를 가져온다.
               if(param.result == 'logout'){
                  alert('로그인 후 사용하세요!');
               }else if(param.result == 'success'){
                  alert('프로필 사진이 수정되었습니다.');
                  $('#photo').val('');
                  $('#photo_choice').hide();
                  $('#photo_btn').show();
               }else{
                  alert('파일 전송 오류 발생');   
               }
            },
            error : function(){
               alert('네트워크 오류발생');
            }
         });
      });
      
   });
</script>         
<!-- js추가 -->         
         
         
         </head>
<body>

<!-- js추가 -->
<div class="page-main">
   
   <!-- Content -->
    <!-- 회원정보 -->
   <h2 id="content"><%=uvo.getId() %>님의 회원정보</h2> 
   <div class="mypage-div">
      <h3>프로필 사진</h3>
      <ul>
         <li>
            <c:if test="${empty member.photo}">
               <img src="${pageContext.request.contextPath}/images/face.png" width="200" height="200" class="my-photo">
            </c:if>
            <c:if test="${!empty member.photo}">
               <img src="${pageContext.request.contextPath}/upload/${member.photo}" width="200" height="200" class="my-photo">
            </c:if>
         </li>
         <li>
            <div class="align-center">
               <input type="button" value="수정" id="photo_btn">
            </div>
            <div id="photo_choice" style="display:none">
               <input type="file" id="photo" accept="image/gif,image/png,image/jpeg">
               <input type="button" value="전송" id="photo_submit">
               <input type="button" value="취소" id="photo_reset">
            </div>
         </li>
      </ul>  
   </div>
   
   
   
   
   
   <div class="mypage-div">
      <h3>기본정보</h3>
      <ul>
         <table>
                                 <tr>
                                    <td>성별</td>
                                    <%if(uvo.getGender().equals("M")){%>
                                       <td>남자</td>
                                    <%}else{ %>
                                       <td>여자</td>
                                    <%} %>
                                 </tr>
                                                                  
                                 <tr>
                                 <td>학과</td>
                                 <%if(uvo.getMajor()==10){%>
                                       <td>간호대</td>
                                 <%}else if(uvo.getMajor()==20){ %>   
                                       <td>경영대</td>
                                 <%}else if(uvo.getMajor()==30){ %>   
                                       <td>공과대</td>
                                 <%}else if(uvo.getMajor()==40){ %>   
                                       <td>농업생명과학대</td>
                                 <%}else if(uvo.getMajor()==50){ %>   
                                       <td>법과대</td>
                                 <%}else if(uvo.getMajor()==60){ %>   
                                       <td>사범대</td>
                                 <%}else if(uvo.getMajor()==70){ %>   
                                       <td>사회과학</td>
                                 <%}else if(uvo.getMajor()==80){ %>   
                                       <td>생활과학</td>
                                 <%}else if(uvo.getMajor()==90){ %>   
                                       <td>수의과대</td>
                                 <%}else if(uvo.getMajor()==100){ %>   
                                       <td>약학대</td>
                                 <%}else if(uvo.getMajor()==110){ %>   
                                       <td>예술대</td>
                                 <%}else if(uvo.getMajor()==120){ %>   
                                       <td>의과대</td>
                                 <%}else if(uvo.getMajor()==130){ %>   
                                       <td>인문대</td>
                                 <%}else if(uvo.getMajor()==140){ %>   
                                       <td>자연과학대</td>
                                 <%}else{ %>
                                       <td>AI융합대</td>
                                 <%} %>
                                 </tr>
                                 <tr>
                                 <td>이메일</td>
                                 <td><%=uvo.getEmail() %></td>
                                 </tr>
                                 <tr>
                                 <td>헬퍼인증여부</td>
                                 <%if(uvo.getHelper_check().equals("Y")){%>
                                       <td>헬퍼 인증 완료</td>
                                    <%}else{ %>
                                       <td>헬퍼 인증 미완료</td>
                                    <%} %>
                                 </tr>
                              </table>

      </ul>
      
      <h3>회원정보 수정 / 탈퇴</h3>
      <ul>
      <li>
            <input type="button" value="비밀번호 수정" onclick="location.href='pwUpdate.jsp';">
            <a><input type="button" value="회원탈퇴" onclick="location.href='deleteUserForm.jsp';"></a>
		</li>
      </ul>
   </div>
   
</div>
<!-- js추가 끝 -->
					<!-- 이용 내역 -->
                             <h2 id="content"><%=uvo.getId() %>님의 이용 내역</h2>   
                              
                              <div class="table-wrapper">
                  <table>
                     <thead>
                        <tr>
                           <th style="color: gray;">번호</th>
                           <th style="color: gray;">제목</th>
                           <th style="color: gray;">작성자</th>
                           <th style="color: gray;">작성일</th>
                        </tr>
                     </thead>
                     <tbody>
                        <% for(DeliveryBoardVO vo: list){%>
                        <%if(vo.getWork().equals("Y")) {%>
                        <tr>
                           <td><%= vo.getNum() %></td>
                           <td><a href="goViewBoard?num=<%=vo.getNum() %>"><%=vo.getTitle() %></a></td>
                           <td><%= vo.getBid() %></td>
                           <td><%= vo.getDay() %></td>
                           
                        </tr>
                        <%} %>
                     <%} %>
                     </tbody>

                  </table>
                  </div>

         


</body>
</html>