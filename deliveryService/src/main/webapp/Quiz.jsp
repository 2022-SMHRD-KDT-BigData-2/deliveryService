<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>심부릉:헬퍼 인증 퀴즈</title>
<link rel="stylesheet" href="assets/css/Quiz.css" />
<script src="js/jquery-3.6.0.js"></script>

<script language="javascript">
	 function showAlert(){
		 alert("?님\n헬퍼로 등록하여 주셔서 진심으로 감사합니다.\n\n우리 심부릉은 ?님이 안전하게 심부름을 수행할 수 있도록\n최선을 다해 도와드리겠습니다.\n감사합니다.");
	 }
	
 </script>

</head>
<body id="nanno">
<body>
	<script>
   		document.getElementById('nanno').style.font = '20px 넥슨Lv1고딕 OTF Light';
   	</script>
		<div class="logo">
		<a href="" title="심부릉">
		<img src="./images/Logooo.png" class="logo"></a>
	</div>
	<section>
		<form action="index.html" method="post" name="login_form">
			<h1 class="topmenu">헬퍼 인증 퀴즈</h1>
			
			<!-- 퀴즈 1 -->
			<fieldset class="fie1">

				<legend><h2> 질문 1</h2></legend>
				<fieldset>
					<p>헬퍼 활동을 시작하기 위해서 가장 먼저 눌러야하는 것은 프로필의 '헬퍼전환'이다.</P>
				</fieldset>
				<div class="checkbox">
				<br><input id = quiz1 type="radio" name="choice"value="O">O &nbsp;&nbsp;&nbsp;
					<input id = quiz1 type="radio" name="choice" value="X">X
				</div>
			</fieldset>

			<!-- 퀴즈 2 -->
			<fieldset class="fie1">
				<legend> <h2>질문 2</h2> </legend>
				<fieldset>
					<p>고객이 올린 심부름을 하기 위해서는 먼저 고객에게 이메일을 보낸다.</p>
				</fieldset>
				<div class="checkbox">
				<br><input id = quiz2 type="radio" name="choice2" value="O">O &nbsp;&nbsp;&nbsp;
					<input id = quiz2 type="radio" name="choice2" value="X">X
				</div>
			</fieldset>

			<!-- 퀴즈 3 -->
			<fieldset class="fie1">
				<legend><h2>질문 3</h2></legend>
				<fieldset>
					<p>심부름 전 수행중 피치 못할 사정이 생기면 그냥 내버려둔다.</p>
				</fieldset>
				
				<div class="checkbox">
				<br><input id = quiz3 type="radio" name="choice3" value="O">O &nbsp;&nbsp;&nbsp;
				<input id = quiz3 type="radio" name="choice3" value="X">X
				</div>
			</fieldset>

			<!-- 퀴즈 4 -->
			<fieldset class="fie1">
				<legend><h2>질문 4</h2></legend>
				<fieldset>
				<p>심부름 수행 유의 사항으로 옳은 행동은 심부름지원 요청 내용과 시간,</p>
				<p>날짜를 꼼꼼히 확인하는 것이다.</p>
				</fieldset>
				<div class="checkbox">
				<br><input id = quiz4 type="radio" name="choice4" value="O"> O &nbsp;&nbsp;&nbsp;
				<input  id = quiz4 type="radio" name="choice4" value="X">X
				</div>
			</fieldset>

			<!-- 퀴즈 5 -->
			<fieldset class="fie1">
				<legend><h2>질문 5</h2></legend>
				<fieldset>

					<p>적절한 고객 응대 방법으로 올바른 것은 ?</p>
					<p>고객과의 마찰이 심해질 경우 고객에게 불만 표출보다는 고객센터에 연락한다.</p>

				</fieldset>
				<div class="checkbox">
				<br><input id = quiz5 type="radio" name="choice5" value="O"> O &nbsp;&nbsp;&nbsp;
				<input id = quiz5 type="radio" name="choice5" value="X"> X
				</div>
			</fieldset>
				
			<!-- 결과 확인 -->
			 <div class="go">
				<br>
			  <!--  <input class="btngo" id="btn" type="submit" value="결과 확인하기!" onclick="showAlert();">-->
			
			</div>
			</form>
		</section>
	<div align="center" ><button class="btngo" type = "button" onclick="test_rs()">전송</button></div>
	   		  
	 <script type="text/javascript">
        	
	  function test_rs(){
      	
   	   var rs1 = $('input[name=choice]:checked').val();
   	   var rs2 = $('input[name=choice2]:checked').val();
   	   var rs3 = $('input[name=choice3]:checked').val();
   	   var rs4 = $('input[name=choice4]:checked').val();
   	   var rs5 = $('input[name=choice5]:checked').val();
   	   
   	   var sc2 = [rs1,rs2,rs3,rs4,rs5];
          var sc = ['O','X','X','O','O'];
          var sum = 0;
          console.log(sc[0]);
          console.log(sc[1]);
          console.log(sc[2]);
          console.log(sc[3]);
          console.log(sc[4]);
          
          for(var i=0;i<sc.length;i++){
              if(sc[i]==sc2[i]){
       
                  sum+=2;
              }
          }
          
          if(sum == 10){	
       	   
       	   $.ajax({
           		url:'HelperCheck', // 요청  url
           		type : 'post', // get 방식 or post 방식
           		data: { 
           			'work' : 'Y'
           		
           		}, 
           	
           		success : function(res){// 성공 콜백함수
           			
           			console.log(res);
           			
           			alert("헬퍼로 등록하여 주셔서 진심으로 감사합니다.\n\n안전하게 심부름을 수행할 수 있도록\n최선을 다해 도와드리겠습니다.\n감사합니다.");
           			location.href = "index.jsp";
           			
           		},
           		error : function(){
           			
           			alert("error");
           			}//에러콜백 함수
           	});
       	     	
          
          }else{
          	/* loaction.href='Quiz.jsp'; */
       	   alert("다시 풀어보세요");       	
       	   location.href='Quiz.jsp';
          }  
          
          
          
        console.log(1);
        
   }
			</script>
</body>

</body>
</html>