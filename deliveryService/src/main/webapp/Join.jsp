<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="assets/css/Join.css" />
<title>�ɺθ�:ȸ������</title>
<style>
	img { display: block; margin: 0px auto; }
</style>
</head>
	
			
<body>
	<div class="logo">
		<a href="index.jsp" target="_blank" title="�ɺθ�">
		<img src="./images/Linesa.png" class="logo"></a>
	</div>
	<!--ȸ������ �κ�-->
	<form action="joinService" method = "post">
        <section class="signup-wrap">
				<!--  <h2>ȸ������</h2> -->
                <!--���̵�,���,�����Ȯ��-->
                <h3>���̵�</h3>
                <span class="signup-input">
                    <input id="signup-id" type = "text" name = "id" placeholder="ID">
                     <span class="signup-at"></span>
                <button class="btngo" type="button">Ȯ��</button>
                </span>

                <h3>��й�ȣ</h3>
                <span class="signup-input">
                	<input  id="signup-pww" type = "password" name = "pw" placeholder="Password" onchange="check_pw()">
           
                	<span class="pw-lock"></span><!-- �ڹ��� �̹��� -->
                </span>
                <span id="check1"></span>

                <h3>��й�ȣ ��Ȯ��</h3>
                <span class="signup-input">
					<input  id="signup-pww2" type = "password" name = "pw1" placeholder="Password" onchange="check_pw()">				
                    <span class="pww-lock"></span>
                </span>
				<span id="check"></span>
				
            <div style="margin-top: 35px;">
                <h3>�а�����</h3>
                <span style="display: flex;">
                    <span class="signup-input-birth">
                        <select id="signup-birth-mm" class="selectbox" name="major" onchange="">
                            <option>�а�����</option>
                            <option value="10">��ȣ��</option>
                            <option value="20">�濵��</option>
                            <option value="30">������</option>
                            <option value="40">���������д�</option>
                            <option value="50">������</option>
                            <option value="60">�����</option>
                            <option value="70">��ȸ���д�</option>
                            <option value="80">��Ȱ���д�</option>
                            <option value="90">���ǰ���</option>
                            <option value="100">���д�</option>
                            <option value="110">������</option>
                            <option value="120">�ǰ���</option>
                            <option value="130">�ι���</option>
                            <option value="140">�ڿ����д�</option>
                            <option value="150">AI���մ�</option>
                        </select>
                    </span>
				</span>
				<h3>����</h3>
				<span class="signup-input">
					<label> ������ </label><input type="radio" name="nation" value="L">
					<label> �ܱ��� </label><input type="radio" name="nation" value="F">
                </span>
                <h3>����</h3>
                <span class="signup-input">
					<label> �� </label><input type="radio" name="gender" value="M">
					<label> �� </label><input type="radio" name="gender" value="W">

                </span>
                <span class="choice">
                	<h3>�б��̸���</h3>
                </span>
                <span class="signup-input">
                    <input class="legende" id="signup-email" type = "text" name = "email" placeholder="Eamil">
                    <button class="btngo" type="button" >����</button>
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
                    <a href="index.jsp"><input class="btngo" id="btn" type ="button" value = "����ϱ�" ></a>
                    <a href="joinService"><input class="btngo" id="btn" type ="button" value = "�����ϱ�" ></a>
                <!-- </div> -->
           	 </div>
            </div>
        </section>
        
        </form>
        
        <script type="text/javascript">
        	
        	
            function check_pw(){
     
                var pw = document.getElementById('signup-pww').value;
                var SC = ["!","@","#","$","%"];
                var check_SC = 0;

    	
                if(pw.length < 6|| pw.length > 16){

    
                if(pw.length < 6 pw.length > 16){

                	document.getElementById('check1').innerHTML='��й�ȣ�� 6���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.'
    
                    document.getElementById('signup-pww').value='';
                }
                for(var i=0;i<SC.length;i++){
                    if(pw.indexOf(SC[i]) != -1){
                        check_SC = 1;
                    }
                }
                if(check_SC == 0){
                	document.getElementById('check1').innerHTML="!,@,#,$,% �� Ư�����ڰ� �� ���� �ʽ��ϴ�.";
                    document.getElementById('check1').style.color="red";
                    document.getElementById('signup-pww').value="";
                }
                if(document.getElementById('signup-pww').value !=" document.getElementById('signup-pww2').value!="){
                    if(document.getElementById('signup-pww').value==document.getElementById('signup-pww2').value){
                        document.getElementById('check').innerHTML='��й�ȣ�� ��ġ�մϴ�.'
                        document.getElementById('check').style.color="blue";
                    }
                    else{
                        document.getElementById('check').innerHTML="��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
                        document.getElementById('check').style.color="red";
                    }
                }
            }
            
            </script>
			
			
</body>
</html>