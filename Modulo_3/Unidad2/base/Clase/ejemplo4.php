<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<main>
		<h3>VISITA MÉDICA</h3>
		<h4>INGRESE FECHA Y HORA DE SU TURNO CON EL DR PEREZ</h4>
		<form action="ejemplo4.php" method="POST">
			<input type="date" name="fecha">
			<input type="submit" value="Consultar">
		</form>
		<?php
		date_default_timezone_set("America/Argentina/Buenos_Aires");
		if($_POST){


			$fecha_actual = date("Y-m-d");
			$fecha_turno=$_POST['fecha'];

			if($fecha_turno<=$fecha_actual){
				echo "<p>El turno ya está vencido. Desea seleccionar una fecha posterior a:".$fecha_actual."</p>";
			} else {
				$calculo=strtotime($fecha_turno)-strtotime($fecha_actual);
				$dias_restantes= intval($calculo/86400);
				echo "<p>Faltan $dias_restantes días para su visita médica con el Dr. Perez</p>";
			}
		}

		?>
	</main>
</body>
</html>