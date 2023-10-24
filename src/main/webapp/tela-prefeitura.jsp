<html>

<head>
	<link rel="stylesheet" type="text/css" href="style/tela-prefeitura.css">
	<meta charset="UTF-8">
	<title>SITUP - Prefeitura</title>
	<link rel="stylesheet" href="style/bootstrap.css">
	<script src="bootstrap.js"></script>
	<%@ page import="java.sql.Connection"%>
	<%@ page import="java.sql.DriverManager"%> 
	<%@ page import="java.sql.SQLException"%> 
	<%@ page import="javacom.Prefeitura"%> 
	<%@ page import="javacom.Onibus"%> 
	<%@page import="java.sql.PreparedStatement"%>
	<%@page import="java.sql.ResultSet"%>
	
</head>

<body>
	<div>
		<div id="barra" class="d-flex justify-content-center">
				<img src="imagens/Captura de tela 2023-09-21 174602.png" width="300"> <br> <br>
		</div>
	</div>
	<%
	Prefeitura prefeitura = Prefeitura.getInstance();
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexao = null;
	String nomeCidade = ""; 
	
	try {
		String url = "jdbc:mysql://localhost:3306/situp";
		String usuario = "root";
		String senha = "5988";

		 conexao = DriverManager.getConnection(url, usuario, senha);

		PreparedStatement ps = conexao.prepareStatement("SELECT nome_cidade FROM prefeitura WHERE id = ?");
		ps.setInt(1, prefeitura.getId_prefeitura());
		ps.execute();
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()){%>
		<%nomeCidade = rs.getString("nome_cidade");
		} 		
	} catch (SQLException e) {
		// Trate a exceção de SQLException aqui
		e.printStackTrace();
	}
	
	%>
		<h1 style="font-family: Arial"> Prefeitura de <%=nomeCidade %></h1>
		<div id="barra-botoes">
			<div class = "d-flex justify-content-center">
				<button class="botoes" onclick="Cadastrar()">Cadastrar Ônibus</button>
				<button class="botoes" onclick="Gerenciar()">Gerenciar Ônibus</button>
			</div>
		</div>
		<br> <br> <br>
		<div id="tabela-onibus">
			<table border=1 class = "table table-bordered" style="margin-left: 40%; font-family: Arial">
				<tr>
					<th style="width:70px">Onibus</th>
					<th style="width:200px">Cidade
				</tr>
		
				<%	
		Onibus gestaoOnibus = new Onibus();
	
		try{
				PreparedStatement selectOnibus= conexao.prepareStatement("SELECT placa, cidade FROM onibus WHERE id_prefeitura = ?");
				selectOnibus.setInt(1, prefeitura.getId_prefeitura());
				selectOnibus.execute();
		
				ResultSet rsOnibus = selectOnibus.executeQuery();
			
				while(rsOnibus.next()){
					gestaoOnibus.setCidade(rsOnibus.getString("cidade"));
					gestaoOnibus.setPlaca(rsOnibus.getString("placa")); %>
					<tr>
						<td> <p> <%=gestaoOnibus.getPlaca()%> </p> </td>
						<td> <p> <%=gestaoOnibus.getCidade()%> </p> </td>
					</tr>
			<%	}
			}catch (SQLException e) {
			// Trate a exceção de SQLException aqui
					e.printStackTrace();
				}   
				%>						
			</table>
		</div>

		<div id="cadastro">
					
		<div class = "d-flex justify-content-center">
				<h1 style=" margin-left: 20%;color: rgb(163, 148, 15); font-family: 'Bai Jamjuree', sans-serif;">
					CADASTRO DE ONIBUS </h1>
</div>
		<div class = "d-flex justify-content-center">
			<form method="post">
			<div class="mb-3">
				<div id="form" class="label-tamanho"><label> Cidade destino do transporte: </label> <br>
					<input type="text" class="inputs-text" name="cidade_onibus"> <br> <br>

					<label class="label-tamanho"> Motorista:</label> <br>
					<input type="text" class="inputs-text" name="motorista"> <br> <br>

					<label class="label-tamanho"> Placa:</label> <br>
					<input type="text" class="inputs-text" name="placa"> <br><br>

					<label class="label-tamanho"> Número de vagas:</label> <br>
					<input type="number" class="inputs-text" name="vagas"> <br><br><br>
					<div id="expandindo-vagas">
						<div class="expandindo-qrcode">
							<input type="checkbox" name="gestao_vagas">
							<label> * O sistema deve bloquear aprovações de alunos caso o número de vagas seja
								totalmente
								preenchido</label>

							<div class="text">
								<p class="expli">Em nosso sistema, implementamos uma funcionalidade crucial que
									garante
									uma
									gestão precisa das vagas disponiveis <br> no transporte universitario. Ao
									ativar
									o
									checkbox correspondente, os administradores tem a capacidade de aprovar
									somente
									<br>
									o
									número de alunos equivalente as vagas disponiveis. Isso significa que o
									sistema
									bloqueará automaticamente a aprovação <br> de mais alunos do que o número de
									vagas
									estabelecido. Essa funcionalidade ajuda a manter um controle rigoroso <br>
									sobre
									a
									ocupação dos veiculos, evitando superlotação e assegurando que cada vaga
									seja
									alocada de
									maneira <br> justa e eficiente. Alem disso, ela contribui para uma
									experiencia
									de
									transporte mais organizada e confortavel para <br> todos os alunos,
									promovendo a
									equidade e a eficiência no sistema.
								</p>
							</div>
						</div>
						<br> <br> <br>
						<div class="expandindo-qrcode">
							<input type="checkbox" name="qrcode">
							<label>* O sistema deve conter a funcionalidade do QR code </label>
							<div class="text">
								<p class="expli text-break">No nosso sistema de gestão de presença com QR Code, a
									funcionalidade do
									QR
									Tendo essencial para rastrear a participação <br> dos alunos no transporte
									universitario. Cada aluno recebe um QR Code exclusivo associado a  sua conta.
									Quando
									o
									aluno <br> embarca no veixculo, ele escaneia o QR Code usando um dispositivo
									móvel ou
									um
									leitor fornecido pelo sistema. Esse processo <br> de escaneamento registra
									automaticamente a presença do aluno no sistema, eliminando a necessidade de
									verificações
									manuais. <br> Os administradores e os próprios alunos podem acompanhar o
									registro de
									presença e7m tempo real por meio da plataforma, <br> garantindo transparÃªncia
									e
									eficiÃªncia. AlÃ©m disso, se um aluno deixar de usar o transporte por um
									perÃ­odo
									prolongado, <br> o sistema pode abrir sua vaga para outros, otimizando assim
									a
									utilizaÃ§Ã£o das vagas disponÃ­veis. Em resumo, o QR Code <br> simplifica o
									acompanhamento
									de presença, tornando o processo mais eficiente e justo para todos os alunos
									envolvidos.
								</p>
							</div>
						</div>
					</div>
						<br> <br> <br>
						<label> Horario de saida:</label> <br>
						<input type="time" class="inputs-text" name="horario">

						<br><br><br>

						<input type="submit" id="botao-enviar" value="Salvar">
					
					</div>
					</form>
					</div>
		</div>
</div>
	
	<%
	Onibus onibus = new Onibus();

	int vagasInt = 0; 
	String vagas = request.getParameter("vagas");
	
		if (request.getParameter("cidade_onibus") != null && request.getParameter("cidade_onibus").length() > 0 &&
				request.getParameter("motorista") != null && request.getParameter("motorista").length() > 0 &&
				request.getParameter("vagas") != null && request.getParameter("vagas").length() > 0 &&
				request.getParameter("placa") != null && request.getParameter("placa").length() > 0 &&
				request.getParameter("horario") != null && request.getParameter("horario").length() > 0){
					vagasInt  = Integer.parseInt(vagas);
					
					String qrCodeString = request.getParameter("qrcode");
					boolean qrCode= "on".equals(qrCodeString);
					
					String gestaoVagasString = request.getParameter("gestao_vagas");
					boolean bgestaoVagas= "on".equals(gestaoVagasString);

					onibus.setHorario(request.getParameter("horario"));
					onibus.setVagas(vagasInt);
					onibus.setMotorista(request.getParameter("motorista"));
					onibus.setGestaoQrcode(qrCode);
					onibus.setGestaoVagas(bgestaoVagas);
					onibus.setId_prefeitura(prefeitura.getId_prefeitura());
					onibus.setPlaca(request.getParameter("placa"));
					onibus.setCidade(request.getParameter("cidade_onibus"));
	try{
		PreparedStatement onibusSt = conexao.
				prepareStatement("INSERT INTO onibus (id_prefeitura, cidade, placa, motorista, numero_de_vagas, " +
						"horario, qr_code, verificar_vagas) VALUES (?,?,?,?,?,?,?,?)");
		onibusSt.setInt(1, onibus.getId_prefeitura());
		onibusSt.setString(2, onibus.getCidade());
		onibusSt.setString(3, onibus.getPlaca());
		onibusSt.setString(4, onibus.getMotorista());
		onibusSt.setInt(5, onibus.getVagas());
		onibusSt.setString(6, onibus.getHorario());
		onibusSt.setBoolean(7, onibus.isGestaoQrcode());
		onibusSt.setBoolean(8, onibus.isGestaoVagas());
		onibusSt.execute();
		
		onibusSt.close();
		
		response.sendRedirect("tela-prefeitura.jsp");
	}catch (SQLException e) {
		// Trate a exceção de SQLException aqui
		e.printStackTrace();
	}
	
	}
	
	conexao.close();
	%>

	<script type="text/javascript">
		document.getElementById('cadastro').style.display = 'none';

		function Cadastrar() {
			document.getElementById('cadastro').style.display = 'block';
			document.getElementById('tabela-onibus').style.display = 'none';
		}

		function Gerenciar() {
			document.getElementById('cadastro').style.display = 'none';
			document.getElementById('tabela-onibus').style.display = 'block';
		}
	</script>
</body>

</html>