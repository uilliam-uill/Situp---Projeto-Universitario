
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SITUP - Buscar Prefeitura</title>
    <meta charset="UTF-8">
	<style>

#barra{
    background-color: rgb(255,232,26);
    margin: 15 15 15 15;
    padding: 3%;
}


body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

#input-text{
	width: 250px;
	padding: 10px;
	border-radius: 5px;
	}


#botao-buscar {
    padding: 8px 50px;
    border-radius: 10px;
    background-color: yellow;
}

#botao-buscar:hover {
    background-color: white;
    transform: scale(1.1);

}

#form-busca{
	margin-top: 5%;
	margin-left:30%;
}
	</style>
</head>

<body>

    <div id="barra">
        <center>
            <img src="imagens/Captura de tela 2023-09-21 174602.png" width="300"> <br> <br>
        </center>
    </div>
    <div id = "form-busca">
	<label>Procure sua cidade</label> <br>
	<input type = "text" id = "input-text">
	<input type = "button" value = "Buscar" id = "botao-buscar">
    </div>
</body>

</html>