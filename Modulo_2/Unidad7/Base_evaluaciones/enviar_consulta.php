<?php  
	$nombre_formu = $_POST['txtNombre'];
	$apellido_formu = $_POST['txtApellido'];
	$edad_formu = $_POST['txtEdad'];
	$correo_formu = $_POST['txtCorreo'];
	$consulta_formu = $_POST['cboMtvoConsulta'];
	$comentario_formu = $_POST['txtComentario'];

	$host="localhost";
	$usuario="root";
	$password="";
	$nombreBD="phpintermedio";


	$datos_bd=mysqli_connect($host,$usuario,$password,$nombreBD) or exit('No se puede conectar con la Base de Datos');

	mysqli_query($datos_bd,"Insert into consultas values(DEFAULT,'$nombre_formu','$apellido_formu',$edad_formu,'$correo_formu',$consulta_formu,'$comentario_formu')");

	mysqli_close($datos_bd);

	header("Location: contacto.php?ok")

?>