<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<meta charset="UTF-8">

<title>로그인 데모</title>
</head>
<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Id:</label><br>
                                <input type="text" name="m_id" id="m_id" class="form-control" placeholder="ID">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="m_pw" id="m_pw" class="form-control" placeholder="Password">
                            </div>
                            <br>
                			<div class="form-group" style="display:flex;">
                				<button id="login_process" type="button" class="btn btn-info btn-md" style="margin: 0 auto;">Submit</button>
                			</div>
                            <div id="register-link" class="text-right">
                                <a href="/register" class="text-info">Register here</a>
                            </div>
                            <div class="text-right">
                            	<a href="/pwFind" class="text-info">Password Serch</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script
		src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#login_process").click(function() {
				var json = {
					m_id : $("#m_id").val(),
					m_pw : $("#m_pw").val()
				};

				for ( var str in json) {
					if (json[str].length == 0) {
						alert($("#" + str).attr("placeholder") + "를 입력해주세요.");
						$("#" + str).focus();
						return;
					}
				}

				$.ajax({
					type : "post",
					url : "Login",
					data : json,
					success : function(data) {
						switch (Number(data)) {
						case 0:
							alert("아이디 또는 비밀번호가 일치하지 않습니다.");
							break;
						case 1:
							window.location.href = "/index?m_id=" + $("#m_id").val();

						default:
							break;
						}
					},
					error : function(error) {
						alert("오류 발생" + error);
					}
				});
			});
		});
	</script>
</body>
</html>