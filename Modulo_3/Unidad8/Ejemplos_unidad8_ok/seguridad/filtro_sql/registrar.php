<?php
include ('conect.php');

mysqli_query ($conexion, "INSERT INTO usuarios VALUES ('".$_POST['usuario']."', '".$_POST['password']."', '".$_POST['nombre']."', '".$_POST['apellido']."', '".$_POST['email']."', ".$_POST['dni'].")");

if (mysqli_errno($conexion) == 0){
	header("Location:index.php?ok");
}
else{
	if (mysqli_errno($conexion) == 1062){

header("Location: index.php?error_us");	
	}
	else{
		 die ('Error al insertar: '.mysqli_error($conexion));
	}
}
?>
</body>
</html>