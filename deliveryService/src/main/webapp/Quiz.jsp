<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ɺθ�:���� ���� ����</title>
<link rel="stylesheet" href="assets/css/Quiz.css" />

<script language="javascript">
	 function showAlert(){
		 alert("?��\n���۷� ����Ͽ� �ּż� �������� �����մϴ�.\n\n�츮 �ɺθ��� ?���� �����ϰ� �ɺθ��� ������ �� �ֵ���\n�ּ��� ���� ���͵帮�ڽ��ϴ�.\n�����մϴ�.");
	 }
	
 </script>

</head>
<body>
<body>
		<div class="logo">
		<a href="" title="�ɺθ�">
		<img src="./images/Logooo.png" class="logo"></a>
	</div>
	<section>
		<form action="index.html" method="post"
			name="login_form">
			<h1 class="topmenu">���� ���� ����</h1>
			
			<!-- ���� 1 -->
			<fieldset class="fie1">

				<legend><h2> ���� 1</h2></legend>
				<fieldset>
					<p>���� Ȱ���� �����ϱ� ���ؼ� ���� ���� �������ϴ� ���� �������� '������ȯ'�̴�.</P>
				</fieldset>
				<div class="checkbox">
				<br><input id = quiz1 type="radio" name="choice"value="O">O &nbsp;&nbsp;&nbsp;
					<input id = quiz1 type="radio" name="choice" value="X">X
				</div>
			</fieldset>

			<!-- ���� 2 -->
			<fieldset class="fie1">
				<legend> <h2>���� 2</h2> </legend>
				<fieldset>
					<p>���� �ø� �ɺθ��� �ϱ� ���ؼ��� ���� ������ �̸����� ������.</p>
				</fieldset>
				<div class="checkbox">
				<br><input id = quiz2 type="radio" name="choice2" value="O">O &nbsp;&nbsp;&nbsp;
					<input id = quiz2 type="radio" name="choice2" value="X">X
				</div>
			</fieldset>

			<!-- ���� 3 -->
			<fieldset class="fie1">
				<legend><h2>���� 3</h2></legend>
				<fieldset>
					<p>�ɺθ� �� ������ ��ġ ���� ������ ����� �׳� �������д�.</p>
				</fieldset>
				
				<div class="checkbox">
				<br><input id = quiz3 type="radio" name="choice3" value="O">O &nbsp;&nbsp;&nbsp;
				<input id = quiz3 type="radio" name="choice3" value="X">X
				</div>
			</fieldset>

			<!-- ���� 4 -->
			<fieldset class="fie1">
				<legend><h2>���� 4</h2></legend>
				<fieldset>
				<p>�ɺθ� ���� ���� �������� ���� �ൿ�� �ɺθ����� ��û ����� �ð�,</p>
				<p>��¥�� �Ĳ��� Ȯ���ϴ� ���̴�.</p>
				</fieldset>
				<div class="checkbox">
				<br><input id = quiz4 type="radio" name="choice4" value="O"> O &nbsp;&nbsp;&nbsp;
				<input  id = quiz4 type="radio" name="choice4" value="X">X
				</div>
			</fieldset>

			<!-- ���� 5 -->
			<fieldset class="fie1">
				<legend><h2>���� 5</h2></legend>
				<fieldset>

					<p>������ �� ���� ������� �ùٸ� ���� ?</p>
					<p>������ ������ ������ ��� ������ �Ҹ� ǥ�⺸�ٴ� �����Ϳ� �����Ѵ�.</p>

				</fieldset>
				<div class="checkbox">
				<br><input id = quiz5 type="radio" name="choice5" value="O"> O &nbsp;&nbsp;&nbsp;
				<input id = quiz5 type="radio" name="choice5" value="X"> X
				</div>
			</fieldset>
				
			<!-- ��� Ȯ�� -->
			 <div class="go">
				<br>
			  <!--  <input class="btngo" id="btn" type="submit" value="��� Ȯ���ϱ�!" onclick="showAlert();">-->
			  <a href="Quizpop.html"><input class="btngo" type="button" value="���Ȯ���ϱ�!" onclick="test_rs()"></a>
			  <form action></form>
			</div>
		</section>
	</form>
	
	 <script type="text/javascript">
        	
        	
            function test_rs(){
     
                var rs1 = document.getElementById('quiz1').value;
                var rs2 = document.getElementById('quiz2').value;
                var rs3 = document.getElementById('quiz3').value;
                var rs4 = document.getElementById('quiz4').value;
                var rs5 = document.getElementById('quiz5').value;
                
                var SC = [rs1,rs2,rs3,rs4,rs5];
                var sum = 0;
                
                for(var i=0;i<SC.length;i++){
                    if(SC[i]=='O'){
                        sum+=20;
                    }
                if(sum == 100){
                	document.getElementById('signup-pww').value='Y'}
                }
			</script>
</body>

</body>
</html>