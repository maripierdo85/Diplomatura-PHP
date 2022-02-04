<?php  
	
	date_default_timezone_set("America/Argentina/Buenos_Aires");
	$dia = $_POST['numDia'];
	$mes = $_POST['numMes'];
	$anio = $_POST['numAnio'];

	$fecha_actual = date("Y-m-d");

	$fechaIngresada = $anio."-".$mes."-".$dia;


	$calculo=strtotime($fechaIngresada)-strtotime($fecha_actual);
	$dias_restantes= intval($calculo/86400);

	header("Location: unidad2.php?ok&dias_rest=$dias_restantes&fechaIngr=$fechaIngresada")

?>