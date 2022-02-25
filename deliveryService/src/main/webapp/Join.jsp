<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Join.css" />
<title>심부릉:회원가입</title>
<style>
	img { display: block; margin: 0px auto; }
</style>
</head>
<body>
	<div class="logo">
		<a href="" target="_blank" title="심부릉">
		<img src="./images/Linesa.png" class="logo"></a>
	</div>
	<!--회원가입 부분-->
	<form action="joinService" method = "post">
        <section class="signup-wrap">
                <!--아이디,비번,비번재확인-->
                <h3>아이디</h3>
                <span class="signup-input">
                    <input id="signup-id" type = "text" name = "id" placeholder="ID">
                     <span class="signup-at"></span>
                <button class="btngo" type="button">확인</button>
                </span>

                <h3>비밀번호</h3>
                <span class="signup-input">
                	<input  id="signup-pww" type = "password" name = "pw" placeholder="Password">
                	<span class="pw-lock"></span>
                </span>

                <h3>비밀번호 재확인</h3>
                <span class="signup-input">
					<input  id="signup-pww" type = "password" name = "pw1" placeholder="Password">
                    <span class="pww-lock"></span>
                </span>
	
            <div style="margin-top: 35px;">
                <h3>학과선택</h3>
                <span style="display: flex;">
                    <span class="signup-input-birth">
                        <select id="signup-birth-mm" class="selectbox" name="major" onchange="">
                            <option>학과선택</option>
                            <option value="10">간호대</option>
                            <option value="20">경영대</option>
                            <option value="30">공과대</option>
                            <option value="40">농업생명과학대</option>
                            <option value="50">법과대</option>
                            <option value="60">사범대</option>
                            <option value="70">사회과학대</option>
                            <option value="80">생활과학대</option>
                            <option value="90">수의과대</option>
                            <option value="100">약학대</option>
                            <option value="110">예술대</option>
                            <option value="120">의과대</option>
                            <option value="130">인문대</option>
                            <option value="140">자연과학대</option>
                            <option value="150">AI융합대</option>
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
                    <button class="btngo" type="button" >인증</button>
                 </span>
                 <span class="choice">
                 	<h3>인증번호</h3>
                 </span>
                <span class="signup-input">
               	 	<input class="legende" id="signup-email" type = "text" name = "emailnumber" placeholder="Certification Number">
                <button class="btngo" type="button" >중복 확인</button>
                </span>
            </div>

            <div style="margin-top: 35px;">
            </div>

            <div>
                <!--가입하기-->
               <div class="go">
                <!--  <div class="signup-btn-wrap">-->
                    <input class = "btngo" id="btn" type ="submit" value = "취소" >
                    <input class="btngo" id="btn" type ="submit" value = "가입하기" >
                <!-- </div> -->
           	 </div>
            </div>
        </section>
        </form>
</body>
</html>