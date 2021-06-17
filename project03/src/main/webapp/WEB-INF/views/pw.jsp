<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="login">
		<h3 class="text-center text-white pt-5">PW form</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div class="form-group">
					<label for="password" class="text-info">Password</label><br>
					<label for="password" class="text-info">${sessionScope.m.m_pw}</label><br>
					<button id="back_to_login" type="button"
						class="btn btn-info btn-md" onclick="location.href = '/'">Go
						Login</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>