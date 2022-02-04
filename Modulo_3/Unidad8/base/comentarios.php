<?php  
	
	date_default_timezone_set("America/Argentina/Buenos_Aires");

	$nombre= $_POST['txtNombre'];
	$apellido= $_POST['txtApellido'];
	$comentario= $_POST['txtComentario'];

	$fechaActual = date("d-m-Y H:m:s");
	
	$texto = "<p><b>".$fechaActual."</b> - ".$apellido.", ".$nombre.": <i>".$comentario."</i></p>";

	$nombreArchivo = "txt/comentarios.txt";

	$archivo =fopen($nombreArchivo, "a+");
	fwrite($archivo, $texto);
	fclose($archivo);

	header("Location: unidad3.php")
?>