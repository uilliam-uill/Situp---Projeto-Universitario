<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SITUP - LOGIN</title>
<link rel="stylesheet" type="text/css" href="style/tela-login.css">
<link rel="stylesheet" href="style/bootstrap.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<div id="barra">
		<center>
			<img src="imagens/Captura de tela 2023-09-21 174602.png" width="300">
			<br> <br>
		</center>
	</div>
	<table>
		<tr>
			<td width="650">
				<form id="form-login">
					<label class="form-label" style="color: black;">CPF </label><br> 
					<input class = "form-control" type="text" placeholder="***.***.***-**"> <br> <br>
					<label class="form-label" style="color: black;">SENHA</label> <br> 
					<input class = "form-control" type="password" placeholder="Sua senha"> <br> <br>
					<input class="btn btn-primary mb-3" type="submit" value="Entrar"> <br>
					<br> <a href="cadastro-aluno.jsp">Não tem conta? Cadastra-se</a>
				</form>
			</td>
			<td><img src="imagens/19197947.jpg" width="470" style = "margin-left: 20%"></td>
		</tr>
	</table>
</body>

</html>
