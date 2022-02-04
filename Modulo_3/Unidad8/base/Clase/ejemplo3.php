<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<title>Cargar Recetas</title>
</head>
<body>
<main>
	<h3>Cargar Receta</h3>
	<h4><a href="ver_recetas.php">Ver Recetas</a></h4>
	<form method="POST" action="ejemplo3_img.php" enctype="multipart/form-data">
		<label>Nombre: </label>
		<input type="text" name="txtNombre" required>
		<label>APellido: </label>
		<input type="text" name="txtApellido" required>
		<label>DNI:</label>
		<input type="number" name="txtDNI" required>
		<label>Receta (gif, jpg, png) - (max. 200KB): </label>
		<input type="file" name="inReceta" required>
		<input type="submit" name="">
	</form>

	<?php
		if(isset($_GET['error'])){
			echo "<p>La imegen no pued epesar mas de 200kb.</p>";
		}

		if(isset($_GET['ok'])){
			echo "<p>Receta almacenada correctamente!</p>";
		}

	?>
</main>
</body>
</html>