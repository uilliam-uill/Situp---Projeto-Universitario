<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="javacom.Aluno"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SITUP - Aluno</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="style/tela-aluno-gerenciar.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css">
</head>

<body>

	<div id="barra">
		<center>
			<img src="imagens/Captura de tela 2023-09-21 174602.png" width="300">
			<br> <br>
		</center>
	</div>

	<%
	Aluno aluno = Aluno.getInstance();
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexao = null;
	String nomeAluno = "";

	try {
		String url = "jdbc:mysql://localhost:3306/situp";
		String usuario = "root";
		String senha = "5988";

		conexao = DriverManager.getConnection(url, usuario, senha);

		PreparedStatement ps = conexao.prepareStatement("SELECT nome FROM aluno WHERE id = ?");
		ps.setInt(1, aluno.getId_aluno());
		ps.execute();

		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			nomeAluno = rs.getString("nome");
		}
	} catch (SQLException e) {
		// Trate a exceção de SQLException aqui
		e.printStackTrace();
	}
	%>

	<h1 style="font-size: 50px;">
		Olá
		<%=nomeAluno%></h1>

	<div id="barra-navegacao">
		<div id="div-links">
			<a href="tela-aluno-gerenciar.html" class="a-links">Gerenciar
				transporte</a> <a href="tela-aluno-novo.html" class="a-links">Novo
				transporte</a>
		</div>
	</div>
	<br>

	<div class="input-group">
		<div class="form-outline">
			<input type="search" id="form1" class="form-control" placeholder="Placa do ônibus" /> 
		</div>
		<button type="submit" class="btn btn-primary">Procurar</button>
	</div>
<br> <br>
	<div id="form-cadastro-onibus">
		<div class="d-flex justify-content-center">
			<form method="post">
				<div class="mb-3">
					<div id="form" class="label-tamanho">
						<label> Anexe comprovante de matricula </label> <br> <input
							type="file" class="inputs-text" name="comprovante-matricula">
						<br> <br> <label class="label-tamanho"> Anexe
							comprovante de residência</label> <br> <input type="file"
							class="inputs-text" name="comprovante-residencia"> <br>
						<br> <label class="label-tamanho"> Dias de aula:</label> <br>

						<input type="checkbox" class="btn-check" id="segunda"
							name="qrcode"> <label class="btn btn-outline-primary"
							for="segunda">Segunda</label> <input type="checkbox"
							class="btn-check" id="terca" name="qrcode"> <label
							class="btn btn-outline-primary" for="terca">Terça</label> <input
							type="checkbox" name="qrcode" class="btn-check" id="quarta">
						<label class="btn btn-outline-primary" for="quarta">Quarta</label>
						<input type="checkbox" name="qrcode" class="btn-check" id="quinta">
						<label class="btn btn-outline-primary" for="quinta">Quinta</label>
						<input type="checkbox" name="qrcode" class="btn-check" id="sexta">
						<label class="btn btn-outline-primary" for="sexta">Sexta</label> <br>
						<input type="submit" id="botao-enviar" value="Salvar">

					</div>
			</form>
		</div>
	</div>
	</div>
</body>