<?php 

	$host="localhost";
	$usuario="root";
	$password="";
	$nombreBD="phpintermedio";


	$datos_bd=mysqli_connect($host,$usuario,$password,$nombreBD) or exit('No se puede conectar con la Base de Datos');
?>