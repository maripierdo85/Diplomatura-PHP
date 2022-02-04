<?php  
	$unidad = $_POST['txtUnidad'];
	$fecha = $_POST['cboFecha'];


	include('conexion.php');

	mysqli_query($datos_bd,"Insert into clases values(DEFAULT,'$unidad','$fecha')");

	mysqli_close($datos_bd);

	header("Location: unidad1.php?ok")

?>