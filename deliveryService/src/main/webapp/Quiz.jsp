<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ɺθ�:���� ���� ����</title>
<link rel="stylesheet" href="assets/css/Quiz.css" />
</head>
<body>
<body>
		<div class="logo">
		<a href="" title="�ɺθ�">
		<img src="./images/Logooo.png" class="logo"></a>
	</div>
	<section>
		<form action="login_action.jsp" method="post"
			name="login_form">
			<h1 class="topmenu">���� ���� ����</h1>
			
			<!-- ���� 1 -->
			<fieldset class="fie1">

				<legend><h2> ���� 1</h2></legend>
				<fieldset>
					<p>���� Ȱ���� �����ϱ� ���ؼ� ���� ���� �������ϴ� ���� �������� '������ȯ'�̴�.</P>
				</fieldset>
				<div class="checkbox">
				<br><input  type="radio" name="choice"value="O">O &nbsp;&nbsp;&nbsp;
				<input  type="radio" name="choice" value="X">X
				</div>
			</fieldset>

			<!-- ���� 2 -->
			<fieldset class="fie1">
				<legend> <h2>���� 2</h2> </legend>
				<fieldset>
					<p>���� �ø� �ɺθ��� �ϱ����ؼ��� ���� ������ �̸����� ������.</p>
				</fieldset>
				<div class="checkbox">
				<br><input type="radio" name="choice2" value="O">O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice2" value="X">X
				</div>
			</fieldset>

			<!-- ���� 3 -->
			<fieldset class="fie1">
				<legend><h2>���� 3</h2></legend>
				<fieldset>
					<p>�ɺθ��� ������ ��ġ ���� ������ ����� �׳� �������д�.</p>
				</fieldset>
				
				<div class="checkbox">
				<br><input type="radio" name="choice3" value="O">O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice3" value="X">X
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
				<br><input type="radio" name="choice4" value="O"> O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice4" value="X">X
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
				<br><input type="radio" name="choice5" value="O"> O &nbsp;&nbsp;&nbsp;
				<input type="radio" name="choice5" value="X"> X
				</div>
			</fieldset>

			<!-- ��� Ȯ�� -->
			<div class="go">
				<br>
				<input class="btngo" id="btn" type="submit" value="��� Ȯ���ϱ�!">
			</div>
		</form>
	</section>
</body>

</body>
</html>