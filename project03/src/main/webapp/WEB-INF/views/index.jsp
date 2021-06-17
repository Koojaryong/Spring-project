<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<meta charset="UTF-8">

<title>메인 페이지</title>
</head>
<body>
	<div id="login">
		<h3 class="text-center text-white pt-5">Main form</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div class="form-group">
					<label for="text" class="text-info"><h1>Main Page</h1></label><br>
					<label for="text" class="text-info"><h3>
						${sessionScope.m.m_name}님 접속중!</h3></label><br>						
					<button a href="/logout" type="button"
						class="btn btn-info btn-md" onclick="location.href = '/'">Logout</button>
					<button a href="/schedule/calendar" type="button" class="btn btn-info btn-md"
						onclick="location.href = '/calendar.do'">Go Calendar</button>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
</body>
</html>