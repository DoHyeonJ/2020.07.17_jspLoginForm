<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js" charset="UTF-8"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("���̵� �Է��� �ּ���.");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		
		window.open(url, "IDCheck", "width=300,height=150");
	}

</script>
</head>
<body onLoad="regFrm.id.focus()"> 
	<div align="center">
		<br /><br />
		<form name="regFrm" method="post" action="memberProc.jsp">
						<table border="1" >
							<tr bgcolor="white">
								<td colspan="3"><font color="black"><b>ȸ�� ����</b></font></td>
							</tr>
							<tr>
								<td width="20%">���̵�</td>
								<td width="50%">
									<input name="id" size="15"> 
									<input type="button" value="ID�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)">
								</td>
								<td width="30%">���̵� ���� �ּ���.</td>
							</tr>
							<tr>
								<td>�н�����</td>
								<td><input type="password" name="pwd" size="15"></td>
								<td>�н����带 �����ּ���.</td>
							</tr>
							<tr>
								<td>�н����� Ȯ��</td>
								<td><input type="password" name="repwd" size="15"></td>
								<td>�н����带 Ȯ���մϴ�.</td>
							</tr>
							<tr>
								<td>�̸�</td>
								<td><input name="name" size="15">
								</td>
								<td>�̸��� �����ּ���.</td>
							</tr>
							<tr>
								<td>����</td>
								<td>
									��<input type="radio" name="gender" value="1" checked> 
									��<input type="radio" name="gender" value="2">
								</td>
								<td>������ ���� �ϼ���.</td>
							</tr>
							<tr>
								<td>�������</td>
								<td><input name="birthday" size="6">
									ex)970805</td>
								<td>��������� ���� �ּ���.</td>
							</tr>
							<tr>
								<td>Email</td>
								<td><input name="email" size="30">
								</td>
								<td>�̸����� ���� �ּ���.</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
								   <input type="button" value="ȸ������" onclick="inputCheck()">
								    &nbsp; &nbsp; 
								    <input type="reset" value="�ٽþ���">
								    &nbsp; &nbsp; 
								    <input type="button" value="�α���" onClick="javascript:location.href='login.jsp'">
								 </td>
							</tr>
						</table>
		</form>
	</div>
</body>
</html>