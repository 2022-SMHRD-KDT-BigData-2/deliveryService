<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Join.css" />
<title>Insert title here</title>
</head>
<body>
	 <form class="tab1" action = "login_action.jsp" method = "post" name = "login_form">       
        <div class="Logo-wrap">
        	<img alt="" src="">
        </div>
        <h1> 회원가입 </h1>
        <br>
        <br>
        <br>        
        <!-- 아이디,패스워드 -->
        <fieldset class = "fie1">
            <label class = "legend"> 아이디 </label> 
            <input type = "text" name = "id"> <button type="button">중복확인</button>
            <label class = "legend"> 패스워드  </label> 
            <input type = "password" name = "pw">
            <label class = "legend"> 패스워드 재확인  </label> 
            <input type = "password" name = "pw1">
        </fieldset>
       
        <!-- 성별 -->
        <fieldset class = "fie1">
            <legend> 성별 </legend>
            <label> 남 </label><input type="radio" name="gender" value="m">
            <label> 여 </label><input type="radio" name="gender" value="f">
        </fieldset>
    
        <!-- 학과선택 -->    
    <fieldset class = "fie1">
        <legend> 학과선택 </legend>
        <select name = "department">
            <option value="101"> 간호대 </option>
            <option value="102"> 경영대 </option>
            <option value="103"> 공과대 </option>
            <option value="104"> 농업생명과학대 </option>
            <option value="105"> 법과대 </option>
            <option value="106"> 사범대 </option>
            <option value="107"> 사회과학대 </option>
            <option value="108"> 생활과학대 </option>
            <option value="109"> 수의과대 </option>
            <option value="110"> 약학대 </option>
            <option value="111"> 예술대 </option>
            <option value="112"> 의과대 </option>
            <option value="113"> 인문대 </option>
            <option value="114"> 자연과학대 </option>
            <option value="115"> AI융합대 </option>
        </select>
    </fieldset>
    
    <!-- 국적 -->
    <fieldset class = "fie1">
        <legend> 국적 </legend>
        <label> 내국인 </label><input type="radio" name="local" value="local">
        <label> 외국인 </label><input type="radio" name="local" value="foreigner">
    </fieldset>
    
    <!-- 인증 -->
    <fieldset class = "fie1">
        <legend> 인증받기 </legend>
        <label class = "legend"> 학교 이메일 </label> 
        <input  class="legende" type = "text" name = "email"> <button type="button" >인증</button>
        <label class = "legend"> 인증번호 </label>
        <input class="legende" type = "text" name = "emailnumber"> <button type="button" >확인</button>
    </fieldset>    
   
    <!-- 서비스 약관 동의-->
    <fieldset class = "fie1">
        <legend> 약관 동의 </legend>
        <label> 서비스 약관에 동의합니다. </label>
        <input type="checkbox" name="service">
    </fieldset>
    <!-- 가입하기, 취소 -->
	<span>
    	<input  id="btn" type ="submit" value = "가입하기" style="cursor: pointer;">
    	<input  class="btn" id="btn" type ="submit" value = "취소" style="cursor: pointer;">
	</span>
    </form>
	
</body>
</html>