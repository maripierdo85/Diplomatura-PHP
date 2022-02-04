<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Clase Unidad 4_2</title>
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<main>
		<h3>Recetas</h3>
		<?php  
			include("conexion.php");
			$resultado = mysqli_query($datos_bd,"Select * from recetas");

			while ($listar_recetas = mysqli_fetch_assoc($resultado)){?>
				<ul>
					<li>Nombre: <?php echo $listar_recetas['apellido']; ?></li>
					<li>Apellido: <?php echo $listar_recetas['nombre'];  ?></li>
					<li>DNI: <?php echo $listar_recetas['dni']; ?></li>
					<li><img src="imagen_receta.php?id=<?php echo $listar_recetas['idReceta']; ?>"></li>
				</ul>
			<?php
		}
		?>
	</main>
	
</body>
</html>