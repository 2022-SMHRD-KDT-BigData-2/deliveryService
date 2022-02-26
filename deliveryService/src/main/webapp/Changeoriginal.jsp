<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	  <form class="tab1" action = "login_action.jsp" method = "post" name = "login_form">       
        <h1> 회원 정보 수정 </h1>
        <br>
        <br>
        <br>
        <!-- 아이디,패스워드 -->
        <fieldset class = "fie1">
            <label class = "legend"> 아이디 </label> 
            <input type = "text" name = "id"> 
            <label class = "legend"> 패스워드  </label> 
            <input type = "password" name = "pw">
            <label class = "legend"> 패스워드 재확인  </label> 
            <input type = "password1" name = "pw1">
        </fieldset>
       
        <!-- 성별 -->
        <fieldset class = "fie1">
            <legend> 성별 </legend>
            <label> 남 </label><input type="radio" name="gender" value="m">
            <label> 여 </label><input type="radio" name="gender" value="f">
        </fieldset>
    
        <!-- 학과선택 -->    
    <fieldset class = "fie1">
        <legend> 학과변경 </legend>
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
        <legend> 인증 이메일 변경 </legend>
        <label class = "legend"> 학교 이메일 </label> 
        <input type = "text" name = "email"> <button type="button">재인증</button>
        <label class = "legend"> 인증번호 </label>
        <input type = "text" name = "emailnumber"> <button type="button">확인</button>
    </fieldset>    
   
    <!-- 변경하기, 취소 -->
    <input id="btn" type ="submit" value = "변경하기">
    <input id="btn" type ="submit" value = "취소">
    </form>
	
</body>
</html>