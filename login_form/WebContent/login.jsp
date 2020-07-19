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
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
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
		<b><%=id%></b>님 환영 합니다.
			<a href="logout.jsp">로그아웃</a>
			<%} else {%>
    <div class="container" style="margin-top:40px">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> 로그인 또는 회원가입을 해주시기바랍니다.</strong>
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
											<input type="button" class="btn btn-lg btn-primary btn-block" value="로그인" onClick="loginCheck()">
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="panel-footer ">
					ID가없으신가요 ? <a href="member.jsp" onClick=""> 회원가입 </a>
						<!-- 위의 a태그 적용불가능 할시 밑의 태그로 변경하여 사용 css 재적용 해야함 -->
						<!-- <input type="button" value="회원가입" onClick="javascript:location.href='member.jsp'"> -->
					</div>
                </div>
			</div>
		</div>
	</div>
	<%}%>
</div>
</body>
</html>