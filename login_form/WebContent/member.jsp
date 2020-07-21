<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="script.js" charset="UTF-8"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("아이디를 입력해 주세요");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		
		window.open(url, "IDCheck", "width=300,height=150");
	}

</script>
</head>
<body onLoad="regFrm.id.focus()"> 
        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
          <div class="container">
            <div class="row wow fadeIn">
              <div class="col-md-6 mb-4 white-text text-center text-md-left">
                <h1 class="display-4 font-weight-bold">Sign UP</h1>
                <hr class="hr-light">
                <p>
                  <strong>For the more information</strong>
                </p>
                <p class="mb-4 d-none d-md-block">
                  <strong>Quickly get information from new leads and customers by signing up .WIth their information, you can funnel them into new accounts in an instant.Follow us on FACEBOOK</strong>
                </p>
                  <i class="fa fa-facebook ml-2"></i>
              </div>
              <div class="col-md-6 col-xl-5 mb-4">
                <div class="card">
                  <div class="card-body">
                    <form name="regFrm" method="post" action="memberProc.jsp">
                      <p class="h4 text-center mb-4">Sign up</p>
                      <div class="md-form">
                         <i class="fa fa-user prefix grey-text"></i>
                         <input type="text" name="id"class="form-control">
                         <label for="materialFormRegisterNameEx">ID를입력해주세요</label>
                         <input type="button" value="ID중복확인" onClick="idCheck(this.form.id.value)" class="btn btn-primary" style="display:block">
                      </div>
                      <div class="md-form">
                         <i class="fa fa-envelope prefix grey-text"></i>
                         <input type="password" name="pwd"class="form-control">
                         <label for="materialFormRegisterEmailEx">비밀번호를 입력해주세요</label>
                      </div>
                      <div class="md-form">
                         <i class="fa fa-exclamation-triangle prefix grey-text"></i>
                         <input type="password" name="repwd"class="form-control">
                         <label for="materialFormRegisterConfirmEx">비밀번호를 확인합니다</label>
                      </div>
                      <div class="md-form">
                         <i class="fa fa-exclamation-triangle prefix grey-text"></i>
                         <input type="text" name="name"class="form-control">
                         <label for="materialFormRegisterNameEx">이름을 입력해주세요</label>
                      </div>
                      <div class="md-form">
                        <i class="fa fa-lock prefix grey-text"></i>
						<input id="materialFormRegisterPasswordEx" name="birthday"class="form-control">
                        <label for="materialFormRegisterPasswordEx">생년월일을 입력해주세요 ex) 970805</label>
                      </div>
                      <div class="md-form">
                           <i class="fa fa-exclamation-triangle prefix grey-text"></i>
                            <input type="email" name="email"class="form-control">
                            <label for="materialFormRegisterPasswordEx">이메일을 입력해주세요</label>
                      </div>
                      <label for="materialFormRegisterPasswordEx">성별을 선택하세요</label>
									남<input type="radio" name="gender" value="1" checked> 
									여<input type="radio" name="gender" value="2">
									<br></br>
                       <input type="button" class="btn btn-primary"value="회원가입" onclick="inputCheck()">
                       <input type="button" class="btn btn-primary"value="로그인" onclick="location.href='login.jsp'">
                   </form> 
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</body>
</html>