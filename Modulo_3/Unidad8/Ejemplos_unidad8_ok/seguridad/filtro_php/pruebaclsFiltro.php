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
	<?php
include ('clsFiltro.php');

$arr = array('<a>');
$filtro = new clsFiltro($arr);

$_POST['uno']='<h3><a href="http://www.google.com.ar">Prueba</a></h3>';
$_POST['dos']='<p><strong>window.location="http://www.google.com.ar"></strong></p>';
$_POST['tres']='<script>while(false){alert("a");}</script>';

// echo($_POST);

// echo($filtro->filtrar($_POST));


echo($_POST['uno']);

echo($filtro->filtrar($_POST['uno']));

echo($_POST['dos']);

echo($filtro->filtrar($_POST['dos']));

echo($_POST['tres']);

echo($filtro->filtrar($_POST['tres']));



?>
</section>
</main>
</body>
</html>