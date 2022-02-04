<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="estilos.css">
</head>
 
<body>
 
<div class="container">
	<header>
		<h1>Programación en PHP y MySQL - Nivel Avanzado</h1>
	

	<nav>
		<?php include("botonera.php"); ?>
	</nav>
	</header>
	<section>
		<h2>Eventos</h2>
		<?php
			
			if(isset($_GET['ok'])){
				// include('calculo_fecha.php');
				echo "<p>Faltan ".$_GET['dias_rest']." días hasta la fecha ingresada: ".$_GET['fechaIngr']."</p>";
			
			}

		?>
	</section>
	<aside>
    	<div id="formulario">
			<form method="POST" action="calculo_fecha.php">
			  <input type="number" name="numDia" placeholder="Día" min="1" max="31" required>
			  <input type="number" name="numMes" placeholder="Mes" min="1" max="12" required>
			  <input type="number" name="numAnio" placeholder="Año" required>
			  <input type="submit" name="btnSubmit" value="Registrar">
			</form>
          
    	</div>
  </aside>
	<footer>
		<a href="https://site.elearning-total.com/courses/?com=lb">Programación en PHP y MySQL - Nivel Avanzado</a>
	</footer>
 
</div>
</body>
</html>