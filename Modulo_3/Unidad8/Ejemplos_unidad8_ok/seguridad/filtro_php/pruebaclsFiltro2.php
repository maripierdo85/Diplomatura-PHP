<!DOCTYPE html>
<html>
<head>
	<title>Ejemplos Unidad 8</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../../estilos.css">
</head>
<body>
	<main class="container">
<header>
	<h2>Ejemplos Unidad 8</h2>
	<nav>
	<ul>
		<li><a href="../../index.php">Volver a Ejemplos Unidad 8</a></li>		
	
	</ul>
	</nav>
</header>
<section>
	<h1>Seguridad</h1>
	<nav id="botonera_pdf">
		<ul>
			<li><a href="../index.php" target="_blank">Volver a Ejemplos Seguridad</a></li>
		</ul>
	</nav>
	<div>
	<form action="pruebaclsFiltro2.php" method="post">
Ingrese los comentarios:<br />
<textarea name="comentario" id="comentario" cols="40" rows="5"></textarea><br />
<input type="submit" value="Agregar comentario" />
</form> 
<?php
include ('clsFiltro.php');

if (isset($_POST['comentario'])){
	$arr = array('<a>');
	$filtro = new clsFiltro($arr);
	$_POST['comentario'] = $filtro->filtrar($_POST['comentario']);
	echo $_POST['comentario'];
}

?></div>
</section>
</main>
</body>
</html>