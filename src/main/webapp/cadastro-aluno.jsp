<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SITUP - CADASTRO</title>
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
			<td width="650"><%@ page import="java.sql.Connection"%>
				<%@ page import="java.sql.DriverManager"%> <%@ page
					import="java.sql.SQLException"%> <%@ page
					import="javacom.Aluno"%> 
					<script>
					 function enviarFormulario() {
	                    
	                    }
					</script>

				<form id="form-login" method="post">
					<label class="form-label" style="color: black;">NOME</label> <br>
					<input class="form-control" type="text" id="nome" name="nomealuno" placeholder="Seu Nome">
						 <br> <br> 
						 
						 <label class="form-label" style="color: black;">CPF </label>
						 <br> 
						 <input class="form-control" type="text" id="cpf" placeholder="***.***.***-**" name="cpfaluno">
						 <br> <br>
						 
						<label class="form-label" style="color: black;">E-MAIL</label> <br>
						<input class="form-control" type="email" id="email" placeholder="Seu E-mail" name="emailaluno">
						 <br> <br>
					<label class="form-label" style="color: black;" id="senha">SENHA</label>
					<br> 
					<input class="form-control" type="password"	placeholder="Sua senha" id="confirmesenha" name="senhaaluno">
					<br> <br> 
					<label class="form-label" style="color: black;">CONFIRME SUA SENHA</label>
					 <br>
					  <input class="form-control" type="password" placeholder="Sua senha" name="confirmesenhaaluno"> <br>
					<br> 
					</form>
					<script type="text/javascript">
						function enviarFormulario() {
					            window.location.href = "tela-login.jsp0;"
					        }
					}
					</script>
					<button class="btn btn-primary mb-3" onclick="enviarFormulario()">
					Entrar
					
					<%
					Aluno alunoCadastro = new Aluno();

				/*	if (request.getParameter("nomealuno") != null||
						request.getParameter("cpfaluno")!= null||
					    request.getParameter("emailaluno")!= null||
					    request.getParameter("senhaaluno")!= null ||
					    request.getParameter("confirmesenhaaluno")!= null)
					{	*/
						alunoCadastro.setNome(request.getParameter("nomealuno"));
						alunoCadastro.setCpf(request.getParameter("cpfaluno"));
						alunoCadastro.setEmail(request.getParameter("emailaluno"));

						if (request.getParameter("senhaaluno").equals(request.getParameter("confirmesenhaaluno"))) {
							alunoCadastro.setSenha(request.getParameter("senhaaluno"));
							
							Class.forName("com.mysql.jdbc.Driver");
 
							try {
								String url = "jdbc:mysql://localhost:3306/situp";
								String usuario = "root";
								String senha = "5988";

								Connection conexao = DriverManager.getConnection(url, usuario, senha);

								PreparedStatement ps = conexao.prepareStatement("INSERT INTO aluno (nome, cpf, email, senha) VALUES (?,?,?,?)");
								ps.setString(1, alunoCadastro.getNome());
								ps.setString(2, alunoCadastro.getCpf());
								ps.setString(3, alunoCadastro.getEmail());
								ps.setString(4, alunoCadastro.getSenha());
								ps.execute();
							} catch (SQLException e) {
								// Trate a exceção de SQLException aqui
								e.printStackTrace();
							}
						} %>
					
						

					</button> <br>
				
			</td>
			
			
			<td>
				<img src = "imagens/4944411.jpg" width="480" style="margin-left: 10%">
			</td>				
</body>

</html>
