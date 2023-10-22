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

<script type="text/javascript">
	function enviarFormulario() {
		window.location.href = "tela-login.jsp";
	}
</script>

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
				<%@ page import="java.sql.Connection"%>
				<%@ page import="java.sql.DriverManager"%> <%@ page
					import="java.sql.SQLException"%> <%@ page
					import="javacom.Prefeitura"%> 

				<form id="form-login" method = 	"post">
					<label class="form-label" style="color: black;">CIDADE</label> <br>
					<input class="form-control" type="text" id="nome" name="cidade" placeholder="Sua cidade">
					<br> <br> 
					<label class="form-label" style="color: black;">CNPJ </label>
					<br> 
					<input class="form-control" type="text" id="cnpj" placeholder="**.***.***/0001-**" name="cnpj">
					<br> <br> 
					<label class="form-label" style="color: black;">E-MAIL</label> <br>
					<input class="form-control" type="email" id="email" placeholder="Seu E-mail" name="emailprefeitura">
					<br> <br> 
					<label class="form-label" style="color: black;" id="senha">SENHA</label>
					<br> 
					<input class="form-control" type="password" placeholder="Sua senha" id="confirmesenha" name="senhaprefeitura">
					<br> <br> 
					<label class "form-label" style="color: black;">CONFIRME SUA SENHA</label>
					<br> 
					<input class="form-control" type="password" placeholder="Sua senha" name="confirmesenhaprefeitura"> 
					<br> 
					<button class="btn btn-primary mb-3" onclick="enviarFormulario()">
						Entrar
					</button> 
				</form>

				<%
				Prefeitura prefeitura = Prefeitura.getInstance();
				prefeitura.setCnpj(request.getParameter("cnpj"));
				prefeitura.setCidade(request.getParameter("cidade"));
				prefeitura.setEmail(request.getParameter("emailprefeitura"));
				
				String senha1 = request.getParameter("senhaprefeitura");
				String senha2 = request.getParameter("confirmesenhaprefeitura");
				String cidade = request.getParameter("cidade");
				String cnpj = request.getParameter("cnpj");
				String email = request.getParameter("emailprefeitura");

				if (senha1 != null && senha1.length() > 0 &&
				    senha2 != null && senha2.length() > 0 &&
				    cidade != null && cidade.length() > 0 &&
				    cnpj != null && cnpj.length() > 0 &&
				    email != null && email.length() > 0) {
						if (request.getParameter("senhaprefeitura").equals(request.getParameter("confirmesenhaprefeitura"))){
							prefeitura.setSenha(request.getParameter("senhaprefeitura"));

							Class.forName("com.mysql.jdbc.Driver");
							
							try {
								String url = "jdbc:mysql://localhost:3306/situp";
								String usuario = "root";
								String senha = "5988";
								Connection conexao = DriverManager.getConnection(url, usuario, senha);

								PreparedStatement ps = conexao.
										prepareStatement("INSERT INTO prefeitura (nome_cidade, cnpj, email, senha) VALUES (?,?,?,?)");
								ps.setString(1, prefeitura.getCidade());
								ps.setString(2, prefeitura.getCnpj());
								ps.setString(3, prefeitura.getEmail());
								ps.setString(4, prefeitura.getSenha());
								ps.execute();
							} catch (SQLException e) {
								// Trate a exceção de SQLException aqui
								e.printStackTrace();
							}
						}
					}
				%>
			</td>
			<td>
				<img src="imagens/12085316_20944142.jpg" width="480" style="margin-left: 10%">
			</td>
		</tr>
	</table>
</body>

</html>