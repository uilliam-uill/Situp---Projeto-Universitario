<html>

<head>
	<link rel="stylesheet" type="text/css" href="css/tela-prefeitura.css">
	<meta charset="UTF-8">
	<title>SITUP - Prefeitura</title>
	<link rel="stylesheet" href="bootstrap.css">
	<script src="bootstrap.js"></script>

</head>

<body>
	<div class="container">
		<div id="barra">
			<center>
				<img src="imagens/Captura de tela 2023-09-21 174602.png" width="300"> <br> <br>
			</center>
		</div>

		<h1 style="font-family: Arial"> Prefeitura de 'cidade'</h1>
		<div id="barra-botoes">
			<center>
				<button class="botoes" onclick="Cadastrar()">Cadastrar ônibus</button>
				<button class="botoes" onclick="Gerenciar()">Gerenciar ônibus</button>
				<center>
		</div>
		<br> <br> <br>
		<div id="tabela-onibus">
			<table border=1 style="margin-left: 40%; font-family: Arial">
				<tr>
					<th style="width:70px">Onibus</th>
					<th style="width:200px">Cidade
					<th>
				</tr>

				<tr>
					<!--	<% for(int i = 0; i<100; i++){ %>   -->
					<td>
						<p> UDHG254</p>
					</td>

					<td>
						<p> Santo Antonio de Jesus</p>
					</td>
				</tr>

				<tr>
					<td>
						<p> AHJS013</p>
					</td>
					<td>
						<p> Cruz Das Almas</p>
					</td>
				</tr>
			</table>
		</div>

		<div id="cadastro">
			<center>

				<h1 style=" margin-left: 20%;color: rgb(163, 148, 15); font-family: 'Bai Jamjuree', sans-serif;">
					CADASTRO DE NOVO ÔNIBUS </h1>


				<div id="form" class="label-tamanho"><label> Cidade destino do transporte: </label> <br>
					<input type="text" class="inputs-text"> <br> <br>

					<label class="label-tamanho"> Motorista:</label> <br>
					<input type="text" class="inputs-text"> <br> <br>

					<label class="label-tamanho"> Placa:</label> <br>
					<input type="text" class="inputs-text"> <br><br>

					<label class="label-tamanho"> Número de vagas:</label> <br>
					<input type="number" class="inputs-text"> <br><br><br>
					<div id="expandindo-vagas">
						<div class="expandindo-qrcode">
							<input type="checkbox">
							<label> * O sistema deve bloquear aprovações de alunos caso o número de vagas seja
								totalmente
								preenchido</label>

							<div class="text">
								<p class="expli">Em nosso sistema, implementamos uma funcionalidade crucial que
									garante
									uma
									gestão precisa das vagas disponíveis <br> no transporte universitário. Ao
									ativar
									o
									checkbox correspondente, os administradores têm a capacidade de aprovar
									somente
									<br>
									o
									número de alunos equivalente às vagas disponíveis. Isso significa que o
									sistema
									bloqueará automaticamente a aprovação <br> de mais alunos do que o número de
									vagas
									estabelecido. Essa funcionalidade ajuda a manter um controle rigoroso <br>
									sobre
									a
									ocupação dos veículos, evitando superlotação e assegurando que cada vaga
									seja
									alocada de
									maneira <br> justa e eficiente. Além disso, ela contribui para uma
									experiência
									de
									transporte mais organizada e confortável para <br> todos os alunos,
									promovendo a
									equidade e a eficiência no sistema.
								</p>
							</div>
						</div>
						<br> <br> <br>
						<div class="expandindo-qrcode">
							<input type="checkbox">
							<label>* O sistema deve conter a funcionalidade do QR code </label>
							<div class="text">
								<p class="expli text-break">No nosso sistema de gestão de presença com QR Code, a
									funcionalidade do
									QR
									Code é essencial para rastrear a participação <br> dos alunos no transporte
									universitário. Cada aluno recebe um QR Code exclusivo associado à sua conta.
									Quando
									o
									aluno <br> embarca no veículo, ele escaneia o QR Code usando um dispositivo
									móvel ou
									um
									leitor fornecido pelo sistema. Esse processo <br> de escaneamento registra
									automaticamente a presença do aluno no sistema, eliminando a necessidade de
									verificações
									manuais. <br> Os administradores e os próprios alunos podem acompanhar o
									registro de
									presença em tempo real por meio da plataforma, <br> garantindo transparência
									e
									eficiência. Além disso, se um aluno deixar de usar o transporte por um
									período
									prolongado, <br> o sistema pode abrir sua vaga para outros, otimizando assim
									a
									utilização das vagas disponíveis. Em resumo, o QR Code <br> simplifica o
									acompanhamento
									de presença, tornando o processo mais eficiente e justo para todos os alunos
									envolvidos.
								</p>
							</div>
						</div>

						<br> <br> <br>
						<label> Horário de saída:</label> <br>
						<input type="time" class="inputs-text">

						<br><br><br>

						<input type="button" id="botao-enviar" value="Salvar">
					</div>

			</center>
		</div>
	</div>

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