<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Change.css" />
<title>심부릉:회원정보수정</title>
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
		<a href="index.jsp" target="_blank" title="심부릉">
		<img src="./images/Linesa.png" class="logo"></a>
	</div>
	<!--회원정보 부분-->
        <section class="signup-wrap">
                <!--아이디,비번,비번재확인-->
                <div class="fontgan">
                	<h2 style="display: inline;">아이디</h2>
                	<h2 style="display: inline;"><%=vo.getId() %> 아이디</h2>
				</div>
                <h3>비밀번호 변경</h3>
                <span class="signup-input">
                	<input  id="signup-pww" type = "password" name = "pw" placeholder="Password">
                </span>

                <h3>비밀번호 재확인</h3>
                <span class="signup-input">
					<input  id="signup-pww" type = "password" name = "pw1" placeholder="Password">
                </span>
	
            <div style="margin-top: 35px;">
                <h3>학과선택</h3>
                <span style="display: flex;">
                    <span class="signup-input-birth">
                        <select class="selectbox" name="department" onchange="">
                            <option>학과선택</option>
                            <option value="101">간호대</option>
                            <option value="102">경영대</option>
                            <option value="103">공과대</option>
                            <option value="104">농업생명과학대</option>
                            <option value="105">법과대</option>
                            <option value="106">사범대</option>
                            <option value="107">사회과학대</option>
                            <option value="108">생활과학대</option>
                            <option value="109">수의과대</option>
                            <option value="110">약학대</option>
                            <option value="111">예술대</option>
                            <option value="112">의과대</option>
                            <option value="113">인문대</option>
                            <option value="114">자연과학대</option>
                            <option value="115">AI융합대</option>
                        </select>
                    </span>
				</span>
				<h3>국적</h3>
				<span class="signup-input">
					<label> 내국인 </label><input type="radio" name="local" value="local">
					<label> 외국인 </label><input type="radio" name="local" value="foreigner">
                </span>
                <h3>성별</h3>
                <span class="signup-input">
					<label> 남 </label><input type="radio" name="gender" value="m">
					<label> 여 </label><input type="radio" name="gender" value="f">

                </span>
                <span class="choice">
                	<h3>학교이메일</h3>
                </span>
                <span class="signup-input">
                    <input class="legende" id="signup-email" type = "text" name = "email" placeholder="Eamil">
                    <button class="btngo" type="button" >재인증</button>
                 </span>
                 <span class="choice">
                 	<h3>인증번호</h3>
                 </span>
                <span class="signup-input">
               	 	<input class="legende" id="signup-email" type = "text" name = "emailnumber" placeholder="Certification Number">
                <button class="btngo" type="button" >확인</button>
                </span>
            </div>

            <div style="margin-top: 35px;">
            </div>

            <div>
                <!--가입하기-->
               <div class="go">
                <!--  <div class="signup-btn-wrap">-->
                    <input class = "btngo" id="btn" type ="submit" value = "취소하기" >
                    <input class="btngo" id="btn" type ="submit" value = "변경하기" >
                <!-- </div> -->
           	 </div>
            </div>
        </section>
</body>
</html>