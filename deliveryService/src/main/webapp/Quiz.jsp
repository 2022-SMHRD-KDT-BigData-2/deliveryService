<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>심부릉:헬퍼 인증 퀴즈</title>
<link rel="stylesheet" href="assets/css/Quiz.css" />
</head>
<body>
<body>
		<div class="logo">
		<a href="" title="심부릉">
		<img src="./images/Logooo.png" class="logo"></a>
	</div>
	<section>
		<form action="login_action.jsp" method="post"
			name="login_form">
			<h1 class="topmenu">헬퍼 인증 퀴즈</h1>
			
			<!-- 퀴즈 1 -->
			<fieldset class="fie1">

				<legend><h2> 질문 1</h2></legend>
				<fieldset>
					<p>헬퍼 활동을 시작하기 위해서 가장 먼저 눌러야하는 것은 프로필의 '헬퍼전환'이다.</P>
				</fieldset>
				<div class="checkbox">
				<br><input  type="radio" name="choice"value="O">O &nbsp;&nbsp;&nbsp;
				<input  type="radio" name="choice" value="X">X
				</div>
			</fieldset>

			<!-- 퀴즈 2 -->
			<fieldset class="fie1">
				<legend> <h2>질문 2</h2> </legend>
				<fieldset>
					<p>고객이 올린 심부름을 하기위해서는 먼저 고객에게 이메일을 보낸다.</p>
				</fieldset>
				<div class="checkbox">
				<br><input type="radio" name="choice2" value="O">O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice2" value="X">X
				</div>
			</fieldset>

			<!-- 퀴즈 3 -->
			<fieldset class="fie1">
				<legend><h2>질문 3</h2></legend>
				<fieldset>
					<p>심부름전 수행중 피치 못할 사정이 생기면 그냥 내버려둔다.</p>
				</fieldset>
				
				<div class="checkbox">
				<br><input type="radio" name="choice3" value="O">O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice3" value="X">X
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
				<br><input type="radio" name="choice4" value="O"> O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice4" value="X">X
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
				<br><input type="radio" name="choice5" value="O"> O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice5" value="X"> X
				</div>
			</fieldset>

			<!-- 결과 확인 -->
			<div class="go">
				<br>
				<input class="btngo" id="btn" type="submit" value="결과 확인하기!">
			</div>
		</form>
	</section>
</body>

</body>
</html>