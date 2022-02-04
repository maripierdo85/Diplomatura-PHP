<?php  
	session_start();

	$nombre = $_POST['txtNombre'];
	$apellido = $_POST['txtApellido'];
	$email = $_POST['txtEmail'];
	$comentario = $_POST['txtComentario'];
	$confirmacion = $_POST['txtConfirmacion'];
	$captcha = $_SESSION['codigos'];

	if ($confirmacion == $captcha) {
		include('conexion.php');

		mysqli_query($datos_bd,"Insert into consultas values(DEFAULT,'$apellido','$nombre','$email','$comentario')");

		mysqli_close($datos_bd);

		header("Location: unidad5.php?ok");
	}else{
		header("Location: unidad5.php?error");
	}


?>