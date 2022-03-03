<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="assets/css/Join.css" />
<title>심부릉:회원가입</title>
<style>
img {
	display: block;
	margin: 0px auto;
}
</style>
</head>


<body>
	<div class="logo">
		<a href="index.jsp" target="_blank" title="심부릉"> <img
			src="./images/Linesa.png" class="logo"></a>
	</div>
	<!--회원가입 부분-->
	<form action="joinService" method="post">
		<section class="signup-wrap">
			<!--  <h2>회원가입</h2> -->
			<!--아이디,비번,비번재확인-->
			<h3>아이디</h3>
			<span class="signup-input"> <input id="signup-id" type="text"
				name="id" placeholder="ID"> <span class="signup-at"></span>
				<button class="btngo" type="button" onclick="IdCheck()">확인</button>
			</span> <span id="result"></span>

			<h3>비밀번호</h3>
			<span class="signup-input"> <input id="signup-pww"
				type="password" name="pw" placeholder="Password"
				onchange="check_pw()"> <span class="pw-lock"></span>
			<!-- 자물쇠 이미지 -->
			</span> <span id="check1"></span>

			<h3>비밀번호 재확인</h3>
			<span class="signup-input"> <input id="signup-pww2"
				type="password" name="pw1" placeholder="Password"
				onchange="check_pw()"> <span class="pww-lock"></span>
			</span> <span id="check"></span>

			<div style="margin-top: 35px;">
				<h3>학과선택</h3>
				<span style="display: flex;"> <span
					class="signup-input-birth"> <select id="signup-birth-mm"
						class="selectbox" name="major">
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
				<span class="signup-input"> <label> 내국인 </label><input
					type="radio" name="nation" value="L"> <label> 외국인 </label><input
					type="radio" name="nation" value="F">
				</span>
				<h3>성별</h3>
				<span class="signup-input"> <label> 남 </label><input
					type="radio" name="gender" value="M"> <label> 여 </label><input
					type="radio" name="gender" value="W">

				</span> <span class="choice">
					<h3>학교이메일</h3>
				</span> <span class="signup-input"> <input class="legende"
					id="signup-email" type="text" name="email" placeholder="Eamil">
					<button class="btngo" type="button" onclick="emailAuthentication()">인증</button>
				</span> <span class="choice">
					<h3>인증번호</h3>
				</span> <span class="signup-input"> <input class="legende"
					id="signup-email" type="text" name="emailnumber"
					placeholder="Certification Number">
					<button class="btngo" type="button" onclick="authCodeCheck()">확인</button> 
				</span>
			</div>

			<div style="margin-top: 35px;"></div>

			<div>
                <!--가입하기-->
               <div class="go">
                <!--  <div class="signup-btn-wrap">-->
                    <a href="index.jsp"><input class="btngo" id="btn" type ="button" value = "취소하기" ></a>
                    <input class="btngo" id="btn" type ="submit" value = "가입하기" >
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

    
                if(pw.length < 6 || pw.length > 16){

                	document.getElementById('check1').innerHTML='비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.'
    
                    document.getElementById('signup-pww').value='';
                }
                for(var i=0;i<SC.length;i++){
                    if(pw.indexOf(SC[i]) != -1){
                        check_SC = 1;
                    }
                }
                if(check_SC == 0){
                	document.getElementById('check1').innerHTML="!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.";
                    document.getElementById('check1').style.color="red";
                    document.getElementById('signup-pww').value="";
                }
                if(document.getElementById('signup-pww').value !=" document.getElementById('signup-pww2').value!="){
                    if(document.getElementById('signup-pww').value==document.getElementById('signup-pww2').value){
                        document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                        document.getElementById('check').style.color="blue";
                    }
                    else{
                        document.getElementById('check').innerHTML="비밀번호가 일치하지 않습니다.";
                        document.getElementById('check').style.color="red";
                    }
                }
                }
            
            </script>
	<script type="text/javascript">
            function IdCheck() {
				
				// 1. email 가져오기
				let id = $('#signup-id').val();
				
				// 2. ajax
				$.ajax({
					url : "IdCheck",
					type : "post",
					data : {
						'signup-id' : id
					},
					success : function(res) {
						console.log(res);
						if(res == 'true'){

							$('#result').html("사용가능한 이메일 입니다.");
							$('#result').css('color','green');
							
						}else{
							// 중복된 아이디
							$('#result').html("중복된 이메일 입니다.");
							$('#result').css('color','red');
							
						}
					},
					error : function () {alert("error");}
				});
				
			}
            
            
            </script>
            <script type="text/javascript">
	            function emailAuthentication(){
	            	let email = document.ocument.getElementById('signup-email').value;
	            	if (!emailValCheck()){
	                	return false;
	                }
	            	var url = "confirmEmail.jsp?email=" + document.ocument.getElementById('signup-email').value;
	            	open(url, "confirm",
	            			"toolbar=no, location=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");
	            }

            
            </script>



	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>