<?php
session_start();
if (!isset($_SESSION['usuario'])){
	header("Location: index.php");
}else{
?>
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
<h2>Bienvenid@ <?php echo $_SESSION['usuario']; ?> </h2>
	<img src="https://site.elearning-total.com/wp-content/uploads/2016/09/Cursos-UTN-P-Programador-PHP-y-MYSQL-770x415.jpg">
	<p><a href="pagina3.php">Volver a la Pagina 2</a></p>
	<p><a href="salir.php">Cerrar sesion</a></p>
</section>

</body>
</html>
<?php
}
?>