<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<?php
		date_default_timezone_set("America/Argentina/Buenos_Aires");
		$fecha = getdate(time());
		echo '<p>'.$fecha['hours'].':'.$fecha['minutes'].':'.$fecha['seconds'].'</p>';
		echo '<p>'.$fecha['mday'].'/'.$fecha['mon'].'/'.$fecha['year'].'</p>';

		echo "<p>Dentro de 10 hs: ".$fecha2=date("d-m-Y H:i", strtotime("+10hours"))."</p>";

		echo "<p>Próxima clase: ".$fecha3=date("d-m-Y", strtotime("next Wednesday"))."</p>";

		echo "<p>Clase Anterior: ".$fecha3=date("d-m-Y", strtotime("last Wednesday"))."</p>";

	?>



</body>
</html>