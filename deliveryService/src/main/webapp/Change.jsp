<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Change.css" />
<title>�ɺθ�:ȸ����������</title>
<style>
	img { display: block; margin: 0px auto; }
</style>
</head>
<body>
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		out.print(vo);
	%>
	<div class="logo">
		<a href="index.jsp" target="_blank" title="�ɺθ�">
		<img src="./images/Linesa.png" class="logo"></a>
	</div>
	<!--ȸ������ �κ�-->
        <section class="signup-wrap">
                <!--���̵�,���,�����Ȯ��-->
                <div class="fontgan">
                	<h2 style="display: inline;">���̵�</h2>
                	<h2 style="display: inline;"><%=vo.getId() %> ���̵�</h2>
				</div>
                <h3>��й�ȣ ����</h3>
                <span class="signup-input">
                	<input  id="signup-pww" type = "password" name = "pw" placeholder="Password">
                </span>

                <h3>��й�ȣ ��Ȯ��</h3>
                <span class="signup-input">
					<input  id="signup-pww" type = "password" name = "pw1" placeholder="Password">
                </span>
	
            <div style="margin-top: 35px;">
                <h3>�а�����</h3>
                <span style="display: flex;">
                    <span class="signup-input-birth">
                        <select class="selectbox" name="department" onchange="">
                            <option>�а�����</option>
                            <option value="101">��ȣ��</option>
                            <option value="102">�濵��</option>
                            <option value="103">������</option>
                            <option value="104">���������д�</option>
                            <option value="105">������</option>
                            <option value="106">�����</option>
                            <option value="107">��ȸ���д�</option>
                            <option value="108">��Ȱ���д�</option>
                            <option value="109">���ǰ���</option>
                            <option value="110">���д�</option>
                            <option value="111">������</option>
                            <option value="112">�ǰ���</option>
                            <option value="113">�ι���</option>
                            <option value="114">�ڿ����д�</option>
                            <option value="115">AI���մ�</option>
                        </select>
                    </span>
				</span>
				<h3>����</h3>
				<span class="signup-input">
					<label> ������ </label><input type="radio" name="local" value="local">
					<label> �ܱ��� </label><input type="radio" name="local" value="foreigner">
                </span>
                <h3>����</h3>
                <span class="signup-input">
					<label> �� </label><input type="radio" name="gender" value="m">
					<label> �� </label><input type="radio" name="gender" value="f">

                </span>
                <span class="choice">
                	<h3>�б��̸���</h3>
                </span>
                <span class="signup-input">
                    <input class="legende" id="signup-email" type = "text" name = "email" placeholder="Eamil">
                    <button class="btngo" type="button" >������</button>
                 </span>
                 <span class="choice">
                 	<h3>������ȣ</h3>
                 </span>
                <span class="signup-input">
               	 	<input class="legende" id="signup-email" type = "text" name = "emailnumber" placeholder="Certification Number">
                <button class="btngo" type="button" >Ȯ��</button>
                </span>
            </div>

            <div style="margin-top: 35px;">
            </div>

            <div>
                <!--�����ϱ�-->
               <div class="go">
                <!--  <div class="signup-btn-wrap">-->
                    <input class = "btngo" id="btn" type ="submit" value = "����ϱ�" >
                    <input class="btngo" id="btn" type ="submit" value = "�����ϱ�" >
                <!-- </div> -->
           	 </div>
            </div>
        </section>
</body>
</html>