<%@page import="java.sql.ResultSet"%>
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
				<form id="form-login" method="post">
					<label class="form-label" style="color: black;">EMAIL </label><br> 
					<input class = "form-control" type="text" placeholder="***.***.***-**" name="login"> <br> <br>
					<label class="form-label" style="color: black;">SENHA</label> <br> 
					<input class = "form-control" type="password" placeholder="Sua senha" name="senha"> <br> <br>
					<input class="btn btn-primary mb-3" type="submit" value="Entrar"> <br>
					<br> <a href="cadastro-prefeitura.jsp">Não tem conta? Cadastra-se</a>
				</form>
			</td>
			<td><img src="imagens/12085288_20944112.jpg" width="470" style = "margin-left: 20%"></td>
		</tr>
	</table>
</body>

	<%@ page import="java.sql.Connection"%>
				<%@ page import="java.sql.DriverManager"%> 
				<%@ page import="java.sql.SQLException"%>
				<%@ page import="javacom.Prefeitura"%> 
				<%@page import="java.sql.PreparedStatement"%>
<%
	String loginV = request.getParameter("login");
	String senhaV = request.getParameter("senha");
	
	if(loginV != null && senhaV != null && loginV.length() > 0 && senhaV.length() > 0){

	Prefeitura prefeitura = Prefeitura.getInstance();
		prefeitura.setEmail(request.getParameter("login"));
		prefeitura.setSenha(request.getParameter("senha"));
	
	Class.forName("com.mysql.jdbc.Driver");
	 
	try {
		String url = "jdbc:mysql://localhost:3306/situp";
		String usuario = "root";
		String senha = "5988";

		Connection conexao = DriverManager.getConnection(url, usuario, senha);

		PreparedStatement ps = conexao.prepareStatement("SELECT * FROM prefeitura WHERE email = ? AND senha = ?");
		ps.setString(1, prefeitura.getEmail());
		ps.setString(2, prefeitura.getSenha());
		ps.execute();
		
		ResultSet rs = ps.executeQuery();
		if(rs.next()){%>
			  <script> window.location.href = "tela-prefeitura.jsp"; </script>
		<%	  prefeitura.setId_prefeitura(rs.getInt("id"));
		} else{ %>
			<script>alert("USUARIO E/OU SENHA INCORRETOS") </script>
		<%}
		conexao.close();
		ps.close();
		rs.close();
		
	} catch (SQLException e) {
		// Trate a exceção de SQLException aqui
		e.printStackTrace();
	}
	}
	
%>

</html>
