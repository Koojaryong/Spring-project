<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<meta charset="UTF-8">
<title>회원가입 데모</title>
</head>
<body>
	<div id="login">
		<h3 class="text-center text-white pt-5">Register form</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="" method="post">
							<h3 class="text-center text-info">Register</h3>
							<div class="form-group">
								<label for="m_name" class="text-info">Name:</label><br> <input
									type="text" name="m_name" id="m_name" class="form-control" placeholder="Name">
							</div>
							<div class="form-group">
								<label for="m_id" class="text-info">Id:</label><br> <input
									type="text" name="m_id" id="m_id" class="form-control" placeholder="ID">
							</div>
							<div class="form-group">
								<label for="m_pw" class="text-info">Password:</label><br> <input
									type="password" name="m_pw" id="m_pw" class="form-control" placeholder="Password">
							</div>
							<div class="form-group">
								<label for="m_pwc" class="text-info">Password Check:</label><br>
								<input type="password" name="m_pwc" id="m_pwc" class="form-control" placeholder="Password Check">
							</div>
							<div class="form-group">
								<label for="m_hint" class="text-info">Password Hint:</label><br>
								<select id="m_hint" name="m_hint" class="form-control">
									<option>Password Serch Hint</option>
									<option>What year were you born?</option>
									<option>Birth region</option>
									<option>My Treasure No. 1</option>
									<option>Graduated elementary school</option>
									<option>the place of one's family register</option>
								</select>
							</div>
							<div class="form-group">
								<label for="m_anw" class="text-info">Answer:</label><br> <input
									type="text" name="m_anw" id="m_anw" class="form-control" placeholder="Answer">
							</div>
							<br>
							<div class="form-group" style="display:flex;">
                				<button id="register_process" type="button" class="btn btn-info btn-md" style="margin: 0 auto;">Submit</button>
                			</div>
							<div id="login-link" class="text-right">
								 <a href="/" class="text-info">Login here</a>
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
		$(document)
				.ready(
						function() {
							$("#register_process")
									.click(
											function() {
												var json = {
													m_name : $("#m_name").val(),
													m_id : $("#m_id").val(),
													m_pw : $("#m_pw").val(),
													m_pwc : $("#m_pwc").val(),
													m_hint : $("#m_hint").val(),
													m_anw : $("#m_anw").val()
												};

												for ( var str in json) {
													if (json[str].length == 0) {
														alert($("#" + str)
																.attr(
																		"placeholder")
																+ "를 입력해주세요.");
														$("#" + str).focus();
														return;
													}
												}

												$
														.ajax({
															type : "post",
															url : "register",
															data : json,
															success : function(
																	data) {
																switch (Number(data)) {
																case 0:
																	alert("정상적으로 회원가입 되었습니다.");
																	window.location.href = "/";
																	break;
																case 1:
																	alert("아이디가 중복 되었습니다.");
																	break;
																default:
																	alert("알수없는 오류가 발생 했습니다. [Error Code :"
																			+ Number(data)
																			+ "]");
																	break;
																}
															},
															error : function(
																	error) {
																alert("오류 발생"
																		+ error);
															}
														});
											});
						});
		$(function() {

			//비밀번호 확인
			$('#m_pwc').blur(function() {
				if ($('#m_pw').val() != $('#m_pwc').val()) {
					if ($('#m_pwc').val() != '') {
						alert("비밀번호가 일치하지 않습니다.");
						$('#m_pwc').val('');
						$('#m_pwc').focus();
					}
				}
			})
		});
	</script>
</body>

</html>


