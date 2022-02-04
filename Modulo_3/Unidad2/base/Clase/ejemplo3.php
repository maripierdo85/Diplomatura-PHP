<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ejemplos fechas</title>
</head>
<body>
	<main>
		<h3>LABORATORIO</h3>
		<h4>Ingrese fecha y hora de su análisis</h4>
		<form action="ejemplo3.php" method="POST">
			<input type="datetime-local" name="fecha">
			<input type="submit" value="Calcular">


		</form>

		<?php
			if($_POST){
				$fecha= $_POST['fecha'];

				$ayuno=strtotime("$fecha -8hours");
				$hs_ayuno = getdate($ayuno);
				$resultado=strtotime("$fecha +1week");
				$fecha_resultado=getdate($resultado);
				
				echo "<p>La fecha y hora del turno seleccionada es: ".$fecha.'</p>';
				echo "<p>Comenzar el ayuno el día: ".$hs_ayuno['mday']."/".$hs_ayuno['mon']."/".$hs_ayuno['year']."a las ".$hs_ayuno['hours'].":".$hs_ayuno['minutes'].":".$hs_ayuno['seconds'].'</p>';
				echo "<p>El resultado de su análisis estará disponible a partir de: ".$fecha_resultado['mday']."/".$fecha_resultado['mon']."/".$fecha_resultado['year'].'</p>';
			}	
		?>

	</main>
</body>
</html>