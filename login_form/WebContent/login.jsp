<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	  request.setCharacterEncoding("UTF-8");
	  String id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<title>LOGIN</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("���̵� �Է��� �ּ���.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>
<body>
	<div align="center"><br/><br/>
		<%if (id != null) {%>
		<b><%=id%></b>�� ȯ�� �մϴ�.
			<a href="logout.jsp">�α׾ƿ�</a>
			<%} else {%>
    <div class="container" style="margin-top:40px">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> �α��� �Ǵ� ȸ�������� ���ֽñ�ٶ��ϴ�.</strong>
					</div>
					<div class="panel-body">
						<form name="loginFrm" action="loginProc.jsp" method="POST">
							<fieldset>
								<div class="row">
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<input class="form-control" placeholder="Username" name="id" type="text" autofocus>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
												<input class="form-control" placeholder="Password" name="pwd" type="password">
											</div>
										</div>
										<div class="form-group">
											<input type="button" class="btn btn-lg btn-primary btn-block" value="�α���" onClick="loginCheck()">
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="panel-footer ">
					ID�������Ű��� ? <a href="member.jsp" onClick=""> ȸ������ </a>
						<!-- ���� a�±� ����Ұ��� �ҽ� ���� �±׷� �����Ͽ� ��� css ������ �ؾ��� -->
						<!-- <input type="button" value="ȸ������" onClick="javascript:location.href='member.jsp'"> -->
					</div>
                </div>
			</div>
		</div>
	</div>
	<%}%>
</div>
</body>
</html>