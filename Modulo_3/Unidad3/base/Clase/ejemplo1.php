<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ejemplo1</title>
</head>
<body>
	<h1>Abrir archivos</h1>
	<?php  
		$archivo=fopen("ejemplo1.txt", "w");
		$texto = "<h2>Clase virtual Unidad 3 - Archivos en PHP</h2> <p class='txt_rojo'>Funciones para manejo de archivos desde PHP</p>";
		fwrite($archivo, $texto);
		echo "<p>Archivo abierto</a>";
		fclose($archivo);
	?>
</body>
</html>