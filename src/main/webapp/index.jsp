<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SITUP - Inicio</title>
<link rel="stylesheet" type="text/css" href="style/index.css">

<link rel="stylesheet" href="css/bootstrap.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<div id="barra">
		<center> 
			<img src="imagens/Captura de tela 2023-09-21 174602.png" width="300">
			<br> <br> <a href = "tela-login-prefeitura.jsp" class="botao-links">Area
				Prefeitura</a> <a href = "tela-login.jsp" class="botao-links">Area Aluno</a>
		</center> 
	</div>

	<h1 class="Display-1" id="titulo-principal">GESTÃO DE TRANSPORTE
		UNIVERSITARIO PARA PREFEITURAS</h1>

	<div id="container" class="bd-placeholder-img rounded float-start">
		<div class="apre-um">
			<p class="texto-index" id="titulo-p-um">Inscrição Online</p>
			<br>
			<p class="texto-index">Inscreva-se no transporte universitário
				sem sair de casa! Use nossa plataforma online para garantir sua vaga
				de forma rápida e conveniente</p>
			<center>
				<input type="button" value="SAIBA MAIS" class="button-saibamais"
					id="botao-um"
					onclick="window.location.href = 'incricao-expli.jsp';">
			</center>
		</div>

		<div class="apre-um">
			<p class="texto-index" id="titulo-p-dois">Gestão de Presença
				Simplificada com QR Code</p>
			<br>
			<p class="texto-index" id="tex-square-two">Simplificamos a gestão
				de presença com QR codes. Agora, acompanhar números de faltas é tão
				fácil quanto escanear um código.</p>
			<center>
				<input type="button" value="SAIBA MAIS" class="button-saibamais"
					id="botao-dois"
					onclick="window.location.href = 'qrcode-expli.jsp';">
			</center>
		</div>

		<div class="apre-um">
			<p class="texto-index" id="titulo-p-tres">Gestão Eficiente de
				Presença com Otimização de Vagas</p>
			<br>
			<p class="texto-index">Nosso sistema gerencia os dias de aula
				para atender ao máximo de alunos. Garantimos eficiência e melhor
				aproveitamento de recursos.</p>
			<center>
				<input type="button" value="SAIBA MAIS" class="button-saibamais"
					id="botao-tres"
					onclick="window.location.href = 'gestao-expli.jsp';">
			</center>
		</div>
	</div>


</body>

</html>