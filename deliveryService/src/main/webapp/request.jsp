<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ɺθ�:��û������</title>
</head>
<body>
	<body>
    <form class="tab1" action = "errand_action.jsp" method = "post" name = "errand_form">
    <header>
        <div data-role="page" id="page1">
            <div data-role="header">
              <h1 align="center">�ɺθ� ��û��</h1>
            </div>
    </header>

        <fieldset class = "fie1" align="center">
                <br>
                <label class = "legend"><b>�ɺθ� �׸� ����</b> </label>
                <select name="errand" style="text-align: left; width: 250px; height: 30px;">
                    <option value="none">ī�װ��� ����</option>
                    <option value="10">���</option>
                    <option value="20">����</option>
                    <option value="30">���б�</option>
                    <option value="40">���Ҵ���</option>
                    <option value="50">�뺴���ϱ�</option>
                    <option value="60">����</option>
                    <option value="70">���� ����ֱ�</option>
                    <option value="80">��Ȱ�� ����</option>
                    <option value="90">�ݷ���</option>
                    <option value="100">��ǰ�뿩</option>
                    <option value="110">��Ÿ</option>
                </select>
                <br>
                <br>
            
                <div data-role="content">
                    <label class = "legend"><b>�ɺθ� ����</b> </label> <input type="text" name="title" placeholder="������ �Է����ּ���!"
                        style="text-align: left; width: 250px; height: 30px;"></p>
                    <label class = "legend"><b>��� ����</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p>
                    <label class = "legend"><b>���� ����</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p>
                      
                    <hr>
                    <label class = "legend"><b>��ȣ ���� ���� : </b> </label>
                    ���� <input type="radio" name="gender" value="men"> ���� <input type="radio" name="gender" value="women"> ���� <input type="radio" name="gender" value="none">
                    <br>
                    <br>
                </div>
            
                <div data-role="content">
                    <label class = "legend"><b>���� ���� �а� ����</b> </label>
                    <select name="major" style="text-align: left; width: 250px; height: 30px;">
                        <option value="none">�а� ����</option>
                        <option value="10">��ȣ��</option>
                        <option value="20">�濵��</option>
                        <option value="30">������</option>
                        <option value="40">����������д�</option>
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
                    <br>
                    <br>
                </div>
            
            <div data-role="content">
                <label class = "legend"><b>�ɺθ� ���</b> </label> <input type="text" name="place" id="txt1" placeholder="�ɺθ� ���� ��Ҹ� �Է����ּ���." style="text-align: left; width: 250px; height: 30px;"></p>     
                <label class = "legend"><b>�ɺθ���</b> </label> <input type="text" name="money" placeholder="ex) 5000" style="text-align: left; width: 250px; height: 30px;"></p>
            </div>

            <hr>
            <div data-role="fieldcontain">
              <label class = "legend"><b>�ɺθ� ��û ����</b> </label>
              <input type="file" value="����÷��" align="right">
              
              <br>
              <input type="text" name="content" placeholder="��û ������ ���ϰ� �Է��� �ּ���."
              style="text-align: left; width: 400px; height: 200px;">
            </div>
            <br>
           </div>
        </fieldset>
           <br>
           <div data-role="footer" data-position="fixed" align="center">
                <input type="submit" value="Ȩ����">
                <input type="submit" value="���">
                <input type="submit" value="�ø���">
           </div>
            
         </div>     
         
</body>
	
</body>
</html>