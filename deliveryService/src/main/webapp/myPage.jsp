<%@page import="deliveryService.model.DeliveryBoardVO"%>
<%@page import="deliveryService.model.MemberVO"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- js�߰� -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- js -->

    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ɺθ� : ����������</title>
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
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   </script>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Header -->
               <header id="header">
                  <a href="index.jsp" class="logo"><strong>�ɺθ�</strong> </a>
                  <nav>
                     <a href="#menu">Menu</a>
                  </nav>
               </header>

            <!-- Menu -->
               <nav id="menu">
                  <ul class="links">
                  <ul class="actions stacked">
                  <%if(uvo == null){ %>
                     <li><a href="Join.jsp" class="button fit">ȸ������</a></li>
                     <li><a href="Login.jsp" class="button fit">�α���</a></li>
                  <%}else{ %>
                     <li><a href="index.jsp" class="button fit">Home</a></li>
                     <li><a href="deliveryBoard.jsp" class="button fit">�ɺθ� �Խ���</a></li>
                     <li><a href="Exchange.jsp" class="button fit">������ȯ �Խ���</a></li>
                     <li><a href="CallCenter.jsp" class="button fit">������</a></li>
                     <li><a href="logoutService" class="button fit">�α׾ƿ�</a></li>
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
                              <h1>����������</h1>
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
 <!-- ȸ������ -->         
   
<!-- js�߰� -->   
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
   $(function(){
      let photo_path; // ������ ���(String)�� ���� ����
      let my_photo; // ���� ��ü(DOM)�� ���� ������ ����
      
      $('#photo_btn').click(function(){
         $('#photo_choice').show(); // ���ϼ���,����,��� ��ư ����
         $(this).hide(); // ������ư ���߱�
      });
      
      //�̹��� �̸����� ���
      $('#photo_reset').click(function(){
         $('.my-photo').attr('src',photo_path); //�̹��� �̸����� �� �̹����� �ǵ�����
         $('#photo').val(''); // ���ϼ��ð� �ʱ�ȭ
         $('#photo_choice').hide(); // ���ϼ���,����,��� ��ư ����
         $('#photo_btn').show(); // ���� ��ư ����
      
      });
      
      //�̹��� ���� �� �̹��� �̸�����
      $('#photo').change(function(){ // ���ϼ����� ÷�� or ��÷�ΰ� �ɰ��
         my_photo = this.files[0]; // ÷���� file�� �Ѱ����� �׻� files[] �迭(��ü)������ ����
         if(!my_photo){ // my_photo�� ���� ����ִٸ� = ÷���� ������ ���ٸ�,
            $('.my-photo').attr('src','${pageContext.request.contextPath}/images/face.png'); // �⺻ �̹����� ����
            return; // �̺�Ʈ(�Լ�) ����
         }
         
         if(my_photo.size > 1024*1024){ // ������ ������ �̹������� 1MB�� ������
            alert('1MB������ ���ε� ����!');
            photo.value = ''; // ���� ���ð� ������ ���
            return; // �̺�Ʈ(�Լ�) ����
         }
         
         let reader = new FileReader(); // ������ �б����ؼ� FileReader ��ü ����
         reader.readAsDataURL(my_photo); // ������ �б����� readAsDataURL �޼��� ����
         
         reader.onload = function(){ // FileReader.readAsDataURL�� ȣ��Ǿ� ������ �� ������
            photo_path = $('.my-photo').attr('src'); // �̹��� �̸����� �� �̹��� ����
            $('.my-photo').attr('src',reader.result);
         };
      }); // end of change
      
      
      //�̹��� ����
      $('#photo_submit').click(function(){
         // ���� �Է� ��ȿ�� üũ
         if($('#photo').val()==''){
            alert('������ �����ϼ���!');
            $('#photo').focus();
            return;
         }
         
         // ���� ���� (ajax(json ���) ���� ������ �̵����� �񵿱� ó��)
         let form_data = new FormData(); // ajax ��� ó�� �� FormData ��ü ����
         // FormData ��ü ������ append �޼��� ȣ���Ͽ� ���ڰ��� Ű�� value�� ���ϰ�ü�� �־��ش�.
         form_data.append('photo',my_photo); // ���� �����Ͽ� ÷�ε� ����(DOM) Element
         $.ajax({
            url : 'updateMyPhoto.do',
            type : 'post', // ���� ���ε� �� �ݵ�� post ��� ���
            data : form_data, // ������ ������ append �޼��� ó���� FormData ��ü�� �����ͷ� �Ѱ��ش�.
            dataType : 'json', //jackson ���̺귯���� ����ϱ����� json ��� 
            contentType : false, // ������ ��ü�� ���ڿ��� �ٲ��� ���� (true�� ��� �Ϲݹ���) - ������ �Ѱ��ֱ� ������ �ݵ�� false
            processData : false, // �ش� Ÿ���� true�� �ϸ� �Ϲ� text�� ����  - ������ �Ѱ��ֱ� ������ �ݵ�� false
            enctype : 'multipart/form-data', //�񵿱�ó���� ����ó���� ���� ���̺귯�� ���� enctype�� Multipart/form-data ������ �ʼ�
            success : function(param){ // ajax �񵿱�ó���� �����ϸ� plain ������ ���Ͽ� �����͸� �����´�.
               if(param.result == 'logout'){
                  alert('�α��� �� ����ϼ���!');
               }else if(param.result == 'success'){
                  alert('������ ������ �����Ǿ����ϴ�.');
                  $('#photo').val('');
                  $('#photo_choice').hide();
                  $('#photo_btn').show();
               }else{
                  alert('���� ���� ���� �߻�');   
               }
            },
            error : function(){
               alert('��Ʈ��ũ �����߻�');
            }
         });
      });
      
   });
</script>         
<!-- js�߰� -->         
         
         
         </head>
<body>

<!-- js�߰� -->
<div class="page-main">
   
   <!-- Content -->
    <!-- ȸ������ -->
   <h2 id="content"><%=uvo.getId() %>���� ȸ������</h2> 
   <div class="mypage-div">
      <h3>������ ����</h3>
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
               <input type="button" value="����" id="photo_btn">
            </div>
            <div id="photo_choice" style="display:none">
               <input type="file" id="photo" accept="image/gif,image/png,image/jpeg">
               <input type="button" value="����" id="photo_submit">
               <input type="button" value="���" id="photo_reset">
            </div>
         </li>
      </ul>  
   </div>
   
   
   
   
   
   <div class="mypage-div">
      <h3>�⺻����</h3>
      <ul>
         <table>
                                 <tr>
                                    <td>����</td>
                                    <%if(uvo.getGender().equals("M")){%>
                                       <td>����</td>
                                    <%}else{ %>
                                       <td>����</td>
                                    <%} %>
                                 </tr>
                                                                  
                                 <tr>
                                 <td>�а�</td>
                                 <%if(uvo.getMajor()==10){%>
                                       <td>��ȣ��</td>
                                 <%}else if(uvo.getMajor()==20){ %>   
                                       <td>�濵��</td>
                                 <%}else if(uvo.getMajor()==30){ %>   
                                       <td>������</td>
                                 <%}else if(uvo.getMajor()==40){ %>   
                                       <td>���������д�</td>
                                 <%}else if(uvo.getMajor()==50){ %>   
                                       <td>������</td>
                                 <%}else if(uvo.getMajor()==60){ %>   
                                       <td>�����</td>
                                 <%}else if(uvo.getMajor()==70){ %>   
                                       <td>��ȸ����</td>
                                 <%}else if(uvo.getMajor()==80){ %>   
                                       <td>��Ȱ����</td>
                                 <%}else if(uvo.getMajor()==90){ %>   
                                       <td>���ǰ���</td>
                                 <%}else if(uvo.getMajor()==100){ %>   
                                       <td>���д�</td>
                                 <%}else if(uvo.getMajor()==110){ %>   
                                       <td>������</td>
                                 <%}else if(uvo.getMajor()==120){ %>   
                                       <td>�ǰ���</td>
                                 <%}else if(uvo.getMajor()==130){ %>   
                                       <td>�ι���</td>
                                 <%}else if(uvo.getMajor()==140){ %>   
                                       <td>�ڿ����д�</td>
                                 <%}else{ %>
                                       <td>AI���մ�</td>
                                 <%} %>
                                 </tr>
                                 <tr>
                                 <td>�̸���</td>
                                 <td><%=uvo.getEmail() %></td>
                                 </tr>
                                 <tr>
                                 <td>������������</td>
                                 <%if(uvo.getHelper_check().equals("Y")){%>
                                       <td>���� ���� �Ϸ�</td>
                                    <%}else{ %>
                                       <td>���� ���� �̿Ϸ�</td>
                                    <%} %>
                                 </tr>
                              </table>

      </ul>
      
      <h3>ȸ������ ���� / Ż��</h3>
      <ul>
      <li>
            <input type="button" value="��й�ȣ ����" onclick="location.href='pwUpdate.jsp';">
            <a><input type="button" value="ȸ��Ż��" onclick="location.href='deleteUserForm.jsp';"></a>
		</li>
      </ul>
   </div>
   
</div>
<!-- js�߰� �� -->
					<!-- �̿� ���� -->
                             <h2 id="content"><%=uvo.getId() %>���� �̿� ����</h2>   
                              
                              <div class="table-wrapper">
                  <table>
                     <thead>
                        <tr>
                           <th style="color: gray;">��ȣ</th>
                           <th style="color: gray;">����</th>
                           <th style="color: gray;">�ۼ���</th>
                           <th style="color: gray;">�ۼ���</th>
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