<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ɺθ�:���� ���� ����</title>
<link rel="stylesheet" href="assets/css/Quiz.css" />
<script src="js/jquery-3.6.0.js"></script>

<script language="javascript">
	 function showAlert(){
		 alert("?��\n���۷� ����Ͽ� �ּż� �������� �����մϴ�.\n\n�츮 �ɺθ��� ?���� �����ϰ� �ɺθ��� ������ �� �ֵ���\n�ּ��� ���� ���͵帮�ڽ��ϴ�.\n�����մϴ�.");
	 }
	
 </script>

</head>
<body id="nanno">
<body>
	<script>
   		document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   	</script>
		<div class="logo">
		<a href="" title="�ɺθ�">
		<img src="./images/Logooo.png" class="logo"></a>
	</div>
	<section>
		<form action="index.html" method="post" name="login_form">
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
			
			</div>
			</form>
		</section>
	<div align="center" ><button class="btngo" type = "button" onclick="test_rs()">����</button></div>
	   		  
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
           		url:'HelperCheck', // ��û  url
           		type : 'post', // get ��� or post ���
           		data: { 
           			'work' : 'Y'
           		
           		}, 
           	
           		success : function(res){// ���� �ݹ��Լ�
           			
           			console.log(res);
           			
           			alert("���۷� ����Ͽ� �ּż� �������� �����մϴ�.\n\n�����ϰ� �ɺθ��� ������ �� �ֵ���\n�ּ��� ���� ���͵帮�ڽ��ϴ�.\n�����մϴ�.");
           			location.href = "index.jsp";
           			
           		},
           		error : function(){
           			
           			alert("error");
           			}//�����ݹ� �Լ�
           	});
       	     	
          
          }else{
          	/* loaction.href='Quiz.jsp'; */
       	   alert("�ٽ� Ǯ�����");       	
       	   location.href='Quiz.jsp';
          }  
          
          
          
        console.log(1);
        
   }
			</script>
</body>

</body>
</html>