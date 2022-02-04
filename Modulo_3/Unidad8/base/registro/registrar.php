<?php
include ('../conexion.php');

mysqli_query ($datos_bd, "INSERT INTO usuarios VALUES ('".$_POST['usuario']."', '".$_POST['password']."', '".$_POST['nombre']."', '".$_POST['apellido']."', '".$_POST['email']."', ".$_POST['dni'].")");

if (mysqli_errno($datos_bd) == 0){
	header("Location:../unidad8.php?ok");
}
else{
	if (mysqli_errno($datos_bd) == 1062){

header("Location: ../unidad8.php?error_us");	
	}
	else{
		 die ('Error al insertar: '.mysqli_error($datos_bd));
	}
}
?>
</body>
</html>