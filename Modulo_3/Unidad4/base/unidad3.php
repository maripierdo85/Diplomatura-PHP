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
		<h2>Comentarios</h2>
		<?php
			$nombreArchivo = "txt/comentarios.txt";
			if (file_exists($nombreArchivo)){
				$archivoEscrito =fopen($nombreArchivo, "r");
				while (!feof($archivoEscrito)) {
					echo fgetc($archivoEscrito);
				}
				fclose($archivoEscrito);
			}else{
				echo "<p>No existen comentarios cargados</p>";
			}
			

				


		?>
	</section>
	<aside>
    	<h2>Cargar Comentario</h2>
    	<div id="formulario">
			<form method="POST" action="comentarios.php" enctype="multipart/form-data">
				<input type="text" name="txtNombre" placeholder="Nombre" required>
				<input type="text" name="txtApellido" placeholder="Apellido" required>
				<input type="email" name="txtEmail" placeholder="Correo" required>
				<textarea name="txtComentario" placeholder="Comentario" maxlength="999" required></textarea>
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