<?php  
	if ($_POST){
		$nombre = $_POST['txtNombre'];
		$apellido = $_POST['txtApellido'];
		$edad = $_POST['numEdad'];

		include("usuarios.php");
		$usuario = new Usuarios($nombre,$apellido,$edad);
		$usuario->imprime_carcteristicas();

	}
?>