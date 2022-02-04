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
	<form method="POST" action="ejemplo3.php" enctype="multipart/form-data">
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
		if($_POST){
			$nombre= $_POST['txtNombre'];
			$apellido= $_POST['txtApellido'];
			$dni= $_POST['txtDNI'];
			
			$nombreArchivo=$_FILES['inReceta']['name'];
			$tipoArchivo =$_FILES['inReceta']['type'];
			$tamanioArchivo =$_FILES['inReceta']['size'];
			$temporalArchivo =$_FILES['inReceta']['tmp_name'];

			$carpeta = "recetas/";

			$extension =explode(".",$nombreArchivo);
			$extensionNueva=end($extension);
			$nombreGuardar = $dni."_".$apellido."_".$nombre.".".$extensionNueva;

			if (($tipoArchivo!='image/gif' && $tipoArchivo!='image/jpeg' && $tipoArchivo!='image/png') && ($tamanioArchivo <200000)){
				echo "<p>Formato de archivo incorrecto o superior a 200 kb</p><p> EL formato de imagen debe ser .jpg, .gif o .png </p>";
			}else {
				move_uploaded_file($temporalArchivo, $carpeta.$nombreGuardar);
				echo "<p>Receta cargada correctamente</p>";
			}
		}
	?>
</main>
</body>
</html>