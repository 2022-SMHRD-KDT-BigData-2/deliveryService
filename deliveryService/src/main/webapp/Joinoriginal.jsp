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
        <h1> ȸ������ </h1>
        <br>
        <br>
        <br>        
        <!-- ���̵�,�н����� -->
        <fieldset class = "fie1">
            <label class = "legend"> ���̵� </label> 
            <input type = "text" name = "id"> <button type="button">�ߺ�Ȯ��</button>
            <label class = "legend"> �н�����  </label> 
            <input type = "password" name = "pw">
            <label class = "legend"> �н����� ��Ȯ��  </label> 
            <input type = "password" name = "pw1">
        </fieldset>
       
        <!-- ���� -->
        <fieldset class = "fie1">
            <legend> ���� </legend>
            <label> �� </label><input type="radio" name="gender" value="m">
            <label> �� </label><input type="radio" name="gender" value="f">
        </fieldset>
    
        <!-- �а����� -->    
    <fieldset class = "fie1">
        <legend> �а����� </legend>
        <select name = "department">
            <option value="101"> ��ȣ�� </option>
            <option value="102"> �濵�� </option>
            <option value="103"> ������ </option>
            <option value="104"> ���������д� </option>
            <option value="105"> ������ </option>
            <option value="106"> ����� </option>
            <option value="107"> ��ȸ���д� </option>
            <option value="108"> ��Ȱ���д� </option>
            <option value="109"> ���ǰ��� </option>
            <option value="110"> ���д� </option>
            <option value="111"> ������ </option>
            <option value="112"> �ǰ��� </option>
            <option value="113"> �ι��� </option>
            <option value="114"> �ڿ����д� </option>
            <option value="115"> AI���մ� </option>
        </select>
    </fieldset>
    
    <!-- ���� -->
    <fieldset class = "fie1">
        <legend> ���� </legend>
        <label> ������ </label><input type="radio" name="local" value="local">
        <label> �ܱ��� </label><input type="radio" name="local" value="foreigner">
    </fieldset>
    
    <!-- ���� -->
    <fieldset class = "fie1">
        <legend> �����ޱ� </legend>
        <label class = "legend"> �б� �̸��� </label> 
        <input  class="legende" type = "text" name = "email"> <button type="button" >����</button>
        <label class = "legend"> ������ȣ </label>
        <input class="legende" type = "text" name = "emailnumber"> <button type="button" >Ȯ��</button>
    </fieldset>    
   
    <!-- ���� ��� ����-->
    <fieldset class = "fie1">
        <legend> ��� ���� </legend>
        <label> ���� ����� �����մϴ�. </label>
        <input type="checkbox" name="service">
    </fieldset>
    <!-- �����ϱ�, ��� -->
	<span>
    	<input  id="btn" type ="submit" value = "�����ϱ�" style="cursor: pointer;">
    	<input  class="btn" id="btn" type ="submit" value = "���" style="cursor: pointer;">
	</span>
    </form>
	
</body>
</html>