<?php  
	$nombre = $_POST['txtNombre'];
	$apellido=$_POST['txtApellido'];
	$dni= $_POST['txtDNI'];
	$imgNombre=$_FILES['inReceta']['name'];
	$imgTamanio = $_FILES['inReceta']['size'];
	$imgTipo =$_FILES['inReceta']['type'];
	$imgTmp =  $_FILES['inReceta']['tmp_name'];

	$lim_tamanio = 200000;

	if($imgTamanio > $lim_tamanio){
		header("Location: ejemplo3.php?error");
	}else{
		$archivo = fopen($imgTmp, "r+");
		$imagenBase = fread($archivo, $imgTamanio);

		$imagenBase=addslashes($imagenBase);

		include("conexion.php");
		
		mysqli_query($datos_bd,"Insert into recetas (idReceta, apellido, nombre,dni,imagen,formato)
			 values (DEFAULT, '$apellido', '$nombre', $dni,'$imagenBase','$imgTipo')");

		fclose($archivo);

		header("Location: ejemplo3.php?ok");
	}
	
?>