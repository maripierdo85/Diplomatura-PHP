<?php
	include('conexion.php');
	$idReceta = $_GET['id'];
	$buscarImagen=mysqli_query($datos_bd,"Select imagen,formato from recetas where idReceta=$idReceta");
	$mostrarImagen=mysqli_fetch_row($buscarImagen);
	header("Content-type: $mostrarImagen[1]");
	echo $mostrarImagen[0];
?>